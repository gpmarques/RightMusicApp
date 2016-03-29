//
//  PlaylistsViewController.swift
//  RightMusic
//
//  Created by Karina F Tronkos on 3/29/16.
//  Copyright © 2016 Guilherme Marques. All rights reserved.
//

import Foundation

import UIKit

class PlaylistViewController: UIViewController,UITableViewDelegate, UITableViewDataSource {
    
    
    var tableViewPlaylist: UITableView  =   UITableView()
    var playView: PlaylistsView!
    
    var items: [String] = ["Nova Playlist"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableViewPlaylist.frame         =   CGRectMake(0, 58, view.frame.width, view.frame.height) // x, y, width, height
        tableViewPlaylist.delegate      =   self
        tableViewPlaylist.dataSource    =   self
        
        tableViewPlaylist.registerClass(UITableViewCell.self, forCellReuseIdentifier: "cell")
        tableViewPlaylist.backgroundColor = azulClaro
        
        playView = PlaylistsView(view: view, parent: self)
    
    
        self.view.addSubview(tableViewPlaylist)
        self.view.addSubview(playView)
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.items.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell: UITableViewCell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath)
        
        cell.textLabel?.text = self.items[indexPath.row]
        
        cell.backgroundColor = azulClaro
        
        return cell
        
    }
    

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}