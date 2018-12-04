from tpi2 import *

z = MySemNet()

z.insertEvent('teresa',
    [ Subtype('human','mammal'),
      Member('teresa','human'),
      Member('carlos','human'),
      Member('marta','human'),
      Member('antonio','human'),
      Member('joana','human') ] )

z.insertEvent('teresa',
    [ Subtype('cat','mammal'),
      Member('tareco','cat'),
      Member('micas','cat') ] )

z.insertEvent('joseAvilez',
    [ Member('carrot','vegetable'),
      Member('cabbage','vegetable'),
      Member('pork','meat'),
      Member('cow','meat'),
      Member('cod','fish'),
      Member('sardine','fish'),
      Member('apple','fruit'),
      Member('orange','fruit'),
      Member('milk','naturaldrink'),
      Member('vegetable','food'),
      Member('meat','food'),
      Member('fish','food'),
      Member('fruit','food'),
      Member('naturaldrink','drink') ] )

z.insertEvent('joseAvilez',
    [ Association('marta','eats','carrot'),
      Association('antonio','eats','cabbage'),
      Association('teresa','eats','apple'),
      Association('carlos','eats','orange'),
      Association('carlos','eats','pork'),
      Association('antonio','eats','cow'),
      Association('carlos','eats','cod'),
      Association('antonio','eats','sardine'),
      Association('tareco','eats','sardine'),
      Association('micas','eats','sardine'),
      Association('micas','drinks','milk'),
      Association('antonio','drinks','milk'),
      Association('teresa','drinks','milk'),
      Association('joana','drinks','milk') ] )


z.insertEvent('joseAvilez',
    [ Member('SOF2019','operatingSystem'),
      Member('SOF2019-PAL','textProcessor'),
      Member('yes','yesNoState'),
      Member('mouse07','computerMouse'),
      Member('worried','faceState'),
      Member('highLoad','workloadState'),
      Member('accumulated','emailState') ] )


# The following is a set of troubleshooting events
# that occurred when using the SOF2019 operating system

z.insertEvent('troubleshooter', 
    [ Fluent('antonio','using','SOF2019-PAL'),
      Fluent('antonio','needsHelp','yes'),
      Fluent('antonio','exageratedUsing','mouse07'),
      Fluent('antonio','hasFaceState','worried'),
      Fluent('antonio','hasWorkLoad','highLoad'),
      Fluent('antonio','hasEmailState','acumulated') ])

z.insertEvent('troubleshooter', 
    [ Fluent('joana','using','SOF2019-PAL'),
      Fluent('joana','needsHelp','no'),
      Fluent('joana','exageratedUsing','keyboard05'),
      Fluent('joana','hasFaceState','worried'),
      Fluent('joana','hasWorkLoad','highLoad'),
      Fluent('joana','hasEmailState','acumulated') ] )


z.insertEvent('troubleshooter', 
    [ Fluent('teresa','using','SOF2019-PAL'),
      Fluent('teresa','needsHelp','yes'),
      Fluent('teresa','exageratedUsing','keyboard03'),
      Fluent('teresa','hasFaceState','worried'),
      Fluent('teresa','hasWorkLoad','mediumLoad'),
      Fluent('teresa','hasEmailState','processed') ] )

z.insertEvent('troubleshooter', 
    [ Fluent('carlos','using','SOF2019-CALC'),
      Fluent('carlos','needsHelp','yes'),
      Fluent('carlos','exageratedUsing','mouse07'),
      Fluent('carlos','hasFaceState','happy'),
      Fluent('carlos','hasWorkLoad','lowLoad'),
      Fluent('carlos','hasEmailState','processed') ] )

z.insertEvent('troubleshooter', 
    [ Fluent('marta','using','SOF2019-PAL'),
      Fluent('marta','needsHelp','no'),
      Fluent('marta','exageratedUsing','mouse04'),
      Fluent('marta','hasFaceState','worried'),
      Fluent('marta','hasWorkLoad','highLoad'),
      Fluent('marta','hasEmailState','processed') ] )

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

dependSOF = \
  { ('hasEmailState','acumulated')      : [ ('hasWorkLoad','highLoad') ],
    ('hasFaceState','worried')          : [ ('hasWorkLoad','highLoad'),
                                            ('needsHelp','yes') ],
    ('exageratedUsing','computerMouse') : [ ('using','SOF2019-PAL'),
                                            ('needsHelp','yes') ],
    ('needsHelp','yes')                 : [ ('using','SOF2019-PAL') ] }


bn = z.makeBN(dependSOF)

bn.display()




