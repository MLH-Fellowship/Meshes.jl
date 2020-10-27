using Meshes
using Test, Pkg, Random

# workaround GR warnings
ENV["GKSwstype"] = "100"

# environment settings
islinux = Sys.islinux()
istravis = "TRAVIS" ∈ keys(ENV)
isappveyor = "APPVEYOR" ∈ keys(ENV)
isCI = istravis || isappveyor
datadir = joinpath(@__DIR__,"data")

# list of tests
testfiles = [
  "primitives.jl",
  "algorithms.jl"
]

@testset "Meshes.jl" begin
  for testfile in testfiles
    include(testfile)
  end
end
