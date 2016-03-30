//
//  MusicViewController.swift
//  RightMusic
//
//  Created by Guilherme Marques on 3/30/16.
//  Copyright © 2016 Guilherme Marques. All rights reserved.
//

import UIKit

class MusicViewController: UIViewController, UIWebViewDelegate {

    var musicView: MusicView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        musicView = MusicView(view: view, parent: self)
        
    }
    
    func webView(webView: UIWebView, shouldStartLoadWithRequest request: NSURLRequest, navigationType: UIWebViewNavigationType) -> Bool {
        return true
    }
    func webView(webView: UIWebView, didFailLoadWithError error: NSError?) {
        print("Error")
    }
}
