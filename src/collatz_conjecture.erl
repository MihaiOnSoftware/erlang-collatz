-module(collatz_conjecture).

-export([steps/1, test_version/0]).


steps(X) when X < 1 -> invalid_number();
steps(X) -> steps(X, 0).

steps(X, Total) when X =:= 1 -> Total;
steps(X, Total) when X rem 2 =:= 0 -> steps(X div 2, Total + 1);
steps(X, Total) -> steps(times_three_plus_one(X), Total + 1).

invalid_number() -> {error, "Only positive numbers are allowed"}.
times_three_plus_one(X) -> (3 * X) + 1.

test_version() -> 2.
