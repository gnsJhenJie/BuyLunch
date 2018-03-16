//
//  BuyLunchViewController.swift
//  FinalProject
//
//  Created by student on 2017/12/8.
//  Copyright © 2017年 TNFSH104. All rights reserved.
//

import UIKit

class BuyLunchViewController: UIViewController {
    var userDefault = UserDefaults.standard
    override func viewDidLoad() {
        super.viewDidLoad()
        labMeal1Name.text = userDefault.string(forKey: "Meal1Name")
        labMeal2Name.text = userDefault.string(forKey: "Meal2Name")
        labMeal3Name.text = userDefault.string(forKey: "Meal3Name")
        labMeal4Name.text = userDefault.string(forKey: "Meal4Name")
        labMeal5Name.text = userDefault.string(forKey: "Meal5Name")
        labMeal1Price.text = String(userDefault.double(forKey: "Meal1Price"))
        labMeal2Price.text = String(userDefault.double(forKey: "Meal2Price"))
        labMeal3Price.text = String(userDefault.double(forKey: "Meal3Price"))
        labMeal4Price.text = String(userDefault.double(forKey: "Meal4Price"))
        labMeal5Price.text = String(userDefault.double(forKey: "Meal5Price"))

    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //NOT FINISHED
        
    }
    


    
    @IBOutlet weak var labMeal1Name: UILabel!
    @IBOutlet weak var labMeal2Name: UILabel!
    @IBOutlet weak var labMeal3Name: UILabel!
    @IBOutlet weak var labMeal4Name: UILabel!
    @IBOutlet weak var labMeal5Name: UILabel!
    @IBOutlet weak var labMeal1Price: UILabel!
    @IBOutlet weak var labMeal2Price: UILabel!
    @IBOutlet weak var labMeal3Price: UILabel!
    @IBOutlet weak var labMeal4Price: UILabel!
    @IBOutlet weak var labMeal5Price: UILabel!
    

    var NewMeal1Amount = 0.0
    @IBOutlet weak var labAmountMeal1: UILabel!
    @IBOutlet weak var StepperMeal1Outlet: UIStepper!
    @IBAction func StepperMeal1(_ sender: UIStepper) {
        labAmountMeal1.text = String(sender.value)
        NewMeal1Amount = sender.value
    }
    var newMeal2Amount = 0.0
    @IBOutlet weak var labAmountMeal2: UILabel!
    @IBOutlet weak var StepperMeal2Outlet: UIStepper!
    @IBAction func StepperMeal2(_ sender: UIStepper) {
        labAmountMeal2.text = String(sender.value)
        newMeal2Amount = sender.value
    }
    var NewMeal3Amount = 0.0
    @IBOutlet weak var labAmountMeal3: UILabel!
    @IBOutlet weak var StepperMeal3Outlet: UIStepper!
    @IBAction func StepperMeal3(_ sender: UIStepper) {
        labAmountMeal3.text = String(sender.value)
        NewMeal3Amount = sender.value
    }
    var NewMeal4Amount = 0.0
    @IBOutlet weak var labAmountMeal4: UILabel!
    @IBOutlet weak var StepperMeal4Outlet: UIStepper!
    @IBAction func StepperMeal4(_ sender: UIStepper) {
        labAmountMeal4.text = String(sender.value)
        NewMeal4Amount = sender.value
    }
    var NewMeal5Amount = 0.0
    @IBOutlet weak var labAmountMeal5: UILabel!
    @IBOutlet weak var StepperMeal5Outlet: UIStepper!
    @IBAction func StepperMeal5(_ sender: UIStepper) {
        labAmountMeal5.text = String(sender.value)
        NewMeal5Amount = sender.value
    }
    @IBAction func btnCheck(_ sender: UIButton) {
        let meal1Add = StepperMeal1Outlet.value
        let meal2Add = StepperMeal2Outlet.value
        let meal3Add = StepperMeal3Outlet.value
        let meal4Add = StepperMeal4Outlet.value
        let meal5Add = StepperMeal5Outlet.value
        let meal1original = userDefault.double(forKey: "Meal1Amount")
        let meal2original = userDefault.double(forKey: "Meal2Amount")
        let meal3original = userDefault.double(forKey: "Meal3Amount")
        let meal4original = userDefault.double(forKey: "Meal4Amount")
        let meal5original = userDefault.double(forKey: "Meal5Amount")
        let Username = userDefault.string(forKey: "Username")
        var AddDetails : String
        if (meal1Add+meal2Add+meal3Add+meal4Add+meal5Add) != 0 {
            userDefault.synchronize()
            let previousDetails = userDefault.string(forKey: "OrderDetails")
            AddDetails = "\(previousDetails)\(Username!)  \(meal1Add)+\(meal2Add)+\(meal3Add)+\(meal4Add)+\(meal5Add)\n"
            userDefault.set(AddDetails, forKey: "OrderDetails")
            userDefault.set(meal1Add+meal1original, forKey: "Meal1Amount")
            userDefault.set(meal2Add+meal2original, forKey: "Meal2Amount")
            userDefault.set(meal3Add+meal3original, forKey: "Meal3Amount")
            userDefault.set(meal4Add+meal4original, forKey: "Meal4Amount")
            userDefault.set(meal5Add+meal5original, forKey: "Meal5Amount")
            userDefault.synchronize()
        }else{
            //Add alert
        }

        

        //userDefault.set(AddDetails, forKey: "OrderDetails")
        
        userDefault.synchronize()
        //After Clicking the btn,the VC will BACK TO LOGIN VC
    }
    
    
    
    
    
}

