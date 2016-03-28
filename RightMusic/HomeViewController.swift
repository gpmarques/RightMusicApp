//
//  HomeViewController.swift
//  RightMusic
//
//  Created by Guilherme Marques on 3/28/16.
//  Copyright © 2016 Guilherme Marques. All rights reserved.
//

import UIKit



class HomeViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout, UITableViewDataSource, UITableViewDelegate {
    
    var homeView: HomeView!
    var highlightedSongs : UICollectionView!
    var tableViewSongs : UITableView!
    let cellName: String = "Cell"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        homeView = HomeView(view: view, parent: self)
        
        let layout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
        layout.scrollDirection = UICollectionViewScrollDirection.Horizontal
        layout.sectionInset = UIEdgeInsets(top: 25, left: 10, bottom: 10, right: 10)
        layout.itemSize = CGSize(width: 120, height: 120)
        layout.minimumLineSpacing = 5
        
        let cgRectHighlightSongs: CGRect! = CGRectMake(0, view.frame.height*0.150528, view.frame.width
            , view.frame.width*0.542188)
        
        highlightedSongs = UICollectionView(frame: cgRectHighlightSongs, collectionViewLayout: layout)
        highlightedSongs.dataSource = self
        highlightedSongs.delegate = self
        highlightedSongs.registerClass(UICollectionViewCell.self, forCellWithReuseIdentifier: cellName)
        highlightedSongs.backgroundColor = azulClaro
        

        
        
        
        view.addSubview(highlightedSongs)

    }

    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath ) ->UICollectionViewCell{
        
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier(cellName, forIndexPath: indexPath)
        cell.backgroundColor = UIColor.whiteColor()
        cell.layer.borderWidth = 1.0
        cell.layer.cornerRadius = 10.0
        cell.layer.borderColor = UIColor.blackColor().CGColor
        
        let tapRecognizer = UITapGestureRecognizer(target: self, action: #selector(HomeViewController.cellTapped))
        
        cell.addGestureRecognizer(tapRecognizer)
        
        return cell
        
    }
    
    func cellTapped() {
        
        self.presentViewController(LoginViewController(), animated: true, completion: nil)
        
    }
    
    // MARK: - Table view data source
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 2
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 5
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell{
        
        let cell = tableView.dequeueReusableCellWithIdentifier(cellName, forIndexPath: indexPath)
        
        
        return cell
    }
    
    func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        
        return "Blabla"
    }
    

}
