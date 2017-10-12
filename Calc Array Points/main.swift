//
//  main.swift
//  Calc Array Points
//
//  Created by studentuser on 10/11/17.
//  Copyright © 2017 Nestor Qin. All rights reserved.
//

import Foundation

func add(num_1: Int, num_2: Int) -> Double {
    return Double(num_1) + Double(num_2)
}

func subtract(num_1: Int, num_2: Int) -> Double {
    return Double(num_1) - Double(num_2)
}

func mutiply(num_1: Int, num_2: Int) -> Double {
    return Double(num_1) * Double(num_2)
}

func devide(num_1: Int, num_2: Int) -> Double {
    return Double(num_1) / Double(num_2)
}

func calculate(operation:(Int, Int) -> Double, num_1: Int, num_2: Int) -> Double {
    return Double(operation(num_1, num_2))
}

func add(nums: Int...) -> Int {
    var result = 0
    for num in nums {
        result += num
    }
    return result
}

func multiply(nums: Int...) -> Int {
    var result = 0
    for num in nums {
        result *= num
    }
    return result
}

func count(nums: Int...) -> Int {
    return nums.count
}

func avg(nums: Int...) -> Double {
    var sum = 0
    for num in nums {
        sum += num
    }
    return Double(sum) / Double(nums.count)
}

func addPoints(point_1 p1:(x:Int, y:Int), point_2 p2:(x:Int, y:Int)) -> (x:Int, y:Int) {
    let xSum:Int = p1.x + p2.x
    let ySum:Int = p1.y + p2.y
    return (xSum, ySum)
}

func subtractPoints(point_1 p1:(x:Int, y:Int), point_2 p2:(x:Int, y:Int)) -> (x:Int, y:Int) {
    let xSum:Int = p1.x - p2.x
    let ySum:Int = p1.y - p2.y
    return (xSum, ySum)
}

func addPoints(point_1 p1:[String: Int], point_2 p2:[String: Int]) -> [String: Int]{
    if (p1["x"] != nil && p1["y"] != nil &&
        p2["x"] != nil && p2["y"] != nil) {
        let xSum: Int = p1["x"]! + p2["x"]!
        let ySum: Int = p1["y"]! + p2["y"]!
        return ["x": xSum, "y": ySum]
    } else {
        print("Error")
        return ["Error": -1]
    }
}

func subtractPoints(point_1 p1:[String: Int], point_2 p2:[String: Int]) -> [String: Int]{
    if (p1["x"] != nil && p1["y"] != nil &&
        p2["x"] != nil && p2["y"] != nil) {
        let xSum: Int = p1["x"]! - p2["x"]!
        let ySum: Int = p1["y"]! - p2["y"]!
        return ["x": xSum, "y": ySum]
    } else {
        print("Error")
        return ["Error": -1]
    }
}



print(calculate(operation: add, num_1: 15, num_2: 5))
print(add(nums: 12, 23, 42, 21, 42))
print(addPoints(point_1: (x: 3, y: 5), point_2: (x: 5, y: -2)))
print(addPoints(point_1: ["z": 5.0, "y": 6], point_2: ["e" : 10, "y": -2]))
