
from bayes_net import *

# Exemplo dos acetatos:

bn = BayesNet()

# bn.add('r',[],0.001)
# bn.add('t',[],0.002)
#
# bn.add('a',[('r',True ),('t',True )],0.950)
# bn.add('a',[('r',True ),('t',False)],0.940)
# bn.add('a',[('r',False),('t',True )],0.290)
# bn.add('a',[('r',False),('t',False)],0.001)
#
# bn.add('j',[('a',True )],0.900)
# bn.add('j',[('a',False)],0.050)
#
# bn.add('m',[('a',True )],0.700)
# bn.add('m',[('a',False)],0.100)
#
# conjunction = [('j',True),('m',True),('a',True),('r',False),('t',False)]


bn.add('st',[],0.6)
bn.add('pal',[],0.05)

bn.add('cp',[('st',True ),('pa',True )],0.950)
bn.add('cp',[('st',True ),('pa',False)],0.940)
bn.add('cp',[('st',False),('pa',True )],0.290)
bn.add('cp',[('st',False),('pa',False)],0.001)

bn.add('ce',[('a',True )],0.900)
bn.add('ce',[('a',False)],0.050)

bn.add('m',[('a',True )],0.700)
bn.add('m',[('a',False)],0.100)

conjunction = [('j',True),('m',True),('a',True),('r',False),('t',False)]


print(bn.jointProb(conjunction))
