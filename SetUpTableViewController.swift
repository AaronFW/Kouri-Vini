//
//  SetUpTableViewController.swift
//  Kouri-Vini
//
//  Created by Aaron Walton on 9/6/16.
//  Copyright © 2016 Apple. All rights reserved.
//

import UIKit

class SetUpTableViewController: UITableViewController {
    
    
    
    let someText:String = "Check out this app that enables a Kouri-Vini Keyboard!"  // Pass a message to be shared.
    let google:URL = URL(string:"https://keyboardsupport.wordpress.com/2016/09/10/kouri-vini-app/")! // Pass a link to be shared.

   @IBAction func shareTapped(_ sender: AnyObject) {
        let vc = UIActivityViewController(activityItems: [someText, google], applicationActivities: [])
        vc.popoverPresentationController?.barButtonItem = navigationItem.rightBarButtonItem
        present(vc, animated: true, completion: nil)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
