 #!/usr/bin/env	 sage -python

from sage.all import *
from sage.symbolic.assumptions import GenericDeclaration
GammaH( x, sign, omega) =  (sign*( x - omega )**2)


#Nomi vari delle variabil
#numeri simm varie
var('Nf')
GenericDeclaration(Nf,'integer')
var('Nc')
var('k')
var('omega')

# R-Cariche 
var('DX')
var('DQ')
var('DM') 

#masse
m =  list( var('m_%d' % i ) for i in (1..5))
tm = list( var('tm_%d' % i ) for i in (1..5))
var('mA')
var('mB')


#Meson calculation

