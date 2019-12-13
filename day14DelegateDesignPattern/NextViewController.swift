//
//  NextViewController.swift
//  day14DelegateDesignPattern
//
//  Created by Felix-ITS016 on 12/12/19.
//  Copyright © 2019 Felix. All rights reserved.
//

import UIKit
protocol UpdateLabelTextDelegate
   {
    func UpdateLabelText(withText: String)

   }

class NextViewController: UIViewController
{
  
    var delegate:UpdateLabelTextDelegate?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var textField: UITextField!
    
    @IBAction func sendButton(_ sender: UIButton) {
        delegate?.UpdateLabelText(withText: textField.text!)
        dismiss(animated: true, completion: nil)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
