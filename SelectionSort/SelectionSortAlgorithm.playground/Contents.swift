/// find smallest number in array of integer numbers.
/// - Parameters:
///     - numsArr : array of integer numbers.
/// - Returns: The index where the smallest number located.
func findSmallest(numsArr:[Int]) -> Int{
    var smallestNum = numsArr[0]
    var smallestNumIndex = 0
    
    for (numIndex , num) in numsArr.enumerated(){
        if(num < smallestNum){
            smallestNum = num
            smallestNumIndex = numIndex
        }
    }
    return smallestNumIndex
}

/// sort array of integer nmbers using selection sort algorithm.
/// - Parameters:
///     - numsArr : array of integer numbers.
/// - Returns: array of sorted numbers.
func selectionSort(numsArr:[Int]) -> [Int]{
    
    var sortedArr:[Int] = []
    var nums = numsArr
    
    for _num in nums{
        let smallestNumIndex = findSmallest(numsArr: nums)
        sortedArr.append(nums[smallestNumIndex])
        nums.remove(at: smallestNumIndex)
        
    }
    
    return sortedArr
}

selectionSort(numsArr: [5,3,6,2,10])

