//
//  ViewController.swift
//  Homework #6 Homework 6
//
//  Created by Kole Reiser on 4/24/23.
//
    import UIKit
    import WebKit

    class ViewController: UIViewController, WKUIDelegate {
        
        var webView: WKWebView!
        
        override func loadView() {
            let webConfiguration = WKWebViewConfiguration()
            webView = WKWebView(frame: .zero, configuration: webConfiguration)
            webView.uiDelegate = self
            view = webView
        }

        override func viewDidLoad() {
            super.viewDidLoad()
            
            let myURL = URL(string:"https://www.apple.com")
            let myRequest = URLRequest(url: myURL!)
            webView.load(myRequest)
        }
    }
