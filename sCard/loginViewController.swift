//
//  loginViewController.swift
//  sCard
//
//  Created by Paschal Ihenacho on 9/11/16.
//  Copyright © 2016 Paschal Ihenacho. All rights reserved.
//

import UIKit

class loginViewController: UIViewController {
    @IBOutlet weak var logo: UIImageView!
    @IBOutlet weak var txtUserName: UITextField!
    @IBOutlet weak var txtPassword: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.logo.layer.cornerRadius = 12.0
        
        // let blueColor = UIColor(red: 0.0, green: 122, blue: 255, alpha: 1)
        let border = CALayer()
        let width = CGFloat(2.0)
        border.borderColor = UIColor(red: 0.00, green: 0.48, blue: 1.00, alpha: 1.0).cgColor
        border.frame = CGRect(x: 0, y: txtUserName.frame.size.height - width, width:  txtUserName.frame.size.width, height: txtUserName.frame.size.height)
        
        border.borderWidth = width
        txtUserName.layer.addSublayer(border)
        txtUserName.layer.masksToBounds = true
        
        //Password
        
        border.frame = CGRect(x: 0, y: txtPassword.frame.size.height - width, width:  txtPassword.frame.size.width, height: txtPassword.frame.size.height)
        
        border.borderWidth = width
        txtPassword.layer.addSublayer(border)
        txtPassword.layer.masksToBounds = true

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
