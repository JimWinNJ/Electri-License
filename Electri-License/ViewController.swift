//
//  ViewController.swift
//  Electri-License
//
//  Created by Jim Witterschein on 3/9/16.
//  Copyright © 2016 State Exam Pass. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController {
    
    @IBOutlet weak var container: UIView!
    var webView: WKWebView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        webView = WKWebView()
        container.addSubview(webView)
        
    }
    
    override func viewDidAppear(animated: Bool) {
        let frame = CGRectMake(0, 0, container.bounds.width, container.bounds.height)
        webView.frame = frame
        
        loadRequest("https://www.stateexampass.com/")
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func loadRequest(urlStr: String) {
        
        let url = NSURL(string: urlStr)!
        let request = NSURLRequest(URL: url)
        webView.loadRequest(request)
    }

    @IBAction func loadStateExamPass(sender: AnyObject) {
        loadRequest("https://www.stateexampass.com/")
    }

    @IBAction func loadFaceBook(sender: AnyObject) {
        loadRequest("https://www.facebook.com/")
    }
}

