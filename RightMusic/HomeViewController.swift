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
    var tableViewArtistaBanda : UITableView!
    var tableViewDificuldade : UITableView!
    let cellName: String = "Cell"
    
    struct musicas {
        var sections: [String] =  ["Artistas / Bandas", "Dificuldade"]
        var musics: [[String]] = [["Deep Purple", "Nickelback","Thirty Second to Mars"], ["Banda1","Banda2","Banda3"]]
    }
    
    let music = musicas()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        homeView = HomeView(view: view, parent: self)
        
        // MARK: - CollectionView
        
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
        
        // MARK: - TableViewArtistaBandas
        
        let cGRecttableview: CGRect! = CGRectMake(view.frame.width*0.0234375, view.frame.width*0.809375, view.frame.width*0.95625, view.frame.height*0.1875)
        
        tableViewArtistaBanda = UITableView(frame: cGRecttableview, style: UITableViewStyle.Plain)
        tableViewArtistaBanda.dataSource = self
        tableViewArtistaBanda.delegate = self
        tableViewArtistaBanda.registerClass(UITableViewCell.self, forCellReuseIdentifier: cellName)
        tableViewArtistaBanda.tag = 0
        tableViewArtistaBanda.tableHeaderView?.backgroundColor = azulClaro

        // MARK: - tableViewDificuldade
        
        let cGRecttableviewDificuldade:CGRect! = CGRectMake(view.frame.width*0.0234375, view.frame.height*0.682218, view.frame.width*0.95625, view.frame.height*0.1875)
        
        tableViewDificuldade = UITableView(frame: cGRecttableviewDificuldade, style: UITableViewStyle.Plain)
        tableViewDificuldade.dataSource = self
        tableViewDificuldade.delegate = self
        tableViewDificuldade.registerClass(UITableViewCell.self, forCellReuseIdentifier: cellName)
        tableViewDificuldade.tag = 1
        tableViewDificuldade.tableHeaderView?.backgroundColor = azulClaro

        // MARK: - addSubView
        
        view.addSubview(highlightedSongs)
        view.addSubview(tableViewArtistaBanda)
        view.addSubview(tableViewDificuldade)
        

    }

    // MARK: - Collection view data source

    
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
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if tableView.isEqual(tableViewArtistaBanda) {
            return music.musics[0].count
        } else {
            return music.musics[1].count
        }
    }
    
    func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if tableView.isEqual(tableViewArtistaBanda) {
            return music.sections[0]
        } else {
            return music.sections[1]
        }
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
  
        let cell = tableView.dequeueReusableCellWithIdentifier(cellName, forIndexPath: indexPath)
        let row = indexPath.row
        cell.backgroundColor = azulClaro
        
        if tableView.isEqual(tableViewArtistaBanda) {
            cell.textLabel?.text = music.musics[0][row]
        } else {
            cell.textLabel?.text = music.musics[1][row]

        }
        return cell
        
    }
    
    func tableView(tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        
        let header = UIView(frame: CGRect(x: tableView.bounds.minX, y: tableView.bounds.minY, width: tableView.bounds.width, height: view.frame.height*0.0625))

        header.backgroundColor = azulClaro
        
        let labelHeader = UILabel(frame: CGRect(x: tableView.bounds.minX, y: tableView.bounds.minY, width: tableView.bounds.width, height: view.frame.height*0.0625))
        
        if tableView.isEqual(tableViewArtistaBanda) {
    
            labelHeader.text = "Artista/Bandas"
            labelHeader.backgroundColor = azulClaro
            header.addSubview(labelHeader)
        } else {
            
            labelHeader.text = "Dificuldade"
            header.addSubview(labelHeader)
        }
        
        return header
        
    }

}
