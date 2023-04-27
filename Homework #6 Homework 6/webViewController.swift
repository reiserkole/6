//
//  webViewController.swift
//  Homework #6 Homework 6
//
//  Created by Kole Reiser on 4/26/23.
//

import UIKit
import WebKit

class webViewController: UIViewController, WKUIDelegate {
    
    var webView: WKWebView!
    
    override func loadView() {
        let webConfiguration = WKWebViewConfiguration()
        webView = WKWebView(frame: .zero, configuration: webConfiguration)
        webView.uiDelegate = self
        view = webView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let myURL = URL(string:"https://www.lrp.usace.army.mil/missions/recreation/lakes/tionesta-lake/")
        let myRequest = URLRequest(url: myURL!)
        webView.load(myRequest)
    }
    
}

