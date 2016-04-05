//
//  NewPlaylistViewController.swift
//  RightMusic
//
//  Created by Karina F Tronkos on 3/31/16.
//  Copyright © 2016 Guilherme Marques. All rights reserved.
//

import UIKit

class NewPlaylistViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var tableViewPlaylist: UITableView = UITableView()
    var playView: NewPlaylistsView!
    var playlist: Playlist!
    var playlistID: Int!
    var items: [String] = ["Add new musics"]
    var addedMusic = false

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let statusBarHeight = UIApplication.sharedApplication().statusBarFrame.size.height

        
        tableViewPlaylist.frame         =   CGRectMake(0, view.frame.height*0.125/2 + statusBarHeight, view.frame.width, view.frame.height) // x, y, width, height
        tableViewPlaylist.delegate      =   self
        tableViewPlaylist.dataSource    =   self
        tableViewPlaylist.registerClass(UITableViewCell.self, forCellReuseIdentifier: "cell")
        tableViewPlaylist.backgroundColor = lightBlue
        
        playView = NewPlaylistsView(view: view, parent: self)

        //self.view.addSubview(playView)
        self.view.addSubview(tableViewPlaylist)
        
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        if playlist.music.count > 0 {
            return playlist.music.count + 1
        } else {
            return self.items.count
        }
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell: UITableViewCell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath)
        
        if (indexPath.row == 0) {
            cell.textLabel?.text = self.items[indexPath.row]
            let cellButton: UIButton!
            cellButton = UIButton(frame: CGRectMake(280, 7.5, 30, 30))
            cellButton.setImage(UIImage(named:"add"), forState: UIControlState.Normal)
            cell.contentView.addSubview(cellButton)
//            let tapRecognizer = UITapGestureRecognizer(target: self, action: #selector(NewPlaylistViewController.cellTapped))
//            cellButton.addGestureRecognizer(tapRecognizer)
        } else {
            cell.textLabel?.text = playlist.music[indexPath.row-1].title
        }
        cell.backgroundColor = lightBlue
        cell.textLabel!.font = UIFont.systemFontOfSize(18)

        return cell
        
    }
    
    override func viewWillAppear(animated: Bool) {
        dispatch_async(dispatch_get_main_queue(), { () -> Void in
            self.tableViewPlaylist.reloadData()
        })
    }
    override func viewDidDisappear(animated: Bool) {
        dispatch_async(dispatch_get_main_queue(), { () -> Void in
            self.tableViewPlaylist.reloadData()
        })
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        if indexPath.row == 0 {
            let searchMusicVC = SearchMusicViewController()
            searchMusicVC.playlist = playlistID
//            self.addChildViewController(searchMusicVC)
//            self.navigationController?.presentViewController(searchMusicVC, animated: true, completion: nil)
//            self.presentViewController(searchMusicVC, animated: true, completion: nil)
            self.navigationController?.pushViewController(searchMusicVC, animated: true)
//            self.presentViewController(searchMusicVC, animated: true, completion: nil)
        } else {
            self.navigationController?.pushViewController(MusicViewController(), animated: true)
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}