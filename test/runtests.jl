using Test
using SparseArrays

@testset "RCM permutation of SparseMatrixCSC" begin
	@test true
end

#A = sprand(500000,500000, 0.00001)
#A = A+A'+30I
#adj = adjacency(A)
#sdeg = sortperm(degree(A))
#@time p = symrcm(adj, sdeg)
#B = A[p,p]
#using UnicodePlots
#spy(A)
#spy(B)
