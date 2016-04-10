//
//  ViewController.swift
//  Dictionary
//
//  Created by Madison on 4/8/16.
//  Copyright © 2016 Madison. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var dictionary = Dictionary()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBOutlet weak var result: UITextView!
    @IBOutlet weak var search: UITextView!

    @IBAction func getVal(sender: UIButton) {
        var text = search.text!
        //use dfs to auto correcting
  //      print(text)
        
    }
    
 
}

