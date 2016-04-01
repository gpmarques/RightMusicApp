//
//  SearchMusicViewController.swift
//  RightMusic
//
//  Created by Karina F Tronkos on 4/1/16.
//  Copyright © 2016 Guilherme Marques. All rights reserved.
//

import UIKit

class SearchMusicViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var tableViewMusic: UITableView = UITableView()
    var musicView: SearchMusicView!
    
    var navItemTitle: String = ""
    
    
    var items: [String] = ["Music 1", "Music 2", "Music 3", "Music 4"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        tableViewMusic.frame         =   CGRectMake(0, 102, view.frame.width, view.frame.height) // x, y, width, height
        tableViewMusic.delegate      =   self
        tableViewMusic.dataSource    =   self
        tableViewMusic.registerClass(UITableViewCell.self, forCellReuseIdentifier: "cell")
        tableViewMusic.backgroundColor = lightBlue
        
        musicView = SearchMusicView(view: view, parent: self)
        
        
        self.view.addSubview(musicView)
        self.view.addSubview(tableViewMusic)
        
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.items.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell: UITableViewCell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath)
        
        cell.textLabel?.text = self.items[indexPath.row]
        
        cell.backgroundColor = lightBlue
        
        cell.textLabel!.font = UIFont.systemFontOfSize(18)
        
//        if (indexPath.row == 0) {
//            let cellButton: UIButton!
//            cellButton = UIButton(frame: CGRectMake(370, 7.5, 30, 30))
//            cellButton.setImage(UIImage(named:"add"), forState: UIControlState.Normal)
//            cell.contentView.addSubview(cellButton)
//            
//        }
        
        
        
        return cell
        
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