//
//  EditMenuViewController.swift
//  FinalProject
//
//  Created by student on 2017/12/29.
//  Copyright © 2017年 TNFSH104. All rights reserved.
//

import UIKit

class EditMenuViewController: UIViewController {
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
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
        
    }


    @IBOutlet weak var labMeal1Name: UITextField!
    @IBOutlet weak var labMeal2Name: UITextField!
    @IBOutlet weak var labMeal3Name: UITextField!
    @IBOutlet weak var labMeal4Name: UITextField!
    @IBOutlet weak var labMeal5Name: UITextField!
    @IBOutlet weak var labMeal1Price: UITextField!
    @IBOutlet weak var labMeal2Price: UITextField!
    @IBOutlet weak var labMeal3Price: UITextField!
    @IBOutlet weak var labMeal4Price: UITextField!
    @IBOutlet weak var labMeal5Price: UITextField!
    
    @IBAction func btnSave(_ sender: UIButton) {
        let Meal1price = Double(labMeal1Price.text!)
        let Meal2price = Double(labMeal2Price.text!)
        let Meal3price = Double(labMeal3Price.text!)
        let Meal4price = Double(labMeal4Price.text!)
        let Meal5price = Double(labMeal5Price.text!)
        let m1 = labMeal1Name.text!
        let m2 = labMeal2Name.text!
        let m3 = labMeal3Name.text!
        let m4 = labMeal4Name.text!
        let m5 = labMeal5Name.text!

        userDefault.set(Meal1price, forKey: "Meal1Price")
        userDefault.set(Meal2price, forKey: "Meal2Price")
        userDefault.set(Meal3price, forKey: "Meal3Price")
        userDefault.set(Meal4price, forKey: "Meal4Price")
        userDefault.set(Meal5price, forKey: "Meal5Price")
        userDefault.set(m1, forKey: "Meal1Name")
        userDefault.set(m2, forKey: "Meal2Name")
        userDefault.set(m3, forKey: "Meal3Name")
        userDefault.set(m4, forKey: "Meal4Name")
        userDefault.set(m5, forKey: "Meal5Name")
    userDefault.synchronize()
        
        dismiss(animated: true, completion: nil)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
