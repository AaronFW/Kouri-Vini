//
//  SectionViewController.swift
//  Kouri-Vini
//
//  Created by Aaron Walton on 8/23/16.
//  Copyright © 2016 Apple. All rights reserved.
//

import UIKit

extension UILabel {
    func setHTMLFromString(text: String) {
        let modifiedFont = NSString(format:"<span style=\"font-family:Helvetica Neue; font-size: \(self.font!.pointSize)\">%@</span>", text) as String
        
        let attrStr = try! NSAttributedString(
            data: modifiedFont.dataUsingEncoding(NSUnicodeStringEncoding, allowLossyConversion: true)!,
            options: [NSDocumentTypeDocumentAttribute: NSHTMLTextDocumentType, NSCharacterEncodingDocumentAttribute: NSUTF8StringEncoding],
            documentAttributes: nil)
        
        self.attributedText = attrStr
    }
}

class SectionViewController: UIViewController {

    
    //MARK: Properties 
    var labels = [String]()
    @IBOutlet weak var textScroll: UIScrollView!
    
    var detailItem: AnyObject? {
        didSet {
            // Update the view.
            self.configureView()
        }
    }
    
    func configureView() {
        // Update the user interface for the detail item.
        if let detail = self.detailItem {
            if self.textScroll != nil {
                navigationItem.title = detail.description
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.configureView()
        
        
        // The following creates a ScrollView, takes the text for the section from an file, divides it, and puts it in labels. Currently, this code is working and working relatively well.
        
        let sv = UIScrollView(frame: self.view.bounds)
        sv.autoresizingMask = [.FlexibleWidth, .FlexibleHeight]
        self.view.addSubview(sv)
        sv.backgroundColor = UIColor.whiteColor()
        var y: CGFloat = 10
        let file = detailItem as! String
        navigationItem.title = file
        if let sectionsFile = NSBundle.mainBundle().pathForResource(file, ofType: "txt") {
            if let sectionText = try? String(contentsOfFile: sectionsFile, usedEncoding: nil) {
                let lineMaker = sectionText.stringByReplacingOccurrencesOfString("*", withString: "\n")
                let lines = lineMaker.componentsSeparatedByString("\n")
                for (index, line) in lines.enumerate() {
                    labels.append(line)
            
                    let label = UILabel()
                    label.setHTMLFromString(labels[index])
                    label.sizeToFit()
                    label.numberOfLines = 0
                    label.lineBreakMode = .ByWordWrapping
                    label.frame.origin = CGPointMake(10,y)
                    sv.addSubview(label)
                    label.backgroundColor = UIColor.whiteColor()
                    let desiredLabelWidth = self.view.bounds.size.width - 20
                    let size = label.sizeThatFits(CGSize(width: desiredLabelWidth, height: CGFloat.max))
                    label.frame = CGRect(x: 10, y: y, width: desiredLabelWidth, height: size.height)
                    y += label.bounds.size.height + 10
                    label.autoresizingMask = .FlexibleWidth
                }
            }
            
            var sz = sv.bounds.size
            sz.height = y
            sv.contentSize = sz
            
        }
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
