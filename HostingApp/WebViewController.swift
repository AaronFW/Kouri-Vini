//
//  WebViewController.swift
//  Kouri-Vini
//
//  Created by Aaron Walton on 6/20/16.
//  Copyright © 2016 Aaron Walton. All rights reserved.
//

import UIKit
import WebKit

class WebViewController: UIViewController, WKNavigationDelegate {
    
    var webView: WKWebView!
    
    var selection: AnyObject? {
        didSet {
            // Update the view.
         //   self.configureView()
        }
    }
    
  /*  func configureView() {
        // Update the user interface for the detail item.
        if let detail = self.selection {
                navigationItem.title = detail.description
                
                print("yes", detail.description)
        }
    }*/
    
    override func loadView() {
        webView = WKWebView()
        webView.navigationDelegate = self
        view = webView
        switch selection?.description {
        case "0"? :
         let url = NSURL(string: "http://www.louisianacreoledictionary.com/mobile/")!
         webView.loadRequest(NSURLRequest(URL: url))
         webView.allowsBackForwardNavigationGestures = true
            navigationItem.title = "En -> KV Dictionary"
        case "1"? :
            UIApplication.sharedApplication().openURL(NSURL(string: "http://www.mylhcv.com")!)
            
        default:
            let url = NSURL(string: "https://www.google.com")!
            webView.loadRequest(NSURLRequest(URL: url))
            webView.allowsBackForwardNavigationGestures = true
        }
        
        
        
              //  let url = NSURL(string: "http://www.louisianacreoledictionary.com/mobile/")!
        
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
