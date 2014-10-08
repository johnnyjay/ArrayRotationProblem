// John Kim

import Cocoa

func rotate(inputArray: [Int], rotateNumber: Int) -> [Int] {
    var tempArray = inputArray
    
    for var index = 0; index < rotateNumber; index++ {
        tempArray = rotateArray(tempArray)
    }
    
    return tempArray
}

func rotateArray(someArray: [Int]) -> [Int] {
    var tempNumber: Int = someArray[0]
    var tempArrays = someArray
    
    for var counter: Int = 0; counter < someArray.count; counter++ {
        
        if(counter + 1 != someArray.count) {
            tempArrays[counter + 1] = tempNumber
            tempNumber = someArray[counter + 1]
        }
            
        else {
            tempArrays[0] = tempNumber
            tempNumber = someArray[0]
        }
        
    }
    return tempArrays
}

rotateArray([1, 5, 7])

rotate([1, 5, 7], 2)
