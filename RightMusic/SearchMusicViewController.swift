//
//  SearchMusicViewController.swift
//  RightMusic
//
//  Created by Karina F Tronkos on 4/1/16.
//  Copyright © 2016 Guilherme Marques. All rights reserved.
//

import UIKit

class SearchMusicViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, UISearchBarDelegate {
    
    var tableViewMusic: UITableView = UITableView()
    var searchBarObj: UISearchBar! = UISearchBar()
    var is_searching: Bool!
    var musicView: SearchMusicView!
    
    
    
    var navItemTitle: String = ""
    
    var dataArray: NSMutableArray! //all data array for UITableView
    var searchingDataArray: NSMutableArray! //data searching array that need for search result show
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        is_searching = false
        dataArray = ["TABLE VIEW COM AS MUSICAS DISPONIVEIS"]
        searchingDataArray = []
        self.tableViewMusic.registerClass(UITableViewCell.self, forCellReuseIdentifier: "cell")
        
        tableViewMusic.frame         =   CGRectMake(0, 66, view.frame.width, view.frame.height) // x, y, width, height
        tableViewMusic.delegate      =   self
        tableViewMusic.dataSource    =   self
        tableViewMusic.registerClass(UITableViewCell.self, forCellReuseIdentifier: "cell")
        tableViewMusic.backgroundColor = lightBlue
        
        musicView = SearchMusicView(view: view, parent: self)
        
        
        self.view.addSubview(musicView)
        self.view.addSubview(tableViewMusic)
        
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if is_searching == true {
            return searchingDataArray.count
        }
        else {
            return dataArray.count
        }
    }
    
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell: UITableViewCell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath)

        cell.textLabel?.text = self.dataArray[indexPath.row] as? String
        
        cell.backgroundColor = lightBlue
        
        cell.textLabel!.font = UIFont.systemFontOfSize(18)
        
        if is_searching == true {
            cell.textLabel!.text = searchingDataArray[indexPath.row] as! NSString as String
        }
        else {
            cell.textLabel!.text = dataArray[indexPath.row] as! NSString as String
        }
        
        
        return cell
    }
        
        func searchBar(searchBar: UISearchBar, textDidChange searchText: String){
            if searchBar.text!.isEmpty {
                is_searching = false
                tableViewMusic.reloadData()
            }
            else {
                print(" search text %@ ",searchBar.text! as NSString)
                is_searching = true
                searchingDataArray.removeAllObjects()
                for index in 0 ..< dataArray.count
                {
                    let currentString = dataArray.objectAtIndex(index) as! String
                    if currentString.lowercaseString.rangeOfString(searchText.lowercaseString) != nil {
                        searchingDataArray.addObject(currentString)
                        
                    }
                }
                tableViewMusic.reloadData()
            }
        }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        let selectedCell:UITableViewCell = tableView.cellForRowAtIndexPath(indexPath)!
        selectedCell.contentView.backgroundColor = lightBlueDarker
        
    }
    
    func tableView(tableView: UITableView, didDeselectRowAtIndexPath indexPath: NSIndexPath) {
        let cellToDeSelect:UITableViewCell = tableView.cellForRowAtIndexPath(indexPath)!
        cellToDeSelect.contentView.backgroundColor = lightBlue
    }
    

}