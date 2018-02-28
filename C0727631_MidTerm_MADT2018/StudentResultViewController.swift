//
//  StudentResultViewController.swift
//  C0727631_MidTerm_MADT2018
//
//  Created by MacStudent on 2018-02-28.
//  Copyright © 2018 MADT - Romulo Moura. All rights reserved.
//

import UIKit

class StudentResultViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func logoutClick(_ sender: UIButton) {
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        let stdViewController = storyBoard.instantiateViewController(withIdentifier: "loginSTD") as! LoginViewController
        self.present(stdViewController, animated: true, completion: nil)
        
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
