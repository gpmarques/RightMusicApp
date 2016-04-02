//
//  MusicalTasteCollectionViewCell.swift
//  RightMusic
//
//  Created by Guilherme Marques on 4/2/16.
//  Copyright © 2016 Guilherme Marques. All rights reserved.
//

import UIKit
import CoreText

class MusicalTasteCollectionViewCell: UICollectionViewCell {

    var genreImage: UIImageView!, checkImage: UIImageView!
    var genreName: THLabel!
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        // MARK: Genre Image
        
        let cGRectGenreImage: CGRect! = CGRectMake(self.contentView.frame.width*0.0, self.contentView.frame.height*0.0, self.contentView.frame.width, self.contentView.frame.height)
        
        genreImage = UIImageView(frame: cGRectGenreImage)
        genreImage.contentMode = UIViewContentMode.ScaleAspectFit

        // MARK: Genre Name
        
        let cGRectGenreName: CGRect! = CGRectMake(self.contentView.frame.width*0.0210526316, self.contentView.frame.height*0.0526315789, self.contentView.frame.width*0.7894736842, self.contentView.frame.height*0.1578947368)
        
        genreName = THLabel(frame: cGRectGenreName)
        genreName.textColor = UIColor.whiteColor()
        genreName.strokeColor = UIColor.blackColor()
        genreName.strokeSize = 1.0
        genreName.strokePosition = .Outside
        genreName.font = UIFont(name: "Arial", size: 12.0)
        
        
        // MARK: checkImage
        
        let cGRectCheckImage: CGRect! = CGRectMake(self.contentView.frame.width*0.7368421053, self.contentView.frame.height*0.0526315789, self.contentView.frame.width*0.2105263158, self.contentView.frame.height*0.2105263158)
        
        checkImage = UIImageView(frame: cGRectCheckImage)
//        checkImage.contentMode = UIViewContentMode.ScaleAspectFit
        checkImage.userInteractionEnabled = true
        
        
        // MARK: addSubView
        
        self.contentView.addSubview(genreImage)
        self.contentView.addSubview(checkImage)
        self.contentView.addSubview(genreName)
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
}
