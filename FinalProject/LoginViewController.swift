//
//  LoginViewController.swift
//  FinalProject
//
//  Created by student on 2017/12/8.
//  Copyright © 2017年 TNFSH104. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    
    
    @IBOutlet weak var txtfUsername: UITextField!
    @IBOutlet weak var txtfPassword: UITextField!
    @IBOutlet weak var btnHideViewPW: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        txtfUsername.text=""
        txtfPassword.text=""
        //// just demo the setting and retrieve value from userDefault
        // setting value to variable

        
    }
    
    //Data Needs To Pass Between Admin and Noramal VC
    var Meal1Name = "餐點一"
    var Meal2Name = "餐點二"
    var Meal3Name = "餐點三"
    var Meal4Name = "餐點四"
    var Meal5Name = "餐點五"

    var Meal1Amount = Double()
    var Meal2Amount = Double()
    var Meal3Amount = Double()
    var Meal4Amount = Double()
    var Meal5Amount = Double()
    var Meal1Price = Double()
    var Meal2Price = Double()
    var Meal3Price = Double()
    var Meal4Price = Double()
    var Meal5Price = Double()

    
    //Data Needs To Pass To Noramal VC Only
    var username = String()
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func btnLogin(_ sender: UIButton) {

        let UserAuth = AccountAuth.init(AccountFO: txtfUsername.text!, PasswordFO: txtfPassword.text!)
        switch UserAuth.UserAuth{
        case true :
            // open Buy lunch view
            let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
            let targetVC = storyBoard.instantiateViewController(withIdentifier: "BuyLunchVC") as! BuyLunchViewController
            
            self.present(targetVC, animated: true, completion: nil)

            var userDefault = UserDefaults.standard
            userDefault.set(UserAuth.UserName, forKey: "Username")
            userDefault.synchronize()
        default :
            // Show alert message and login again
            let alertController = UIAlertController(title: "帳號或密碼錯誤", message:
                "請再輸入一次", preferredStyle: UIAlertControllerStyle.alert)
            alertController.addAction(UIAlertAction(title: "返回", style: UIAlertActionStyle.default,handler: nil))
            
            self.present(alertController, animated: true, completion: nil)
        }
    }
    @IBAction func btnAdminLogin(_ sender: UIButton) {
        let UserAuth = AccountAuth.init(AccountFO: txtfUsername.text!, PasswordFO: txtfPassword.text!)
        switch UserAuth.AdminAuth{
        case true :
            // open Buy lunch view
            let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
            let targetVC = storyBoard.instantiateViewController(withIdentifier: "AdminVC") as! AdminFirstResponseVC
            
            //username=txtfUsername.text!
            //self.present(targetVC, animated: true, completion: nil)
            self.navigationController?.show(targetVC, sender: self)
        default :
            // Show alert message and login again
            let alertController = UIAlertController(title: "帳號或密碼錯誤", message:
                "請再輸入一次", preferredStyle: UIAlertControllerStyle.alert)
            alertController.addAction(UIAlertAction(title: "返回", style: UIAlertActionStyle.default,handler: nil))
            
            self.present(alertController, animated: true, completion: nil)
        }
    }
    

    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
        
    }

}
