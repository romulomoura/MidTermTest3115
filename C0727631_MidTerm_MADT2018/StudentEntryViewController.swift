//
//  StudentEntryViewController.swift
//  C0727631_MidTerm_MADT2018
//
//  Created by MacStudent on 2018-02-28.
//  Copyright © 2018 MADT - Romulo Moura. All rights reserved.
//

import UIKit

class StudentEntryViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    
   

    @IBOutlet weak var dateBirthPick: UIDatePicker!
    
    @IBOutlet weak var idTxt: UITextField!
    
    @IBOutlet weak var nameTxt: UITextField!
    
    @IBOutlet weak var emailTxt: UITextField!
    
    @IBOutlet weak var genderSeg: UISegmentedControl!
    
    @IBOutlet weak var pickCourseView: UIPickerView!
    
    var courseNameList = ["MADT", "MODT", "CSD", "WADT"]
    var std = Student()
    var rowcourse: Int!
    var namecourse:String!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        pickCourseView.delegate = self
        pickCourseView.dataSource = self
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return courseNameList.count
        
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
       namecourse =  courseNameList[row]
       return namecourse
    }
    
    
    @IBAction func logoutBtnClick(_ sender: UIButton) {
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        let stdViewController = storyBoard.instantiateViewController(withIdentifier: "loginSTD") as! LoginViewController
        self.present(stdViewController, animated: true, completion: nil)
    
    }
    
    
    
    
    
    @IBAction func genderSeg(_ sender: UISegmentedControl)
    {
        
        if sender.selectedSegmentIndex == 0{
           std.studentGender = "Male"
           
        }else  if sender.selectedSegmentIndex == 1{
            std.studentGender = "Female"
        
        }
        
    }
    
    
    @IBAction func saveBtnClick(_ sender: UIButton) {
        
                std.studentId = Int(idTxt.text!)
        std.studentName = nameTxt.text!
        std.studentEmail = emailTxt.text!
        std.studentCourse = namecourse
        
        let stdFlag = Student.addStudent(std: std)
        if stdFlag == true
        {
            print("Student Data Saved")
            
            let storyBoard = UIStoryboard(name: "Main", bundle: nil)
            let stdViewController = storyBoard.instantiateViewController(withIdentifier: "studentRESULT") as! StudentEntryViewController
            self.present(stdViewController, animated: true, completion: nil)
            
        }
        else
        {
            let alert = UIAlertController(title: "Invalid Data", message: "Duplicate Data", preferredStyle: UIAlertControllerStyle.alert);
            let actionOk = UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil);
            alert.addAction(actionOk);
        }
    }
    
    @IBAction func birthDatePick(_ sender: UIDatePicker) {
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd-MM-yyyy"
        let formattedDate = dateFormatter.string(from: sender.date)
        std.studentBirthDate = String(formattedDate)
        
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


