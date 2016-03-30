//
//  MusicView.swift
//  RightMusic
//
//  Created by Guilherme Marques on 3/30/16.
//  Copyright © 2016 Guilherme Marques. All rights reserved.
//

import UIKit

class MusicView: UIView {
    
    var albumImage: UIImage!
    var labelMusicName: UILabel!, labelArtistName: UILabel!
    var youtubeMusic: UIWebView!

    init (view: UIView, parent: UIWebViewDelegate) {
        super.init(frame: view.frame)
        
        // MARK: WebView
        
        let cGRectYouTube: CGRect! = CGRectMake(view.frame.width*0.0234375, view.frame.height*0.338908, view.frame.width*0.973437, view.frame.height*0.0625 + 100)
        
        youtubeMusic = UIWebView(frame: cGRectYouTube)
        youtubeMusic.loadRequest(NSURLRequest(URL: NSURL(string: "https://www.youtube.com/embed/-VMFdpdDYYA")!))
        youtubeMusic.delegate = parent
        view.addSubview(youtubeMusic)
    
    }
    
    required init(coder aDecoder: NSCoder) {
        
        fatalError("init(coder:) has not been implemented")
        
    }

}
