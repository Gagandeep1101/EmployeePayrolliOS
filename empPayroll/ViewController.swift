//
//  ViewController.swift
//  empPayroll
//
//  Created by MacStudent on 2018-08-14.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    override func viewDidAppear(_ animated: Bool) {
        let isUserLoggedIn = UserDefaults.standard.bool(forKey: "isUserLoggedIn")
        
        if(isUserLoggedIn)
        {
        
      // self.performSegue(withIdentifier: "loginView", sender: self)
    }
    }
    @IBAction func btnLogout(_ sender: UIButton) {
        UserDefaults.standard.set(false, forKey: "isUserLoggedIn")
        UserDefaults.standard.synchronize()
        
        //self.dismiss(animated: true, completion: nil)
        //self.performSegue(withIdentifier: "loginView", sender: self)
        
    }
}

