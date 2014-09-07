//
//  ViewController.swift
//  Unit3Lesson2-Fibo
//
//  Created by Rick Bowen on 9/5/14.
//  Copyright (c) 2014 Rick Bowen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var theSlider: UISlider!
    @IBOutlet weak var selectedValueLabel: UILabel!
    @IBOutlet weak var outputTextView: UITextView!
    
    //An instance of the model
    var fibo = FibonacciModel()
    
   
    @IBAction func sliderValueDidChange(sender: UISlider) {
    
        var returnedArray: [Int] = []
        var formattedOutput: String = ""
        
        //Display the updated slider value
        self.selectedValueLabel.text = String(Int(theSlider.value))
        
        //Calculate the Fibonacci elements based on the new slider value
        returnedArray = self.fibo.calculateFibonacciNumbers(minimum2: Int(theSlider.value))
        
        //Put the elements into a nicely formatted array
        for number in returnedArray{
            
            formattedOutput = formattedOutput + String(number) + ", "
            
        }
        
        //Update the textfield with the formatted array
        self.outputTextView.text = formattedOutput
    }
    
   
    
 
    
    
}

