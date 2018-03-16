//
//  DetailsOfOrderedVC.swift
//  FinalProject
//
//  Created by Hsieh Jhen Jie on 2018/1/2.
//  Copyright © 2018年 TNFSH104. All rights reserved.
//

import UIKit

class DetailsOfOrderedVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let userDefault = UserDefaults.standard
        if userDefault.string(forKey: "OrderDetails")=="" {
            txtviewOrderDetails.text = "目前無訂單"
        }else{
            txtviewOrderDetails.text = userDefault.string(forKey: "OrderDetails")
        }
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBOutlet weak var txtviewOrderDetails: UITextView!
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
