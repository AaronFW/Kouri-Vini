//
//  memriseViewController.swift
//  Kouri-Vini
//
//  Created by Aaron Walton on 7/12/16.
//  Copyright © 2016 Aaron Walton. All rights reserved.
//

import UIKit
import WebKit

class memriseViewController: UIViewController, WKNavigationDelegate {

    var webView: WKWebView!
    
    override func loadView() {
        webView = WKWebView()
        webView.navigationDelegate = self
        view = webView
        let url = NSURL(string: "http://www.memrise.com/course/1046984/kouri-vini-louisiana-creole-language/")!
        webView.loadRequest(NSURLRequest(URL: url))
        webView.allowsBackForwardNavigationGestures = true
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
