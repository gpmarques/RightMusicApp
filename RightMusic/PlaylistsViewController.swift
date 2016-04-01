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
    
    var items: [String] = ["New Playlist", "1", "2", "3", "4", "5", "6", "7", "8"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let statusBarHeight = UIApplication.sharedApplication().statusBarFrame.size.height
        
        tableViewPlaylist.frame         =   CGRectMake(0, view.frame.height*0.125/2 + statusBarHeight, view.frame.width, view.frame.height) // x, y, width, height
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
        
        
        if (indexPath.row == 0) {
            let cellButton: UIButton!
            cellButton = UIButton(frame: CGRectMake(370, 7.5, 30, 30))
            cellButton.setImage(UIImage(named:"add"), forState: UIControlState.Normal)
            cell.contentView.addSubview(cellButton)
            
        }
        
        if indexPath.row == 0 {
            let tapRecognizer = UITapGestureRecognizer(target: self, action: #selector(PlaylistViewController.openAlert))
            cell.addGestureRecognizer(tapRecognizer)
            
            
            
        }
        
        return cell
        
    }
    
    func openAlert() {
        // create the alert
        let alert = UIAlertController(title: "Crete new playlist", message: "Name of the playlist:", preferredStyle: UIAlertControllerStyle.Alert)
    
        
        // add an action (button)
        alert.addAction(UIAlertAction(title: "Cancel", style: UIAlertActionStyle.Cancel, handler: nil))
        
        alert.addTextFieldWithConfigurationHandler({ (textField) -> Void in
            textField.text = " "
        })
        
        
        alert.addAction(UIAlertAction(title: "OK", style: .Default, handler: { (action) -> Void in
            let textField = alert.textFields![0] as UITextField
            print("Text field: \(textField.text)")
            let playVC = NewPlaylistViewController()
            playVC.navItemTitle = textField.text!
            self.presentViewController(playVC, animated: true, completion: nil)

        }))
        
        // show the alert
        self.presentViewController(alert, animated: true, completion: nil)
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        let selectedCell:UITableViewCell = tableView.cellForRowAtIndexPath(indexPath)!
        selectedCell.contentView.backgroundColor = lightBlueDarker

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