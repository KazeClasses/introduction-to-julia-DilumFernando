"""
Insertion sort algorithm.
This function sorts an array using the insertion sort algorithm.
# Arguments
- `arr::Vector{Int}`: The array to be sorted.
# Examples
julia
arr = [3, 2, 1]
insertion_sort!(arr)
println(arr)  \# [1, 2, 3]
"""

function insertion_sort!(arr::Array{Int, 1})
    # Insert your code here
    n = length(arr)
    for i in 2:n
        key = arr[i]
        j = i - 1
        while j > 0 && arr[j] > key
            arr[j + 1] = arr[j]
            j -= 1
        end
        arr[j + 1] = key
    end
    return arr
end

function check_sort(N::Int = 100)
    array = collect(1:N)
    shuffle!(array)
    insertion_sort!(array)
    return array == collect(1:N)
end

export insertion_sort!, check_sort