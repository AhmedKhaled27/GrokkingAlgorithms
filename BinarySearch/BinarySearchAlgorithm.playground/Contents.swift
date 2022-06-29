/// Searching for an item in the sorted list using binary search.
/// - Parameters:
///     - list: sorted list of double numbers.
///     - item: Double number.
/// - Returns: The position where the item located.
func binarySearch(list:[Double] ,_ item:Double)->Int? {
    
    var low = 0
    var high = list.count-1

    while (low <= high){
        
        let mid = (low + high)/2
        let guess = list[mid]
        
        if(guess == item){
            return mid
        }else if(item < guess){
            high = mid - 1
        }else if(item > guess){
            low = mid + 1
        }

    }
    return nil
}

let list:[Double] = [1,3,5,7,9]

binarySearch(list: list, 3) // return 1
binarySearch(list: list, -1) // return nil

