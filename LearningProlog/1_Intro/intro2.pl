% facts
bigger(elephant, horse).
bigger(horse, donkey).
bigger(donkey, dog).
bigger(donkey, monkey).

% rules
is_bigger(X,Y) :-bigger(X,Y).
is_bigger(X,Y) :-bigger(X,Z), is_bigger(Z, Y).