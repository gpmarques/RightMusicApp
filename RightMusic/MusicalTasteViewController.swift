//
//  MusicalTasteViewController.swift
//  RightMusic
//
//  Created by Guilherme Marques on 4/2/16.
//  Copyright © 2016 Guilherme Marques. All rights reserved.
//

import UIKit

class MusicalTasteViewController: UIViewController, UICollectionViewDelegateFlowLayout, UICollectionViewDataSource {

    var musicalTasteView: MusicalTasteView!
    let genreImage = [UIImage(named: "rock"), UIImage(named: "sertanejo"), UIImage(named: "samba"), UIImage(named: "bossaNova"), UIImage(named: "forro"), UIImage(named: "blues"), UIImage(named: "country"), UIImage(named: "pop"), UIImage(named: "indie"), UIImage(named: "mpb"), UIImage(named: "eletronic"), UIImage(named: "reggae")]
    let genreName = ["Rock", "Sertanejo", "Samba", "Bossa Nova", "Forró", "Blues", "Country", "Pop", "Indie", "MPB", "Eletronic", "Reggae"]
    var checked =  0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        musicalTasteView = MusicalTasteView(view: view, parent: self)
        musicalTasteView.confirmButton.addTarget(self, action: #selector(MusicalTasteViewController.confirmGenres(_:)), forControlEvents: .TouchUpInside)
        
    }
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 12
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath ) ->UICollectionViewCell{
        
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier("cell", forIndexPath: indexPath)   as! MusicalTasteCollectionViewCell
        cell.layer.borderWidth = 0.0
        cell.layer.cornerRadius = 10.0
        cell.genreImage.image = genreImage[indexPath.row]
        cell.checkImage.image = UIImage(named: "uncheck")
        cell.genreName.text = genreName[indexPath.row]

        cell.layer.borderColor = tabAndNavigationBlue.CGColor
        
        return cell
        
    }
    
    func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath) {
        let cell = collectionView.cellForItemAtIndexPath(indexPath) as! MusicalTasteCollectionViewCell
        
        if cell.checkImage.image!.isEqual(UIImage(named: "uncheck")) {
            
            cell.checkImage.image = UIImage(named: "checked")
            
            checked = checked + 1
            
        } else {
            
            cell.checkImage.image = UIImage(named: "uncheck")
            
            checked = checked - 1
        }
        
    }

    
    func confirmGenres(sender: UIButton) {
        
        if checked == 0 {
            
            let alert = UIAlertController(title: "You have to pick at least one genre.", message: "", preferredStyle: UIAlertControllerStyle.Alert)
            alert.addAction(UIAlertAction(title: "Ok", style: UIAlertActionStyle.Cancel, handler: nil))
            self.presentViewController(alert, animated: true, completion: nil)
        } else {
            
            self.presentViewController(DashboardTabBarController(), animated: true, completion: nil)
        }
        
    }
    
}
