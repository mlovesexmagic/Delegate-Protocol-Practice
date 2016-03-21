//
//  FirstViewController.swift
//  Practice_Protocol_Delegate
//
//  Created by Zhipeng Mei on 3/20/16.
//  Copyright © 2016 Zhipeng Mei. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController, DataEnteredDelegate {

    @IBOutlet weak var textLabel: UILabel!
    
    func userDidEnterData(info: NSString) {
        textLabel.text = info as String
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if(segue.identifier == "showSecondVC"){
            let secondVC:SecondViewController = segue.destinationViewController as! SecondViewController
            secondVC.delegate = self
        }
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
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
