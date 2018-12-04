
from tpi2_tests import *

print("\nMORE TESTS =======================================")


# Additional relations; note that tpi2_tests is imported above

z.insertEvent('ljubomir ', 
    [ Association('marta','eats','carrot'),
      Association('human','eats','apple'),
      Association('teresa','eats','apple'),
      Association('carlos','eats','pork'),
      Association('tareco','eats','sardine'),
      Association('micas','drinks','milk'),
      Association('teresa','drinks','milk'),
      Association('joana','drinks','milk') ] )


z.insertEvent('troubleshooter2', 
    [ 
      Member('mouse04','computerMouse'),
      Member('keyboard05','computerKeyboard'),
      Fluent('antonio','using','SOF2019-PAL'),
      Fluent('antonio','needsHelp','yes'),
      Fluent('antonio','exageratedUsing','mouse04'),
      Fluent('antonio','hasFaceState','worried'),
      Fluent('antonio','hasWorkLoad','highLoad'),
      Fluent('antonio','hasEmailState','processed') ])

print('\nz.predecessor(mammal,antonio): ', z.predecessor('mammal','antonio'))

print('\nz.predecessor(cat,faceState): ', z.predecessor('cat','faceState'))

print('\nz.get_entity_events(): ',z.get_entity_events())

print('\nz.get_occurrencs(..,..,..): ', \
         z.get_occurrence('joana',40,['hasEmailState','hasWorkLoad']))

print('\nz.abstract_from_descendents(tareco):',
         z.abstract_from_descendents('tareco'))

print('\nz.abstract_from_descendents(micas):',
         z.abstract_from_descendents('micas'))

print('\nz.abstract_from_descendents(cat):',
         z.abstract_from_descendents('cat'))

print('\nz.abstract_from_descendents(antonio):',
         z.abstract_from_descendents('antonio'))

print('\nz.abstract_from_descendents(human):',
         z.abstract_from_descendents('human'))

print('\nz.abstract_from_descendents(mammal):',
         z.abstract_from_descendents('mammal'))

print()


# as variaveis independentes do ex. 5:

dependSOF[('hasWorkLoad','highLoad')] = []
dependSOF[('using','SOF2019-PAL')] = []


bn = z.makeBN(dependSOF)

bn.display()



