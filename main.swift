// ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩
//BETWEEN THESE LINES =========={M{E{R{L{I{N{1}N}I}L}R}E}M}=====================================
let unsortedIntegers = [5, 7 ,9 ,3 ,1 ,8 ,6 ,2 ,4 ,10]
// DO NOT ALTER THE TEXT BETWEEN THESE LINES =========={M{E{R{L{I{N{1}N}I}L}R}E}M}=====================================
// ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧


// Add your code below:
func swap(integers: inout [Int], firstIndex: Int, secondIndex: Int) {
    let temp = integers[firstIndex]
    integers[firstIndex] = integers[secondIndex]
    integers[secondIndex] = temp
}
let num = unsortedIntegers.count - 1
var unsorted = unsortedIntegers
var first = 0
var second = 0
var swaps = 1
var totalSwaps = 0
var pass = 0
print("Pass: 0, Swaps: 0/0, Array: \(unsorted)")
while swaps > 0 {
    swaps = 0
    for index in 0..<num {
        if unsorted[index] > unsorted[index+1] {
            first = index
            second = index+1
//            print(unsorted[index], " split  ")
  //          print(unsorted[index+1])
            swap(integers:&unsorted, firstIndex:first, secondIndex:second)
            totalSwaps += 1
            swaps += 1
        } else {
        }
    }
    pass += 1
    print("Pass: \(pass), Swaps: \(swaps)/\(totalSwaps), Array: \(unsorted)")
}

