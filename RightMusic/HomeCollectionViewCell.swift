//
//  HomeCollectionViewCell.swift
//  RightMusic
//
//  Created by Guilherme Marques on 4/4/16.
//  Copyright © 2016 Guilherme Marques. All rights reserved.
//

import UIKit

class HomeCollectionViewCell: UICollectionViewCell {
    
    var albumImage: UIImageView!
    var musicNameLabel: THLabel!, artistNameLabel: THLabel!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        // MARK: Album Image
        
        let cGRectAlbumImage: CGRect! = CGRectMake(self.contentView.frame.width*0.0, self.contentView.frame.height*0.0, self.contentView.frame.width, self.contentView.frame.height)
        albumImage = UIImageView(frame: cGRectAlbumImage)
        albumImage.contentMode = .ScaleAspectFit
        
        // MARK: musicNameLabel
        
        let cGRectMusicNameLabel: CGRect! = CGRectMake(self.contentView.frame.width*0.0083333333, self.contentView.frame.height*0.75, self.contentView.frame.width*1.0, self.contentView.frame.height*0.1166666667)
        musicNameLabel = THLabel(frame: cGRectMusicNameLabel)
        musicNameLabel.textColor = UIColor.whiteColor()
        musicNameLabel.strokeColor = UIColor.blackColor()
        musicNameLabel.strokeSize = 0.5
        musicNameLabel.strokePosition = .Outside
        musicNameLabel.font = UIFont(name: "Arial", size: 12.0)
        
        // MARK: artistNameLabel
        
        let cGRectArtistNameLabel: CGRect! = CGRectMake(self.contentView.frame.width*0.0083333333, self.contentView.frame.height*0.875, self.contentView.frame.width*1.0, self.contentView.frame.height*0.1166666667)
        artistNameLabel = THLabel(frame: cGRectArtistNameLabel)
        artistNameLabel.textColor = UIColor.whiteColor()
        artistNameLabel.strokeColor = UIColor.blackColor()
        artistNameLabel.strokeSize = 0.5
        artistNameLabel.strokePosition = .Outside
        artistNameLabel.font = UIFont(name: "Arial", size: 12.0)
        
        // MARK: addSubView
        
        self.contentView.addSubview(albumImage)
        self.contentView.addSubview(musicNameLabel)
        self.contentView.addSubview(artistNameLabel)
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
