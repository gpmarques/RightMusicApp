//
//  MusicalTasteView.swift
//  RightMusic
//
//  Created by Guilherme Marques on 4/2/16.
//  Copyright © 2016 Guilherme Marques. All rights reserved.
//

import UIKit

class MusicalTasteView: UIView {

    var musicalGenresCollection: UICollectionView!
    var questionLabel: UILabel!
    
    init (view: UIView, parent: MusicalTasteViewController) {
        super.init(frame: view.frame)
        
        // MARK: Collection View
        
        let layout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
        layout.sectionInset = UIEdgeInsets(top: 1, left: 5, bottom: 1, right: 5)
        layout.itemSize = CGSize(width: 95, height: 95)
        layout.minimumLineSpacing = 10
        
        let cGRectGenresCollection: CGRect! = CGRectMake(view.frame.width*0.00625, view.frame.height*0.18838, view.frame.width*0.9875, view.frame.height*1.34375)
        
        musicalGenresCollection = UICollectionView(frame: cGRectGenresCollection, collectionViewLayout: layout)
        musicalGenresCollection.dataSource = parent
        musicalGenresCollection.delegate = parent
        musicalGenresCollection.registerClass(MusicalTasteCollectionViewCell.self, forCellWithReuseIdentifier: "cell")
        musicalGenresCollection.backgroundColor = tabAndNavigationBlue
        view.backgroundColor = tabAndNavigationBlue
        
        // MARK: Question Label
        
        let cGRectQuestionLabel: CGRect! = CGRectMake(view.frame.width*0.117188, view.frame.height*0.0792254, view.frame.width*0.828125, view.frame.height*0.071875)
        
        questionLabel = UILabel(frame: cGRectQuestionLabel)
        questionLabel.textColor = UIColor.whiteColor()
        questionLabel.font = UIFont.systemFontOfSize(18.0)
        questionLabel.text = "What music genre do you like?"
        
        
        view.addSubview(questionLabel)
        view.addSubview(musicalGenresCollection)
        
    
    }
    
    required init(coder aDecoder: NSCoder) {
        
        fatalError("init(coder:) has not been implemented")
        
    }
    

}
