//
//  SecondViewController.swift
//  Practice_Protocol_Delegate
//
//  Created by Zhipeng Mei on 3/20/16.
//  Copyright © 2016 Zhipeng Mei. All rights reserved.
//

import UIKit

protocol DataEnteredDelegate{
    func userDidEnterData(info: NSString)
}

class SecondViewController: UIViewController {

    @IBOutlet weak var dataTextField: UITextField!
    var delegate: DataEnteredDelegate!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func onSendBtn(sender: AnyObject) {
        if (delegate != nil) {
            let information = dataTextField.text
            delegate?.userDidEnterData(information!)
            self.navigationController?.popViewControllerAnimated(true)
        }
        
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
