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
    
    
    var tableViewPlaylist: UITableView = UITableView()
    var playView: PlaylistsView!
    var items: [String] = [playLists[0].title]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let statusBarHeight = UIApplication.sharedApplication().statusBarFrame.size.height
        
        tableViewPlaylist.frame         =   CGRectMake(0, view.frame.height*0.125/2 + statusBarHeight, view.frame.width, view.frame.height) // x, y, width, height
        tableViewPlaylist.delegate      =   self
        tableViewPlaylist.dataSource    =   self
        tableViewPlaylist.registerClass(UITableViewCell.self, forCellReuseIdentifier: "cell")
        tableViewPlaylist.backgroundColor = lightBlue
        
        playView = PlaylistsView(view: view, parent: self)
    
        //self.view.addSubview(playView)
        self.view.addSubview(tableViewPlaylist)
        
        self.navigationController?.navigationBar.hidden = true

    }
    
    override func viewDidAppear(animated: Bool) {
        dispatch_async(dispatch_get_main_queue(), { () -> Void in
            self.tableViewPlaylist.reloadData()
        })
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.items.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell: UITableViewCell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath)
        
        cell.textLabel?.text = self.items[indexPath.row]
        
        cell.backgroundColor = lightBlue

        cell.textLabel!.font = UIFont.systemFontOfSize(18)
        
        if (indexPath.row == 0) {
            let cellButton: UIButton!
            cellButton = UIButton(frame: CGRectMake(280, 7.5, 30, 30))
            cellButton.setImage(UIImage(named:"add"), forState: UIControlState.Normal)
            cell.contentView.addSubview(cellButton)
        }
        
        cell.tag = indexPath.row
        return cell
        
    }
    
    func openAlert() {

        let alert = UIAlertController(title: "Create new playlist", message: "Name of the playlist:", preferredStyle: UIAlertControllerStyle.Alert)
    
        alert.addAction(UIAlertAction(title: "Cancel", style: UIAlertActionStyle.Cancel, handler: nil))
        
        alert.addTextFieldWithConfigurationHandler({ (textField) -> Void in
            textField.text = " "
        })
        
        
        alert.addAction(UIAlertAction(title: "OK", style: .Default, handler: { (action) -> Void in
            let textField = alert.textFields![0] as UITextField
            if textField.text != ""  && textField.text != " " {
                let newPlaylist = self.addNewPlaylist(textField.text!)
                let playVC = NewPlaylistViewController()
                playVC.playlist = newPlaylist
                playVC.playlistID = playLists.count - 1
                //self.navigationController?.pushViewController(playVC, animated: true)
                //self.presentViewController(playVC, animated: true, completion: nil)
                self.navigationController?.pushViewController(playVC, animated: true)
            } else {
                
                let alertPlaylistName = UIAlertController(title: "The new playlist can't be nameless", message: "", preferredStyle: UIAlertControllerStyle.Alert)
                alertPlaylistName.addAction(UIAlertAction(title: "Ok", style: UIAlertActionStyle.Cancel, handler: nil))
                self.presentViewController(alertPlaylistName, animated: true, completion: nil)
            
            }
        }))
        
        self.presentViewController(alert, animated: true, completion: nil)
    }
    
    func addNewPlaylist(name: String) -> Playlist {
        
        let newPlaylist = Playlist(title: name, userIdentifier: loggedUser)
        playLists.append(newPlaylist)
        items.append(newPlaylist.title)
        dispatch_async(dispatch_get_main_queue(), { () -> Void in
            self.tableViewPlaylist.reloadData()
        })
        return newPlaylist
        
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        if indexPath.row == 0 {
            openAlert()
        }
        else {
            let openPlayVC = NewPlaylistViewController()
            openPlayVC.playlist = playLists[indexPath.row]
            openPlayVC.playlistID = indexPath.row
            self.navigationController!.pushViewController(openPlayVC, animated: true)
        }
        
    }
    
     func tableView(tableView: UITableView, didDeselectRowAtIndexPath indexPath: NSIndexPath) {
        let cellToDeSelect:UITableViewCell = tableView.cellForRowAtIndexPath(indexPath)!
        cellToDeSelect.contentView.backgroundColor = lightBlue
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}