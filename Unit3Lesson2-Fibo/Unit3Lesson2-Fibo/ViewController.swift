//
//  ViewController.swift
//  Unit3Lesson2-Fibo
//
//  Created by Rick Bowen on 9/5/14.
//  Copyright (c) 2014 Rick Bowen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //Graphic elements
    var selectedValueLabel: UILabel?
    var outputTextView: UITextView?
    var theSlider: UISlider?
    
    //An instance of the model
    var fibo = FibonacciModel()
                        
    
    override func viewDidLoad() {
    
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.addASlider()
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func addASlider() {
        
        //Create the slider
        self.theSlider = UISlider(frame: CGRectMake(60, 244, 200, 20))
        self.view.addSubview(theSlider!)
        
        //Assign maximum and minimum value
        self.theSlider!.minimumValue = 2
        self.theSlider!.maximumValue = 50
        
        //Create labels to display the min/max values
        var minLabel = UILabel(frame: CGRectMake(70, 205, 40, 40))
        minLabel.text = String (Int(theSlider!.minimumValue))
        self.view.addSubview(minLabel)
        
        var maxLabel = UILabel(frame: CGRectMake(235, 205, 40, 40))
        maxLabel.text = String (Int(theSlider!.maximumValue))
        self.view.addSubview(maxLabel)
        
        //Create labels to display selected value
        self.selectedValueLabel = UILabel(frame: CGRectMake(140, 320, 40, 40))
        self.selectedValueLabel!.text = String(Int(theSlider!.value))
        self.view.addSubview(selectedValueLabel!) //set to minimum value
        
        //Create a label to hold the output
        self.outputTextView = UITextView(frame: CGRectMake(20, 350, 300, 140))
        self.view.addSubview(self.outputTextView!)
        
        //Update the value label when the slider value is updated.
        self.theSlider!.addTarget(self, action: "sliderValueDidChange", forControlEvents: UIControlEvents.ValueChanged)
        
    }
    
    
    func sliderValueDidChange() {
        
        var returnedArray: [Int] = []
        var formattedOutput: String = ""
        
        //Display the updated slider value
        self.selectedValueLabel!.text = String(Int(theSlider!.value))
        
        //Calculate the Fibonacci elements based on the new slider value
        returnedArray = self.fibo.calculateFibonacciNumbers(minimum2: Int(theSlider!.value))
        
        //Put the elements into a nicely formatted array
        for number in returnedArray{
            
            formattedOutput = formattedOutput + String(number) + ", "
            
        }
        
        //Update the textfield with the formatted array
        self.outputTextView!.text = formattedOutput
    }


}

