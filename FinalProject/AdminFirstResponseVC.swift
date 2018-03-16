//
//  AdminFirstResponseVC.swift
//  FinalProject
//
//  Created by student on 2017/12/29.
//  Copyright © 2017年 TNFSH104. All rights reserved.
//

import UIKit

class AdminFirstResponseVC: UIViewController {
    var userDefault = UserDefaults.standard


    override func viewDidLoad() {
        super.viewDidLoad()
        let Meal1Amount = userDefault.double(forKey: "Meal1Amount")
        let Meal2Amount = userDefault.double(forKey: "Meal2Amount")
        let Meal3Amount = userDefault.double(forKey: "Meal3Amount")
        let Meal4Amount = userDefault.double(forKey: "Meal4Amount")
        let Meal5Amount = userDefault.double(forKey: "Meal5Amount")
        let Meal1Price = userDefault.double(forKey: "Meal1Price")
        let Meal2Price = userDefault.double(forKey: "Meal2Price")
        let Meal3Price = userDefault.double(forKey: "Meal3Price")
        let Meal4Price = userDefault.double(forKey: "Meal4Price")
        let Meal5Price = userDefault.double(forKey: "Meal5Price")
        let TotalAmount = userDefault.double(forKey: "Meal1Amount") + userDefault.double(forKey: "Meal2Amount") + userDefault.double(forKey: "Meal3Amount") + userDefault.double(forKey: "Meal4Amount") + userDefault.double(forKey: "Meal5Amount")

        StepperMeal1Outlet.isHidden=true
        StepperMeal2Outlet.isHidden=true
        StepperMeal3Outlet.isHidden=true
        StepperMeal4Outlet.isHidden=true
        StepperMeal5Outlet.isHidden=true
        txtMeal1Amount.text = String(userDefault.double(forKey: "Meal1Amount"))
        txtMeal2Amount.text = String(userDefault.double(forKey: "Meal2Amount"))
        txtMeal3Amount.text = String(userDefault.double(forKey: "Meal3Amount"))
        txtMeal4Amount.text = String(userDefault.double(forKey: "Meal4Amount"))
        txtMeal5Amount.text = String(userDefault.double(forKey: "Meal5Amount"))
        labMeal1Name.text = userDefault.string(forKey: "Meal1Name")
        labMeal2Name.text = userDefault.string(forKey: "Meal2Name")
        labMeal3Name.text = userDefault.string(forKey: "Meal3Name")
        labMeal4Name.text = userDefault.string(forKey: "Meal4Name")
        labMeal5Name.text = userDefault.string(forKey: "Meal5Name")
        txtTotalMoney.text = String(Meal1Amount * Meal1Price + Meal2Price * Meal2Amount + Meal3Amount * Meal3Price + Meal4Amount * Meal4Price + Meal5Amount * Meal5Price)
        txtbPeopleAmount.text = String(TotalAmount)

        StepperMeal1Outlet.value = userDefault.double(forKey: "Meal1Amount")
        StepperMeal2Outlet.value = userDefault.double(forKey: "Meal2Amount")
        StepperMeal3Outlet.value = userDefault.double(forKey: "Meal3Amount")
        StepperMeal4Outlet.value = userDefault.double(forKey: "Meal4Amount")
        StepperMeal5Outlet.value = userDefault.double(forKey: "Meal5Amount")

    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    var editable = false
    @IBOutlet weak var txtbPeopleAmount: UITextField!
    @IBOutlet weak var txtTotalMoney: UITextField!
    @IBAction func btnClear(_ sender: UIButton) {
        userDefault.set(0.0, forKey: "Meal1Amount")
        userDefault.set(0.0, forKey: "Meal2Amount")
        userDefault.set(0.0, forKey: "Meal3Amount")
        userDefault.set(0.0, forKey: "Meal4Amount")
        userDefault.set(0.0, forKey: "Meal5Amount")
    }
    @IBAction func btnEdit(_ sender: UIBarButtonItem) {
        switch editable{
        case true:
        StepperMeal1Outlet.isHidden=false
        StepperMeal2Outlet.isHidden=false
        StepperMeal3Outlet.isHidden=false
        StepperMeal4Outlet.isHidden=false
        StepperMeal5Outlet.isHidden=false
        
            editable=false
            break
        default:
            
            let Meal1Changed = StepperMeal1Outlet.value
            let Meal2Changed = StepperMeal1Outlet.value
            let Meal3Changed = StepperMeal1Outlet.value
            let Meal4Changed = StepperMeal1Outlet.value
            let Meal5Changed = StepperMeal1Outlet.value

            userDefault.set(Meal1Changed, forKey: "Meal1Amount")
            userDefault.set(Meal2Changed, forKey: "Meal2Amount")
            userDefault.set(Meal3Changed, forKey: "Meal3Amount")
            userDefault.set(Meal4Changed, forKey: "Meal4Amount")
            userDefault.set(Meal5Changed, forKey: "Meal5Amount")
            userDefault.synchronize()
            let Meal1Price = userDefault.double(forKey: "Meal1Price")
            let Meal2Price = userDefault.double(forKey: "Meal2Price")
            let Meal3Price = userDefault.double(forKey: "Meal3Price")
            let Meal4Price = userDefault.double(forKey: "Meal4Price")
            let Meal5Price = userDefault.double(forKey: "Meal5Price")
            let TotalAmount = userDefault.double(forKey: "Meal1Amount") + userDefault.double(forKey: "Meal2Amount") + userDefault.double(forKey: "Meal3Amount") + userDefault.double(forKey: "Meal4Amount") + userDefault.double(forKey: "Meal5Amount")
            
            //Refresh 
            txtMeal1Amount.text = String(userDefault.double(forKey: "Meal1Amount"))
            txtMeal2Amount.text = String(userDefault.double(forKey: "Meal2Amount"))
            txtMeal3Amount.text = String(userDefault.double(forKey: "Meal3Amount"))
            txtMeal4Amount.text = String(userDefault.double(forKey: "Meal4Amount"))
            txtMeal5Amount.text = String(userDefault.double(forKey: "Meal5Amount"))
            
            txtTotalMoney.text = String(Meal1Changed * Meal1Price + Meal2Changed * Meal2Price + Meal3Changed * Meal3Price + Meal4Changed * Meal4Price + Meal5Changed * Meal5Price)
            txtbPeopleAmount.text = String(TotalAmount)
            editable=true
            break
        }
    }
    @IBAction func btnUpdate(_ sender: UIButton) {
        //It is NOT using now.
        //Add Alert window
        
        
    }
    @IBOutlet weak var txtMeal1Amount: UITextField!
    @IBOutlet weak var txtMeal2Amount: UITextField!
    @IBOutlet weak var txtMeal3Amount: UITextField!
    @IBOutlet weak var txtMeal4Amount: UITextField!
    @IBOutlet weak var txtMeal5Amount: UITextField!
    @IBOutlet weak var StepperMeal1Outlet: UIStepper!
    @IBOutlet weak var labMeal1Name: UILabel!
    @IBOutlet weak var labMeal2Name: UILabel!
    @IBOutlet weak var labMeal3Name: UILabel!
    @IBOutlet weak var labMeal4Name: UILabel!
    @IBOutlet weak var labMeal5Name: UILabel!
    
    @IBOutlet weak var StepperMeal2Outlet: UIStepper!
    
    @IBOutlet weak var StepperMeal5Outlet: UIStepper!
    @IBOutlet weak var StepperMeal4Outlet: UIStepper!
    @IBOutlet weak var StepperMeal3Outlet: UIStepper!
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
