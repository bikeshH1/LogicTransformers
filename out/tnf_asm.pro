:- op(100, xfy, =>).
% QUERY THIS WITH: ?- p(Answer => _ => goal).

u(A, B, A=>B).
b(A, B, A=>B).
p(A) :-
    var(A),
    !,
    A=true.
p(B) :-
    u(Z, goal, A),
    u(A1, A, B),
    b([], '[|]', C),
    b(12, C, D),
    b(D, '[|]', E),
    b(11, E, F),
    b(F, '[|]', G),
    b(10, G, H),
    b(H, '[|]', I),
    b(9, I, J),
    b(J, '[|]', K),
    b(8, K, L),
    b(L, '[|]', M),
    b(7, M, N),
    b(N, '[|]', O),
    b(6, O, P),
    b(P, '[|]', Q),
    b(5, Q, R),
    b(R, '[|]', S),
    b(4, S, T),
    b(T, '[|]', U),
    b(3, U, V),
    b(V, '[|]', W),
    b(2, W, X),
    b(X, '[|]', Y),
    b(1, Y, C1),
    b(Z, qs, B1),
    b(A1, B1, D1),
    b(C1, D1, E1),
    p(E1).
p(C) :-
    u(D, qs, A),
    u(G, A, B),
    u(I, B, C),
    b(D, place_queens, E),
    b(_, E, F),
    b(_, F, H),
    b(G, H, J),
    b(I, J, K),
    b(K, gen_places, L),
    b(G, L, M),
    b(I, M, N),
    p(N).
p(C) :-
    u(D, gen_places, A),
    u([], A, B),
    u([], B, C),
    p(D).
p(G) :-
    u(K, '[|]', A),
    u(_, A, E),
    u(I, '[|]', B),
    u(_, B, C),
    u(H, gen_places, D),
    u(C, D, F),
    u(E, F, G),
    b(H, gen_places, J),
    b(I, J, L),
    b(K, L, M),
    p(M).
p(L) :-
    u(_, '[|]', A),
    u(B, A, I),
    u(_, '[|]', C),
    u(B, C, G),
    u(_, '[|]', D),
    u(B, D, E),
    u(M, place_queen, F),
    u(E, F, H),
    u(G, H, J),
    u(I, J, K),
    u(B, K, L),
    p(M).
p(K) :-
    u(Q, '[|]', A),
    u(_, A, H),
    u(O, '[|]', B),
    u(_, B, F),
    u(M, '[|]', C),
    u(_, C, D),
    u(L, place_queen, E),
    u(D, E, G),
    u(F, G, I),
    u(H, I, J),
    u(S, J, K),
    b(L, place_queen, N),
    b(M, N, P),
    b(O, P, R),
    b(Q, R, T),
    b(S, T, U),
    p(U).
p(E) :-
    u(F, place_queens, A),
    u(_, A, B),
    u(_, B, C),
    u(_, C, D),
    u([], D, E),
    p(F).
p(I) :-
    u(Y, '[|]', A),
    u(R, A, G),
    u(M, '[|]', B),
    u(_, B, C),
    u(L, place_queens, D),
    u(C, D, E),
    u(J, E, F),
    u(P, F, H),
    u(G, H, I),
    b(J, '[|]', K),
    b(_, K, V),
    b(L, place_queen, N),
    b(M, N, O),
    b(J, O, Q),
    b(P, Q, S),
    b(R, S, T),
    b(T, place_queens, U),
    b(M, U, W),
    b(V, W, X),
    b(P, X, Z),
    b(Y, Z, A1),
    p(A1).