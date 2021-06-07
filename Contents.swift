import UIKit



let findSmallestNumInGivenArray = [7,8,9]

func findMin(numbers: NSArray) {
    
var minValue = numbers[0]
var isSmallest: Bool

for i in findSmallestNumInGivenArray {
    isSmallest = true
    for j in findSmallestNumInGivenArray {
        if i > j {
            isSmallest = false
        }
     }

    if isSmallest {
        
        minValue = i
        
    }

}

print("Smallest value in the list is \(minValue)")
}

findMin(numbers: findSmallestNumInGivenArray as NSArray)

//MARK:- 2nd way to find min num in Array

var minValue = Int.max

for i in findSmallestNumInGivenArray {
    
 minValue =   min(minValue, i)
print("min",minValue)
}
print("Min value",minValue)





//MARK:- Find Maximum Number in given array



//NOTE: 1st remove smallest number in given array
//NOTE: 2nd remove largest number in given array

// then O/P:- Add two arrays of sum

func findMax(numbers: [Int]) {

    var getMaxVal = 0
    var isLarget = false
    
    for i in numbers
    {
        isLarget = true
        
        for j in numbers
        {
           if i < j
           {
              isLarget = false
           }
       }
       if isLarget {
            getMaxVal = i
        }
  }
  print("largest value in array",getMaxVal)
}

let arrray = [7,8,9]
findMax(numbers:arrray)


//MARK:- Find MIN and MAX  sum of Array

//NOTE 1: remove small num in array
//NOTE 2: remove large  num in array

//O/P:- sum of two arrays


func miniMaxSum(arr: [Int]) -> Void {
    
    
    var getMaxVal = 0
    var getMinValue = 0
    var minSumOfArray = [Int]()
    var maxSumOfArray = [Int]()
    minSumOfArray = arr
    maxSumOfArray = arr
    var isLarget = false
    var isSmallest = false
    
    for i in arr
    {
        isLarget = true
        isSmallest = true
        
        for j in arr
        {
           if i < j
           {
              isLarget = false
           }
            if i > j
            {
               isSmallest = false
            }
            
       }
       if isLarget {
            getMaxVal = i
        }
        if isSmallest {
             getMinValue = i
         }
}
    
let minIndex = minSumOfArray.firstIndex(of:getMinValue )
minSumOfArray.remove(at: minIndex!)
let maxIndex = maxSumOfArray.firstIndex(of:getMaxVal )
maxSumOfArray.remove(at: maxIndex!)
let maxSum =   minSumOfArray.reduce(0, +)
let minSum =   maxSumOfArray.reduce(0, +)
    
    print("sum",minSum,maxSum)


}
miniMaxSum(arr: [1,2,3,4,5])






//MARK:- Sum of Array
func findSum(num:NSArray) {
    
    var sumValue = 0
    for add in num {
    
     sumValue += add as! Int
    }
    
    print("Sum of Nums", sumValue)
}


//MARK:- Second Way
func findSumOfNums(nums:[Int]) {
    
    let sum = nums.reduce(0, +)
    print("Sum of Nums using reduce", sum)

}
let array = [1,2,8,4,5]
findSum(num: array as NSArray)
findSumOfNums(nums: (array as NSArray) as! [Int])






//MARK:- Remove specific index in Array

//MARK:-1st Way
let modifyArray =  ["a","b","c","d"]
let afterModifying = modifyArray.filter{$0 != "c"}
print("after Removing specific index",afterModifying)

let givenNums = [1,2,3,8,4,5]
let afterArray = givenNums.filter{$0 != 8}
print("after array",afterArray)




//MARK:- 2nd Way
var givenArray = [9,8,7,6,5]
 
    
//MARK:- NOTE: firstIndex----- is it wil not consider only first obj it wil also take which parameter you pass
let index = givenArray.firstIndex(of: 5)
  print("index",index)
    givenArray.remove(at: index!)


print("get New Array",givenArray)


 
