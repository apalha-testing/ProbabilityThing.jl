using ProbabilityThing
using Test

@testset "ProbabilityThing.jl" begin
    for distribution in [ProbabilityThing.Normal()]
        @test ProbabilityThing.pdf(distribution, 0.0) > 0
        @test ProbabilityThing.cdf(distribution, Inf) ≈ 1
    end
end
