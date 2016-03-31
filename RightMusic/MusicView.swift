//
//  MusicView.swift
//  RightMusic
//
//  Created by Guilherme Marques on 3/30/16.
//  Copyright © 2016 Guilherme Marques. All rights reserved.
//

import UIKit
import SafariServices

class MusicView: UIView {
    
    var albumImage: UIImageView!, playButton: UIImageView!

    var labelMusicName: UILabel!, labelArtistName: UILabel!
    var youtubeMusic: UIWebView!
    var toneButton: UIButton!, instrumentButton: UIButton!
    
    init (view: UIView, parent: MusicViewController) {
        super.init(frame: view.frame)
        
        // MARK: playButton
        
        let cGRectPlayButton: CGRect! = CGRectMake(view.frame.width*0.0546875, view.frame.height*0.40493, view.frame.width*0.0625, view.frame.height*0.0625)
        
        playButton = UIImageView(frame: cGRectPlayButton)
        playButton.image = UIImage(named: "play")
        
        playButton.userInteractionEnabled = true
        
        // MARK: WebView
        
        let cGRectYouTube: CGRect! = CGRectMake(view.frame.width*0.0, view.frame.height*0.387324, view.frame.width*1.0, view.frame.height*0.171875)
        
        youtubeMusic = UIWebView(frame: cGRectYouTube)
        youtubeMusic.loadRequest(NSURLRequest(URL: NSURL(string: "https://www.youtube.com/embed/-VMFdpdDYYA")!))
        youtubeMusic.delegate = parent
        
        // MARK: AlbumImage
        
        let cGRectAlbumImage: CGRect! = CGRectMake(view.frame.width*0.053125, view.frame.height*0.0566901,view.frame.width*0.28125, view.frame.height*0.1875 - 10)
        
        albumImage = UIImageView(frame: cGRectAlbumImage)
        albumImage.image = UIImage(named: "nickelback")

        // MARK: labelMusicName
        
        let cGRectMusicName: CGRect! = CGRectMake(view.frame.width*0.375, view.frame.height*0.0704225, view.frame.width*0.640625, view.frame.height*0.075)
        
        labelMusicName = UILabel(frame: cGRectMusicName)
        labelMusicName.text = "Someday"
        labelMusicName.textColor = tabAndNavigationBlue
        
        // MARK: labelArtistName
        
        let cGRectArtistName: CGRect! = CGRectMake(view.frame.width*0.375, view.frame.height*0.114437, view.frame.width*0.640625, view.frame.height*0.071875)
        
        labelArtistName = UILabel(frame: cGRectArtistName)
        labelArtistName.text = "Nickelback"
        labelArtistName.textColor = tabAndNavigationBlue
        
        // MARK: Tone Button
        
        let cGRectToneButton: CGRect! = CGRectMake(view.frame.width*0.01875, view.frame.height*0.241197, view.frame.width*0.46875, view.frame.height*0.078125)
        
        toneButton = UIButton(frame: cGRectToneButton)
        toneButton.setTitleColor(tabAndNavigationBlue, forState: .Normal)
        toneButton.setTitle("Tom:", forState: .Normal)
        toneButton.backgroundColor = lightBlue
        toneButton.layer.borderColor = tabAndNavigationBlue.CGColor
        toneButton.layer.borderWidth = 1.0
        
        // MARK: Instrument Button
        
        let cGRectInstrument: CGRect! = CGRectMake(view.frame.width*0.5125, view.frame.height*0.241197, view.frame.width*0.46875, view.frame.height*0.078125)
        
        instrumentButton = UIButton(frame: cGRectInstrument)
        instrumentButton.setTitleColor(tabAndNavigationBlue, forState: .Normal)
        instrumentButton.setTitle("Violão", forState: .Normal)
        instrumentButton.backgroundColor = lightBlue
        instrumentButton.layer.borderColor = tabAndNavigationBlue.CGColor
        instrumentButton.layer.borderWidth = 1.0
        
        
        // MARK: addSubViews
        
        //view.addSubview(youtubeMusic)
        view.addSubview(playButton)
        view.addSubview(albumImage)
        view.addSubview(labelMusicName)
        view.addSubview(labelArtistName)
        view.addSubview(toneButton)
        view.addSubview(instrumentButton)
        
    }
    

    
    required init(coder aDecoder: NSCoder) {
        
        fatalError("init(coder:) has not been implemented")
        
    }

}
