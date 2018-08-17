//
//  RegisterpageViewController.swift
//  empPayroll
//
//  Created by Gagandeep on 2018-08-14.
//  Copyright © 2018 Gagandeep. All rights reserved.
//

import UIKit

class RegisterpageViewController: UIViewController {

    @IBOutlet weak var txtUserEmail: UITextField!
    @IBOutlet weak var txtUserPassword: UITextField!
    @IBOutlet weak var txtUserConfirmPassword: UITextField!
    //var userDefault : UserDefaults.standard?
    
    
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
        
        //UserDefaults.standardUserdefaults().setObject(userEmail, forKey: "userEmail") - legacy
        UserDefaults.standard.set(userEmail, forKey: "userEmail")
        
        //UserDefaults.standardUserdefaults().setObject(userPassword, forKey: "userPassword") - legacy
        UserDefaults.standard.set(userPassword, forKey: "userPassword")
        
        //UserDefaults.standardUserdefaults().synchronize() - legacy
        
        UserDefaults.standard.synchronize()
        
        //Display alert message with confirmation
        
        var myAlert = UIAlertController(title: "Alert", message: "Registration is successful. Thank you!", preferredStyle: UIAlertControllerStyle.alert)
        
        let okAction = UIAlertAction(title: "Ok", style: UIAlertActionStyle.default){ action in
            self.dismiss(animated: true, completion: nil)
        }
        
        myAlert.addAction(okAction)
        self.present(myAlert, animated: true, completion: nil)
        
    }
    
    func displayMyAlertMessage(userMessage: String)
    {
        var myAlert = UIAlertController(title: "Alert", message: userMessage, preferredStyle: UIAlertControllerStyle.alert)
        
        let okAction = UIAlertAction(title: "Ok", style: UIAlertActionStyle.default, handler: nil)
        
        myAlert.addAction(okAction)
        
        self.present(myAlert, animated: true,completion: nil)
    }
    
    @IBAction func backButton(_ sender: UIButton) {
        self.dismiss(animated: false, completion: nil)
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
