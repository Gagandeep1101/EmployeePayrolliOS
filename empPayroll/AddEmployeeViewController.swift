//
//  AddEmployeeViewController.swift
//  empPayroll
//
//  Created by MacStudent on 2018-08-17.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import UIKit

class AddEmployeeViewController: UIViewController {
    @IBOutlet weak var txtEmpId: UITextField!
    @IBOutlet weak var txtEmpName: UITextField!
    @IBOutlet weak var txtEmpAge: UITextField!
    @IBOutlet weak var segVehicle: UISegmentedControl!
    @IBOutlet weak var segVehicleType: UISegmentedControl!
    
    @IBOutlet weak var txtMColor: UITextField!
    @IBOutlet weak var txtMRegPlate: UITextField!
    @IBOutlet weak var txtMmake: UITextField!
    @IBOutlet weak var txtMinsurance: UITextField!
    
    @IBOutlet weak var viewCar: UIView!
    @IBOutlet weak var txtCcolor: UITextField!
    @IBOutlet weak var txtCinsurance: UITextField!
    @IBOutlet weak var txtCregNo: UITextField!
    @IBOutlet weak var txtCmaker: UITextField!
    @IBOutlet weak var txtCtransmission: UITextField!
    
    @IBOutlet weak var segEmpType: UISegmentedControl!
    
    @IBOutlet weak var viewFullTime: UIView!
    @IBOutlet weak var txtFTsalary: UITextField!
    @IBOutlet weak var txtFTbonus: UITextField!
    
    @IBOutlet weak var viewIntern: UIView!
    @IBOutlet weak var txtInternSchool: UITextField!
    @IBOutlet weak var txtInternStipened: UITextField!
    
    
    @IBOutlet weak var viewCommission: UIView!
    @IBOutlet weak var txtComHrsWorked: UITextField!
    @IBOutlet weak var txtComPercent: UITextField!
    @IBOutlet weak var txtComRate: UITextField!
    
    @IBOutlet weak var viewFixed: UIView!
    @IBOutlet weak var txtFixedRate: UITextField!
    @IBOutlet weak var txtFixedHrsWorked: UITextField!
    @IBOutlet weak var txtFixedAmt: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func btnCreate(_ sender: UIButton) {
        
        let empId = txtEmpId.text
        let empName = txtEmpName.text
        let empAge = txtEmpAge.text
        let <#name#> = <#value#>
        
        
        
        
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
