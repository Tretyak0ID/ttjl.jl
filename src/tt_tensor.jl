export tt_tensor

mutable struct tt_tensor
    cores :: CoreCell

    function tt_tensor(cores :: CoreCell)
        N = length(cores)

        @assert(size(cores[1], 1) == size(cores[N], 3) == 1, "Core tensors are of incorrect sizes.")
        [@assert(size(cores[n], 3) == size(cores[n + 1], 1), "Dimension mismatch.") for n = 1 : N - 1]

        new(cores)
    end

end