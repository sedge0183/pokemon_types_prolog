/*
double(X, Y) means X move does double damage to Y type
half(X, Y) means X move does half damage to Y type
immune(X, Y) means X type is immune to Y moves
perfect(X, Y) means X type does double damage and (X takes half damage from Y type or X is immune to Y)
horrible(X, Y) means (X type does half damage or Y is immune to X) and X takes double damage form Y type

quad(X, Y) will print type Z if it deals double damage to both type X and type Y
quarter(X, Y) will print type Z if it deals half damage to both type X and type Y
*/

perfect(X, Y) :- double(X, Y), half(Y, X).
perfect(X, Y) :- double(X, Y), immune(X, Y).
horrible(X, Y) :- perfect(Y, X).

quad(X, Y) :- double(Z, X), double(Z, Y), X \== Y, write(Z).
quarter(X, Y) :- half(Z, X), half(Z, Y), X \== Y, write(Z).


/* -------Doubles (in alphabetical order based on type)-------*/

double(bug, dark).
double(bug, grass).
double(bug, psychic).

double(dark, ghost).
double(dark, psychic).

double(dragon, dragon).

double(electric, flying).
double(electric, water).

double(fairy, dark).
double(fairy, dragon).
double(fairy, fighting).

double(fighting, dark).
double(fighting, ice).
double(fighting, normal).
double(fighting, rock).
double(fighting, steel).

double(fire, bug).
double(fire, grass).
double(fire, ice).
double(fire, steel).

double(flying, bug).
double(flying, fighting).
double(flying, grass).

double(ghost, ghost).
double(ghost, psychic).

double(grass, ground).
double(grass, rock).
double(grass, water).

double(ground, electric).
double(ground, fire).
double(ground, poison).
double(ground, rock).
double(ground, steel).

double(ice, dragon).
double(ice, flying).
double(ice, grass).
double(ice, ground).

/* Normal does double damage to no other class */

double(posion, grass).
double(poison, fairy).

double(psychic, fighting).
double(psychic, poison).

double(rock, bug).
double(rock, fire).
double(rock, flying).
double(rock, ice).

double(steel, fairy).
double(steel, ice).
double(steel, rock).

double(water, fire).
double(water, ground).
double(water, rock).

/* -------Halves-------*/

half(bug, fairy).
half(bug, fighting).
half(bug, fire).
half(bug, flying).
half(bug, ghost).
half(bug, poison).
half(bug, steel).

half(dark, dark).
half(dark, fairy).
half(dark, fighting).

half(dragon, steel).

half(electric, dragon).
half(electric, electric).
half(electric, grass).

half(fairy, fire).
half(fiary, poison).
half(fiary, steel).

half(fighting, bug).
half(fighting, fairy).
half(fighting, flying).
half(fighting, poison).
half(fighting, psychic).

half(fire, dragon).
half(fire, fire).
half(fire, rock).
half(fire, water).

half(flying, electric).
half(flying, rock).
half(flying, steel).

half(ghost, dark).

half(grass, bug).
half(grass, dragon).
half(grass, fire).
half(grass, flying).
half(grass, grass).
half(grass, poison).
half(grass, steel).

half(ground, bug).
half(ground, grass).

half(ice, fire).
half(ice, ice).
half(ice, steel).
half(ice, water).

half(normal, rock).
half(normal, steel).

half(poison, ghost).
half(poison, ground).
half(poison, poison).
half(poison, rock).

half(psychic, psychic).
half(psychic, steel).

half(rock, fighting).
half(rock, ground).
half(rock, steel).

half(steel, electric).
half(steel, fire).
half(steel, steel).
half(steel, water).

half(water, dragon).
half(water, grass).
half(water, water).


/* -------Immune------- */

immune(dark, psychic).

immune(fairy, dragon).

immune(flying, ground).

immune(ghost, normal).
immune(ghost, fighting).

immune(ground, electric).

immune(normal, ghost).

immune(steel, poison).
