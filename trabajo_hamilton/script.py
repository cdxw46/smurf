from itertools import permutations
G = [
    [0,0,1,0,0],
    [1,0,0,0,0],
    [0,1,0,0,0],
    [0,0,0,0,1],
    [0,0,0,1,0]
]
N = 5
for cyc in permutations(range(N)):
    ok = True
    for i in range(N):
        a = cyc[i]
        b = cyc[(i+1)%N]
        if G[a][b] != 1:
            ok = False
            break
    if ok:
        print(Hamiltonian
