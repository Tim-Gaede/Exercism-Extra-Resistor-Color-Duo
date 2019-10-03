using Test

include("resistor_color_duo.jl")
# Tests adapted from `problem-specifications//canonical-data.json` @ v2.1.0


@testset "brown and black" begin
    @test value(["brown", "black"]) == 10
end

@testset "blue and grey" begin
    @test value(["blue", "grey"]) == 68
end

@testset "yellow and violet" begin
    @test value(["yellow", "violet"]) == 47
end

@testset "orange and orange" begin
    @test value(["orange", "orange"]) == 33
end

@testset "ignore additional colors" begin
    @test value(["green", "brown", "orange"]) == 51
end
