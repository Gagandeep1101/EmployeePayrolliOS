//
//  RegisterpageViewController.swift
//  empPayroll
//
//  Created by MacStudent on 2018-08-14.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import UIKit

class RegisterpageViewController: UIViewController {

    @IBOutlet weak var txtUserEmail: UITextField!
    @IBOutlet weak var txtUserPassword: UITextField!
    @IBOutlet weak var txtUserConfirmPassword: UITextField!
    var userDefault: UserDefaults?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func btnRegister(_ sender: UIButton) {
        
        let userEmail = txtUserEmail.text
        let userPassword = txtUserPassword.text
        let userConfirmPassword = txtUserConfirmPassword.text
        
        //Check for empty fields
        if(userEmail!.isEmpty || (userPassword?.isEmpty)! || (userConfirmPassword?.isEmpty)!)
        {
            //Display Alert message
            displayMyAlertMessage(userMessage: "All fields are required")
            return
        }
        //Check if passwword match
        if(userPassword != userConfirmPassword)
        {
            //Dispaly an alert message
            displayMyAlertMessage(userMessage: "Passwords do not match")
            return
        }
        
        //Store data
        userDefault = NSUserDefa
        //UserDefaults.standardUserdefaults().setObject(userEmail, forKey: "userEmail")
       // UserDefaults.standardUserdefaults().setObject(userEmail, forKey: "userPassword")
        // UserDefaults.standardUserdefaults().synchronize()
        
        //Display alert message with confirmation
    }
    
    func displayMyAlertMessage(userMessage: String)
    {
        var myAlert = UIAlertController(title: "Alert", message: userMessage, preferredStyle: UIAlertControllerStyle.alert)
        
        let okAction = UIAlertAction(title: "Ok", style: UIAlertActionStyle.default, handler: nil)
        
        myAlert.addAction(okAction)
        
        self.present(myAlert, animated: true,completion: nil)
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
