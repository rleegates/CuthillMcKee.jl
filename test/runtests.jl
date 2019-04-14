using Test
using SparseArrays, CuthillMcKee, UnicodePlots, LinearAlgebra

@testset "RCM permutation of SparseMatrixCSC" begin
	@test begin
		N = 500_000
		A = sprand(N, N, 1/N)
		A = A+A'+30I
		b = rand(N)
		@time p = symrcm(A)
		ip = symrcm(A, true, true)
		AP = rcmpermute(A)
		display(spy(A))
		display(spy(AP))
		norm( (AP*b[p])[ip]-A*b ) < 1e-12
	end
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
