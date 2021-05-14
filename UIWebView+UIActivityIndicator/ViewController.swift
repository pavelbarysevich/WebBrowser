//
//  ViewController.swift
//  UIWebView+UIActivityIndicator
//
//  Created by Павел Борисевич on 14.05.21.
//

import UIKit
import WebKit

class ViewController: UIViewController {
    @IBOutlet weak var webView: WKWebView!
    @IBOutlet weak var goNextItem: UIBarButtonItem!
    @IBOutlet weak var goBackItem: UIBarButtonItem!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        urlShare()
        
        }
    
    //urlsShare
    func urlShare(){
        if let myUrl = URL(string: "https://www.google.com"){
        let resuest = URLRequest(url: myUrl)
            webView.load(resuest)
        }
    }
    
    //MARK: Action
    @IBAction func goBackAction(_ sender: Any) {
        if webView.canGoBack{
            webView.goBack()
        }
        
    }
    @IBAction func goNextAction(_ sender: Any) {
        if webView.canGoForward{
            webView.goForward()
        }
    }
    
    @IBAction func refreshAction(_ sender: Any) {
        webView.reload()
    }
    
    @IBAction func houseAction(_ sender: Any) {
        urlShare()
    }
    
}


