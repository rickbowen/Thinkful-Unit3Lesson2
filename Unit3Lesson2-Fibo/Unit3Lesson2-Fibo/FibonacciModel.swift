//
//  FibonacciModel.swift
//  Unit3Lesson2-Fibo
//
//  Created by Rick Bowen on 9/5/14.
//  Copyright (c) 2014 Rick Bowen. All rights reserved.
//

import Foundation

class FibonacciModel{
    
    func calculateFibonacciNumbers (minimum2 endOfSequence:Int) -> Array<Int> {
        
        //Declaring a stored property with initial values
        var sequence : [Int] = [1,1]
        
        for number in 2..<endOfSequence{
            
            var newFibonacciNumber = sequence[number-1] + sequence[number-2]
            sequence.append(newFibonacciNumber)
            
        }
        
        return sequence
    }
}