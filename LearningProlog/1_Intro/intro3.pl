% jose is parent of maria
parent(jose, maria).
parent(jose, pedro).
parent(maria, luis).
parent(maria, afonso).
parent(pedro, ana).

% X is brother of Y
% X is cousin of Y
brother(X,Y) :-parent(Z,X), parent(Z,Y), not(X=Y).
cousin(X,Y) :-parent(Z, X), parent(Z2, Y), brother(Z, Z2).
grandson(X,Y) :-parent(X,Z), parent(Y,Z).
descendent(X,Y) :-parent(Y,X); grandson(Y,X).