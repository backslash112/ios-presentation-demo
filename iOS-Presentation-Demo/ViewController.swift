//
//  ViewController.swift
//  iOS-Presentation-Demo
//
//  Created by crossmo/yangcun on 14/12/26.
//  Copyright (c) 2014年 backslash112. All rights reserved.
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
//    @IBAction func dismiss(segue: UIStoryboard) {
//        self.dismissViewControllerAnimated(true, completion: nil)
//    }
    
    @IBAction func dismiss(segue: UIStoryboardSegue) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }

}

