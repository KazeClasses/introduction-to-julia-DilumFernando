using InsertionSort
using Test

@testset "Insertion sort tests" begin
    @test insertion_sort!([3, 2, 1]) == [1, 2, 3]
    @test insertion_sort!([3, 2, 1, 4]) == [1, 2, 3, 4]
end