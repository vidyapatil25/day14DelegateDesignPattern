//
//  ViewController.swift
//  day14DelegateDesignPattern
//
//  Created by Felix-ITS016 on 12/12/19.
//  Copyright © 2019 Felix. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UpdateLabelTextDelegate {
    func UpdateLabelText(withText: String)
    {
        label.text = withText
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let next = segue.destination as!NextViewController
        next.delegate = self
    }

    @IBOutlet weak var label: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

