//
//  SearchMusicView.swift
//  RightMusic
//
//  Created by Karina F Tronkos on 4/1/16.
//  Copyright © 2016 Guilherme Marques. All rights reserved.
//
import UIKit

class SearchMusicView: UIView {

    var searchBar: UISearchBar!
    var tableViewMusic: UITableView!

    
    init (view: UIView, parent: SearchMusicViewController) {
        super.init(frame: view.frame)
        
        view.backgroundColor = UIColor.whiteColor()
        let statusBarHeight = UIApplication.sharedApplication().statusBarFrame.size.height
        
        // MARK: - SearchBar
        
        searchBar = UISearchBar(frame: CGRectMake(view.frame.width*0.0, view.frame.height*0.0, view.frame.width*1.0, view.frame.height*0.09375 + statusBarHeight))
        searchBar.enablesReturnKeyAutomatically = true
        searchBar.delegate = parent
        searchBar.placeholder = "Search"
        searchBar.userInteractionEnabled = true
        searchBar.showsCancelButton = true

        // MARK: TableView
        tableViewMusic = UITableView(frame:  CGRectMake(view.frame.width*0.0,view.frame.height*0.0977113, view.frame.width,view.frame.height*1.60156))
        tableViewMusic.delegate      =   parent
        tableViewMusic.dataSource    =   parent
        tableViewMusic.registerClass(UITableViewCell.self, forCellReuseIdentifier: "Cell")
        
        view.addSubview(searchBar)
        view.addSubview(tableViewMusic)

    }
    
    
//    func addNewMusic() {
//        
//        let playController = SearchMusicViewController()
//        
//        let playTbl = tableViewMusic
//        
//        playTbl.beginUpdates()
//        playTbl.insertRowsAtIndexPaths([NSIndexPath(forRow: playController.data.count-1, inSection: 0)], withRowAnimation: .Automatic)
//        playTbl.endUpdates()
//        
//        
//    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
    
}
    
    

