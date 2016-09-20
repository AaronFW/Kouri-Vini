//
//  LearningTableViewController.swift
//  Kouri-Vini
//
//  Created by Aaron Walton on 6/20/16.
//  Copyright © 2016 Aaron Walton. All rights reserved.
//

import UIKit

class LearningTableViewController: UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()

      
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
       
    }

    
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        switch indexPath.row {
        case 0:
            if indexPath.section == 2 {
                UIApplication.sharedApplication().openURL(NSURL(string: "http://www.louisianacreoledictionary.com/mobile/")!)
            }
            
            if indexPath.section == 1 {
                UIApplication.sharedApplication().openURL(NSURL(string: "http://www.memrise.com/course/1046984/kouri-vini-louisiana-creole-language/")!)
            }
        case 1:
            if indexPath.section == 2 {
                UIApplication.sharedApplication().openURL(NSURL(string: "http://www.mylhcv.com")!)
            }
        case 2:
            if indexPath.section == 2 {
                UIApplication.sharedApplication().openURL(NSURL(string: "https://www.youtube.com/user/criollokid80/videos")!)
            }
        default :
            break
            
        }
      
    }
}
