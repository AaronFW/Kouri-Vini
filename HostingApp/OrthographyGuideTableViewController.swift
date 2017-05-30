//
//  OrthographyGuideTableViewController.swift
//  Kouri-Vini
//
//  Created by Aaron Walton on 7/8/16.
//  Copyright © 2016 Aaron Walton. All rights reserved.
//

import UIKit

class OrthographyGuideTableViewController: UITableViewController {

    var objects = [String]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        loadSections()
    }
    
    override func viewWillAppear(_ animated: Bool) {
       
        super.viewWillAppear(animated)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showDetail" {
            if let indexPath = self.tableView.indexPathForSelectedRow {
                let object = objects[indexPath.row]
                let controller = segue.destination as! SectionViewController
                controller.detailItem = object as AnyObject?
                controller.navigationItem.leftBarButtonItem = self.splitViewController?.displayModeButtonItem
                controller.navigationItem.leftItemsSupplementBackButton = true
            }
        }
    }
    
    // MARK: - Table View
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return objects.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        let object = objects[indexPath.row]
        cell.textLabel!.text = object
        return cell
    }
    
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    
    func loadSections() {
        if let sectionsFile:String = Bundle.main.path(forResource: "OrthographySections", ofType: "txt") {
            if let sections = try? NSString(contentsOfFile: sectionsFile, encoding: String.Encoding.utf8.rawValue) {
            let lines = sections.components(separatedBy: "\n")
            for (_, line) in lines.enumerated() {
                
                objects.append(line)
                
                
            }
        }
        
    }


}
}
