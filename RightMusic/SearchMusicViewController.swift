//
//  SearchMusicViewController.swift
//  RightMusic
//
//  Created by Karina F Tronkos on 4/1/16.
//  Copyright © 2016 Guilherme Marques. All rights reserved.
//

import UIKit

class SearchMusicViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, UISearchBarDelegate {
    
    var searchMusicView: SearchMusicView!
    
    var searchActive = false
    let data = [musicList[0].title, musicList[1].title, musicList[2].title]
    var filtered: [String] = []
    var playlist: Int!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        searchMusicView = SearchMusicView(view: view, parent: self)
                
    }
    
    override func viewDidAppear(animated: Bool) {
        searchMusicView.searchBar.becomeFirstResponder()
    }
    
    // MARK: SearchBar Delegate
    
    func searchBarShouldBeginEditing(searchBar: UISearchBar) -> Bool {
        return true
    }
    
    func searchBarSearchButtonClicked(searchBar: UISearchBar) {
        searchActive = true
    }
    
    func searchBarTextDidEndEditing(searchBar: UISearchBar) {
        searchActive = false
    }
    
    func searchBarTextDidBeginEditing(searchBar: UISearchBar) {
        searchActive = true
    }
    
    func searchBar(searchBar: UISearchBar, textDidChange searchText: String) {
        
        filtered = data.filter({ (text) -> Bool in
            let tmp: NSString = text
            let range = tmp.rangeOfString(searchText, options: NSStringCompareOptions.CaseInsensitiveSearch)
            return range.location != NSNotFound
        })
        if(filtered.count == 0){
            searchActive = false
        } else {
            searchActive = true
        }
        self.searchMusicView.tableViewMusic.reloadData()
        
        
    }
    
    func searchBarCancelButtonClicked(searchBar: UISearchBar) {
//        let playVC = NewPlaylistViewController(playlist: playLists[playlist])
//        self.navigationController?.pushViewController(playVC, animated: true)
//        let playVC = self.parentViewController
//        print(playVC)
//        let playVC = PlaylistViewController()
//        self.navigationController?.popToViewController(playVC, animated: true)
        self.navigationController?.popViewControllerAnimated(true)

    }
    
    // MARK: TableView Delegate and DataSource
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if searchActive {
            return filtered.count
        }
        return data.count;
    }
    
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath)
        if  searchActive {
            cell.textLabel?.text = filtered[indexPath.row]
        } else {
            cell.textLabel?.text = data[indexPath.row]
        }
        
        return cell
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
        playLists[playlist].music.append(musicList[indexPath.row])
        self.navigationController?.popViewControllerAnimated(true)
    }
    
    func tableView(tableView: UITableView, didDeselectRowAtIndexPath indexPath: NSIndexPath) {
        let cellToDeSelect:UITableViewCell = tableView.cellForRowAtIndexPath(indexPath)!
        cellToDeSelect.contentView.backgroundColor = lightBlue
    }

}