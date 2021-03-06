using OneClassActiveLearning
using SVDD
using Test
using Random
using JuMP, Ipopt
using MLDataUtils, MLLabelUtils, MLKernels
using ValueHistories
using PyCall
using Statistics
using LinearAlgebra
using Dates
using JSON, Unmarshal
using InteractiveUtils

TEST_SOLVER =  with_optimizer(Ipopt.Optimizer, print_level=0)

Random.seed!(0)

@testset "OneClassActiveLearning" begin
    include("QueryStrategies/qs_test.jl")
    include("data_util_test.jl")
    include("evaluate_test.jl")
    include("setup_test.jl")
    include("serialize_test.jl")
    include("result_test.jl")
end
