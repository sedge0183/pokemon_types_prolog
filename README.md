# pokemon_types_prolog
Prolog file which includes all pokemon type strengths and weaknesses. Query this for quick and easy type effectiveness.

How it works:
Firstly, download prolog and access the prolog terminal. Use "[pokemon]." or "consult('pokemon.pl')." to import the file into the prolog terminal (need to change to the correct directory). Now you are ready to start querying.

Queries:
All queries
-------------------------------------------------------------------------------------------
double(X, Y). means X move does double damage to Y type
half(X, Y). means X move does half damage to Y type
immune(X, Y). means X type is immune to Y moves

perfect(X, Y). means X type does double damage and (X takes half damage from Y type or X is immune to Y)
horrible(X, Y). means (X type does half damage or Y is immune to X) and X takes double damage form Y type

quad(X, Y). will print type Z if it deals double damage to both type X and type Y
quarter(X, Y). will print type Z if it deals half damage to both type X and type Y
-------------------------------------------------------------------------------------------

For example, if I wanted to find which types fire deals double damage to, the query would be:

double(fire, X).
After the query, you must enter semi-colons(;) to cycle througn all the results.


Hope you find this program useful and good luck!!