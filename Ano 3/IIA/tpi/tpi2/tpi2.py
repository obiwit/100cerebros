# Beatriz M Borges R, 79857
from semantic_network import *
from bayes_net import *


class MySemNet(SemanticNetwork):


    def predecessor(self,pred,desc):
        # find local predecessors
        local_pred = [d.relation.entity2 for d in self.query_local(e1=desc)
                        if d.relation.name in ["member", "subtype"]]
        if pred == desc or pred in local_pred:
            return True
        # recursively check predecessors' predecessors
        return any([self.predecessor(pred, p) for p in local_pred])

    def get_entity_events(self):
        lst = []
        # get all Fluent declarations in the network
        for rel in [(d.relation.entity1, d.tick) for d in self.query_local() if isinstance(d.relation, Fluent)]:
            # append only one entry of each entity1
            if not rel in lst:
                lst.append(rel)
        return lst

    def get_occurrence(self,entity,tick,fluentnames):
        # get all Fluent values for given tick and entity,
        # if their name is in fluentnames
        return {d.relation.name: d.relation.entity2
                for d in self.query_local(e1=entity)
                if isinstance(d.relation, Fluent)
                and d.relation.name in fluentnames
                and d.tick == tick}


    def abstract_from_descendents(self,type):
        # get (formatted) 'member'/'subtype' associations of type
        child_decs = [d for sub in
                             [d.relation.entity1 for d in self.query_local(e2=type)
                              if d.relation.name in ["member", "subtype"]
                              and not isinstance(d.relation, Fluent)]
                           for d in self.abstract_from_descendents(sub)]
        # iterate over all declarations, to check whether they are generalizable
        parents = {}
        parent_types = {}
        for decl in child_decs:
            # get entity's parent, if any
            parent_list = [d for d in self.query_local(e1=decl[1])
                           if d.relation.name in ["member", "subtype"]]
            if parent_list != []:
                parent = parent_list[0].relation.entity2
                # save entity's parent
                if not parent in parent_types:
                    parent_types[parent] = set([decl[1]])
                else:
                    parent_types[parent].add(decl[1])
                if not decl[1] in parents:
                    parents[decl[1]] = parent
            else:
                # entity has no parent
                parents[decl[1]] = set([decl[1]])
                parent_types[decl[1]] = set([decl[1]])
        # replace generalizable types
        for i in range(len(child_decs)):
            if len(parent_types[parents[child_decs[i][1]]]) > 1:
                # if more than 2 types have the same parent, replace them by it
                child_decs[i] = (child_decs[i][0], parents[child_decs[i][1]], child_decs[i][2])
            else:
                # if an entity does not have other entities who share a parent in
                # the formatted declarations, but instead a higher level parent
                # replace it as well
                parent_list = [d for d in self.query_local(e1=child_decs[i][1])
                               if d.relation.name in ["member", "subtype"]]
                while(parent_list != []):
                    parent = parent_list[0].relation.entity2
                    if parent in [decl[1] for decl in child_decs]:
                        child_decs[i] = (child_decs[i][0], parent, child_decs[i][2])
                        break;
                    parent_list = [d for d in self.query_local(e1=parent) if d.relation.name in ["member", "subtype"]]

        # get local associations for given type
        decls = [d for d in self.query_local(e1=type)
                         if d.relation.name not in ["member", "subtype"]
                         and not isinstance(d.relation, Fluent)]
        # merge all declarations (formatted local declarations and 'member'/'subtype'),
        # so no two have the same name (if two or more have the same name, only
        # one remains, with an increased 'count' value)
        tupls = []
        for decl in child_decs + [(decl.relation.name, decl.relation.entity2, 1) for decl in decls]:
            index = 0
            existed = False
            for index in range(len(tupls)):
                if (decl[0], decl[1]) == (tupls[index][0], tupls[index][1]):
                    tupls[index] = (decl[0], decl[1], tupls[index][2]+decl[2])
                    existed = True
                    break;
            if not existed:
                tupls.append( (decl[0], decl[1], decl[2]) )
        return tupls


    def makeBN(self,dependencies):
        bn = BayesNet()
        # use Fluents in tpi2_tests to compute probabilities - iterate through all
        # Fluents in dependencies
        for var in dependencies:
            # get every entity who has the dependency
            values = [(d.relation.entity1, d.relation.entity2)
                for d in self.query_local(relname=var[0])
                if isinstance(d.relation, Fluent)]
            # iterate through all possible combinations of var's dependencies
            for indexes in [list(format(i, '0'+str(len(dependencies[var]))+'b')) for i in range(2**len(dependencies[var]))]:
                # compute their conditional probability
                num_b = 0
                num_a_b = 0
                for val in values:
                    # for every entity who has the var, check var dependencies' values
                    b_list = set([(d.relation.name, d.relation.entity2) for rel in dependencies[var]
                              for d in self.query_local(relname=rel[0], e1=val[0], e2=rel[1])
                              if isinstance(d.relation, Fluent)])
                    b_occurred = (b_list == set([dependencies[var][i] for i in range(len(indexes))
                                             if indexes[i] == '1']))
                    # for every entity who has the var, check var's value
                    a_occured = val[1] == var[1]
                    a_parent_type = [d for d in self.query_local(e1=val[1])
                                     if d.relation.name in ["member", "subtype"]]
                    while(not a_occured and a_parent_type != []):
                        a_occured = a_parent_type[0].relation.entity2 == var[1]
                        a_parent_type = [d for d in self.query_local(e1=a_parent_type[0].relation.entity2)
                                         if d.relation.name in ["member", "subtype"]]
                    num_b += 1 if b_occurred else 0
                    num_a_b += 1 if b_occurred and a_occured else 0
                # add entry to bayesian network
                mothers = [(dependencies[var][i], indexes[i] == '1')
                           for i in range(len(indexes))] if dependencies[var] != [] \
                          else []
                prob = num_a_b/num_b if num_b != 0 else 0.5
                bn.add(var, mothers, prob)
        return bn
