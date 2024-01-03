export tt_tensor, tt_rand

mutable struct tt_tensor
    cores :: CoreCell

    function tt_tensor(cores :: CoreCell)
        N = length(cores)

        @assert(size(cores[1], 1) == size(cores[N], 3) == 1, "Core tensors are of incorrect sizes.")
        [@assert(size(cores[n], 3) == size(cores[n + 1], 1), "Dimension mismatch.") for n = 1 : N - 1]

        new(cores)
    end

end

#Create random I[1] × ... × I[N] tensor and TT-rank (R[1], ... , R[N])
function tt_rand(I :: Vector{<:Integer}, R :: Vector{<:Integer})
    N = length(I)
    cores = CoreCell(undef, N)
    Ranks = [1 ; R ; 1]
    [cores[n] = randn(Ranks[n], I[n], Ranks[n + 1]) for n = 1 : N]
    tt_tensor(cores)
end