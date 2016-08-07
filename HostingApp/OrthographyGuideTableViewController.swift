//
//  OrthographyGuideTableViewController.swift
//  Kouri-Vini
//
//  Created by Aaron Walton on 7/8/16.
//  Copyright © 2016 Aaron Walton. All rights reserved.
//

import UIKit

class OrthographyGuideTableViewController: UITableViewController {

    var detailViewController: SectionTableViewController? = nil
    var objects = [String]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        loadSections()
    }
    
    override func viewWillAppear(animated: Bool) {
       
        super.viewWillAppear(animated)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "showDetail" {
            if let indexPath = self.tableView.indexPathForSelectedRow {
                let object = objects[indexPath.row]
                let controller = (segue.destinationViewController as! UINavigationController).topViewController as! SectionTableViewController
                controller.detailItem = object
                controller.navigationItem.leftBarButtonItem = self.splitViewController?.displayModeButtonItem()
                controller.navigationItem.leftItemsSupplementBackButton = true
            }
        }
    }
    
    // MARK: - Table View
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return objects.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath)
        let object = objects[indexPath.row]
        cell.textLabel!.text = object
        return cell
    }
    
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    
    func loadSections() {
        if let sectionsFile = NSBundle.mainBundle().pathForResource("OrthographySections", ofType: "txt") {
            if let sections = try? String(contentsOfFile: sectionsFile, usedEncoding: nil) {
            let lines = sections.componentsSeparatedByString("\n")
            for (index, line) in lines.enumerate() {
                
                objects.append(line)
                print(objects.count)
                
                
            }
        }
        
    }
}
}