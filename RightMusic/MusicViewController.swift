//
//  MusicViewController.swift
//  RightMusic
//
//  Created by Guilherme Marques on 3/30/16.
//  Copyright © 2016 Guilherme Marques. All rights reserved.
//

import UIKit
import SafariServices

class MusicViewController: UIViewController, UIWebViewDelegate, UITextViewDelegate {

    var musicView: MusicView!
    var lineNumber = 0
    var music: Music!
    var isFavorite = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = lightBlue
        
        musicView = MusicView(view: view, parent: self)
        let tapRecognizer = UITapGestureRecognizer(target: self, action: #selector(MusicViewController.playTapped))
        musicView.playButton.addGestureRecognizer(tapRecognizer)
        
        let tapRecognizer1 = UITapGestureRecognizer(target: self, action: #selector(MusicViewController.favoriteTapped))
        musicView.favoriteButton.addGestureRecognizer(tapRecognizer1)
        
        musicView.textViewLyrics.delegate = self
        musicView.textViewChords.delegate = self
        musicView.albumImage.image = UIImage(named: music.artist.image)
        musicView.labelMusicName.text = music.title
        musicView.labelArtistName.text = music.artist.name
        

        let bundle = NSBundle.mainBundle()
        let filePath = bundle.pathForResource("MusicList/Someday_Nickelback", ofType: ".txt")
        
        if let aStreamReader = StreamReader(path: filePath!) {
            defer {
                
                aStreamReader.close()
                
            }
            while let line = aStreamReader.nextLine() {
                if lineNumber%2 == 0 {
                    
                    musicView.textViewChords.text = musicView.textViewChords.text + line + "\n\n"
                    lineNumber += 1
                    
                }
                else {
                    
                    musicView.textViewLyrics.text = musicView.textViewLyrics.text + "\n" + line + "\n"
                    lineNumber += 1
                    
                }
            }
        }
        
        musicView.textViewChords.text = musicView.textViewChords.text.stringByReplacingOccurrencesOfString("\\", withString: " ", options: NSStringCompareOptions.LiteralSearch, range: nil)
        musicView.textViewLyrics.text = musicView.textViewLyrics.text.stringByReplacingOccurrencesOfString("\\", withString: " ", options: NSStringCompareOptions.LiteralSearch, range: nil)
    }
    
    func playTapped() {
        
        let safariVC = SFSafariViewController(URL: NSURL(string: "https://www.youtube.com/embed/-VMFdpdDYYA")!)
        self.presentViewController(safariVC, animated: true, completion: nil)
        
    }
    
    func favoriteTapped() {
        if !isFavorite {
            musicView.favoriteButton.image = UIImage(named: "favoritePressed")
            userList[loggedUser].playlist[0].music.append(self.music)
            print(userList[loggedUser].playlist[0].music.append(self.music))
            isFavorite = true
            print(userList[loggedUser].playlist[0].music.count)

        } else {
            musicView.favoriteButton.image = UIImage(named: "favorite")
            userList[loggedUser].playlist[0].music.removeLast()
        }
        
    }
    
    func webView(webView: UIWebView, shouldStartLoadWithRequest request: NSURLRequest, navigationType: UIWebViewNavigationType) -> Bool {
        
        return true
        
    }
    
    func webView(webView: UIWebView, didFailLoadWithError error: NSError?) {
        
        print("Error")
        
    }
    
    func scrollViewDidScroll(scrollView: UIScrollView) {
        if scrollView == musicView.textViewChords {
            
            musicView.textViewLyrics.contentOffset = musicView.textViewChords.contentOffset
            
        }
        else {
            
            musicView.textViewChords.contentOffset = musicView.textViewLyrics.contentOffset
            
        }
    }

}
