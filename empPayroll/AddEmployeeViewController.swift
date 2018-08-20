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
        
    
        
    }
    
    @IBAction func segVehicle(_ sender: UISegmentedControl) {
        if segVehicle.selectedSegmentIndex == 0 {
            
            if segVehicleType.selectedSegmentIndex == 0 {
                
                print("Motorcycle")
                txtMColor.isHidden = false
                txtMRegPlate.isHidden = false
                txtMmake.isHidden = false
                txtMinsurance.isHidden = false
                viewCar.isHidden = true
             
                
            } else if segVehicleType.selectedSegmentIndex == 1 {
                
               txtCcolor.isHidden = false
                txtCinsurance.isHidden = false
                txtCmaker.isHidden = false
                txtCregNo.isHidden = false
                txtCtransmission.isHidden = false
                viewCar.isHidden = false
                print("Car")
            }
        
        }else
    {
        viewCar.isHidden = true
    print("Employee has no vehicle")
    }
        
    }
    
    @IBAction func segEmpType(_ sender: UISegmentedControl) {
        if segEmpType.selectedSegmentIndex == 0 {
            viewFullTime.isHidden = false
            txtFTsalary.isHidden = false
            txtFTbonus.isHidden = false
            viewIntern.isHidden = true
            viewCommission.isHidden = true
            viewFixed.isHidden = true
            print("Emp is Full Time")
            
        }else if segEmpType.selectedSegmentIndex == 1 {
            viewIntern.isHidden = false
            txtInternSchool.isHidden = false
            txtInternStipened.isHidden = false
            viewFullTime.isHidden = true
            viewCommission.isHidden = true
            viewFixed.isHidden = true
            print("Emp is Intern")
            
        }else if segEmpType.selectedSegmentIndex == 2 {
            viewCommission.isHidden = false
            txtComRate.isHidden = false
            txtComPercent.isHidden = false
            txtComHrsWorked.isHidden = false
            viewFullTime.isHidden = true
            viewIntern.isHidden = true
            viewFixed.isHidden = true
            print("Emp is Comission Based Part Time")
            
        }else if segEmpType.selectedSegmentIndex == 3 {
            viewFixed.isHidden = false
            txtFixedAmt.isHidden = false
            txtFixedRate.isHidden = false
            txtFixedHrsWorked.isHidden = false
            viewFullTime.isHidden = true
            viewIntern.isHidden = true
            viewCommission.isHidden = true
            print("Emp is Fixed Based Part Time")
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

}
