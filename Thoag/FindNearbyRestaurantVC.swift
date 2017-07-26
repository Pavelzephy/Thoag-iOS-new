//
//  FindNearbyRestaurantVC.swift
//  Thoag
//
//  Created by Ashraf Ul Alam Tusher on 7/17/17.
//  Copyright © 2017 Ashraf Ul Alam Tusher. All rights reserved.
//

import UIKit
import DateTimePicker

class FindNearbyRestaurantVC: UIViewController {

    
    //connections
    @IBAction func lctTapped(_ sender: Any) {
    }
    
    @IBAction func CsnTapped(_ sender: Any) {
    }
    
    @IBAction func dtimeTapped(_ sender: Any) {
        print("hello world")
        let picker = DateTimePicker.show()
        picker.highlightColor = UIColor(red: 255.0/255.0, green: 138.0/255.0, blue: 138.0/255.0, alpha: 1)
        picker.completionHandler = { date in
            // do something after tapping done
        }
    }
    
    @IBAction func findrestaurantTapped(_ sender: Any) {
        
        if isComingfromRrestaurantVC == true {
        
            self.navigationController?.popViewController(animated: true)
        
        }else{
        

            let vc = self.storyboard?.instantiateViewController(withIdentifier: "MaintabBarcontroller") as! MaintabBarcontroller;
            self.present(vc, animated: true, completion: nil)
        }
        

        
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        isComingfromRrestaurantVC = false
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

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
