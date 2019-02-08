//
//  ViewController.swift
//  Swift
//
//  Created by Unify on 18/10/18.
//  Copyright © 2018 shiv. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        
        //Higher Order Functions
        
        
        //SORT
        
        
        let numbers:[Int]  = [5,8,9,11,7,6,9,12]
                             //b a
        let asendingOrder = numbers.sorted{(a,b) -> Bool in
            
            print("Current value of A: \(a) and B: \(b)")
            return a>b
        }
        
       
        
        print (asendingOrder)
        
        
        
        let numberAsString = numbers.map{ String($0)
            //(a) -> String in
            
           // return String(a)
        }
        
        print(numberAsString)
        
     
        
        
        //MAP
        
        let houseName:[String] = ["starks" ,"lanniesters" , "targaryens" ,"baratheon" , "arryn"]
        
        
        let houseCharacterCount = characterCount(house: houseName)
        
        
        let mappedHouseCount = houseName.map{$0.count}
        print(" Characters count of each element in house name :- \(houseCharacterCount)")
        
         print(" Characters :- \(mappedHouseCount)")
        
        
        let upperCaseHouse = houseName.map { $0.uppercased()}
        print(upperCaseHouse)
        
        
        
        
        let numberArray:[Int] = [2,5,10,15,20]
        let factorialResult = numberArray.map{$0.factorial()}
        print(factorialResult)
        
    }
    
   
    
    func characterCount(house:[String]) -> [Int]
    {
        var characterCountArray = [Int]()
        for item  in house
        {
            characterCountArray.append(item.count)
        }
        return characterCountArray
    }
}


extension Int
{
    func factorial() -> Int
    {
        var fact: Int = 1
        for i in 1...self
        {
            fact = fact * i
        }
        return fact
    }
}
