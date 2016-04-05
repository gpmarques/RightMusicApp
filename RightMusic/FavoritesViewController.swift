//
//  FavoritesViewController.swift
//  RightMusic
//
//  Created by Karina F Tronkos on 4/3/16.
//  Copyright © 2016 Guilherme Marques. All rights reserved.
//


import UIKit

class FavoritesViewController: UIViewController,UITableViewDelegate, UITableViewDataSource {
    
    
    var tableViewFavorites: UITableView = UITableView()
    var favoritesView: FavoritesView!
    
    var items = userList[loggedUser].playlist[0].music
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let statusBarHeight = UIApplication.sharedApplication().statusBarFrame.size.height
        
        tableViewFavorites.frame         =   CGRectMake(0, view.frame.height*0.125/2 + statusBarHeight, view.frame.width, view.frame.height) // x, y, width, height
        tableViewFavorites.delegate      =   self
        tableViewFavorites.dataSource    =   self
        tableViewFavorites.registerClass(UITableViewCell.self, forCellReuseIdentifier: "cell")
        tableViewFavorites.backgroundColor = lightBlue
        
        favoritesView = FavoritesView(view: view, parent: self)
        
        self.view.addSubview(favoritesView)
        self.view.addSubview(tableViewFavorites)
        
        self.navigationController?.navigationBar.hidden = true
    }
    
    override func viewWillAppear(animated: Bool) {
        self.tableViewFavorites.reloadData()
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        print(self.items.count)
        return self.items.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell: UITableViewCell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath)
        
        cell.textLabel?.text = self.items[indexPath.row].title + " - " + self.items[indexPath.row].artist.name
        
        cell.backgroundColor = lightBlue
        
        cell.textLabel!.font = UIFont.systemFontOfSize(18)
        
//        let tapRecognizer = UITapGestureRecognizer(target: self, action:#selector(FavoritesViewController.cellTapped))
//        cell.addGestureRecognizer(tapRecognizer)
        
        return cell
        
    }
    
//    func cellTapped() {
//        
//        self.navigationController?.pushViewController(MusicViewController(), animated: true)
//        
//    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        let musicVC = MusicViewController()
        musicVC.music = items[indexPath.row]
        
        self.navigationController?.pushViewController(MusicViewController(), animated: true)

    }
    
    func tableView(tableView: UITableView, didDeselectRowAtIndexPath indexPath: NSIndexPath) {
        let cellToDeSelect:UITableViewCell = tableView.cellForRowAtIndexPath(indexPath)!
        cellToDeSelect.contentView.backgroundColor = lightBlue
    }
    
    
}