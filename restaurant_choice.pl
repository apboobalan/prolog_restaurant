prefer(arther, veg).
prefer(arther, fish).
prefer(chaitu, veg).
prefer(chaitu, chicken).
prefer(sreeni, mutton).
prefer(sreeni, fish).
prefer(boo, veg).
prefer(boo, mutton).
prefer(boo, chicken).
prefer(boo, fish).

restaurant(manu, veg).
restaurant(manu, chicken).
restaurant(gown, veg).
restaurant(gown, mutton).
restaurant(gown, fish).

can_go(X, Y, D, R) :- 
    prefer(X, D), 
    prefer(Y, D),
    restaurant(R, D),
    restaurant(R, D),
    X\=Y.

can_go_out(D,R,X,Y,Z) :-
    can_go(X, Y , D, R),
    can_go(Y, Z, D, R),
    X@<Y,
    Y@<Z.
