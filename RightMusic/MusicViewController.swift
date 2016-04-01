//
//  MusicViewController.swift
//  RightMusic
//
//  Created by Guilherme Marques on 3/30/16.
//  Copyright © 2016 Guilherme Marques. All rights reserved.
//

import UIKit
import SafariServices

class MusicViewController: UIViewController, UIWebViewDelegate {

    var musicView: MusicView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = lightBlue
        
        musicView = MusicView(view: view, parent: self)
        let tapRecognizer = UITapGestureRecognizer(target: self, action: #selector(MusicViewController.playTapped))
        musicView.playButton.addGestureRecognizer(tapRecognizer)
        
        
    }
    
    func playTapped() {
        
        let safariVC = SFSafariViewController(URL: NSURL(string: "https://www.youtube.com/embed/-VMFdpdDYYA")!)
        self.presentViewController(safariVC, animated: true, completion: nil)
        
    }
    
    func webView(webView: UIWebView, shouldStartLoadWithRequest request: NSURLRequest, navigationType: UIWebViewNavigationType) -> Bool {
        
        return true
        
    }
    
    func webView(webView: UIWebView, didFailLoadWithError error: NSError?) {
        
        print("Error")
        
    }

}
