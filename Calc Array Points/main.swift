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

print(calculate(operation: add, num_1: 15, num_2: 5))
print(add(nums: 12, 23, 42, 21, 42))
