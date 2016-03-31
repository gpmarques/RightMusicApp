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
    
    var items: [String] = ["Nova Playlist", "1", "2", "3", "4", "5", "6", "7", "8"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableViewPlaylist.frame         =   CGRectMake(0, 58, view.frame.width, view.frame.height) // x, y, width, height
        tableViewPlaylist.delegate      =   self
        tableViewPlaylist.dataSource    =   self
        tableViewPlaylist.registerClass(UITableViewCell.self, forCellReuseIdentifier: "cell")
        tableViewPlaylist.backgroundColor = lightBlue
        
        playView = PlaylistsView(view: view, parent: self)
    
        self.view.addSubview(playView)
        self.view.addSubview(tableViewPlaylist)
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.items.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell: UITableViewCell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath)
        
        cell.textLabel?.text = self.items[indexPath.row]
        
        cell.backgroundColor = lightBlue

        cell.textLabel!.font = UIFont.systemFontOfSize(18)
        
        if indexPath.row == 0 {
            let tapRecognizer = UITapGestureRecognizer(target: self, action: #selector(PlaylistViewController.cellTapped))
            cell.addGestureRecognizer(tapRecognizer)
        
        }
        
        if (indexPath.row == 0) {
            let cellButton: UIButton!
            cellButton = UIButton(frame: CGRectMake(10, 10, 30, 30))
            cellButton.setImage(UIImage(named:"add"), forState: UIControlState.Normal)
            cell.contentView.addSubview(cellButton)
            
        }
        
        return cell
        
    }
    
    func cellTapped() {
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}