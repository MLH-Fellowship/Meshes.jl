@testset "Angles" begin
  @test ∠(P2(0,1),P2(0,0),P2(1,0)) ≈ T(-π/2)
  @test ∠(P2(1,0),P2(0,0),P2(0,1)) ≈ T(π/2)
end
