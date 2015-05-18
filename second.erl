-module(second).
-export([hyp/2, area/1, perimeter/2]).
-import(first, [square/1]).

hyp(X, Y) ->
    Z = first:square(X) + first:square(Y),
    math:sqrt(Z).

area(R) ->
    math:pi() * square(R).

perimeter(A, O) ->
    hyp(A, O) + A + O.
