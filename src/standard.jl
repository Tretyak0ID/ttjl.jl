#Standart helper structures and base linear algebra operation for Tensor Train format
export VectorCell, MatrixCell, TensorCell, CoreCell

"""
VectorCell(undef,N)
Cell of vectors of length N.
"""
const VectorCell = Array{AbstractVector{<:Number},1}

"""
MatrixCell(undef,N)
Cell of matrices of length N.
"""
const MatrixCell = Array{AbstractMatrix{<:Number},1}

"""
TensorCell(undef,N)
Cell of multidimensional arrays of length N.
"""

const TensorCell = Array{AbstractArray{<:Number},1}
export CoreCell

"""
CoreCell(undef,N)
Cell of 3D tensors of length N. Suitable for the cores of tt_tensor.
"""
const CoreCell = Array{AbstractArray{<:Number,3},1}