//
//  HomeView.swift
//  RightMusic
//
//  Created by Guilherme Marques on 3/28/16.
//  Copyright © 2016 Guilherme Marques. All rights reserved.
//

import UIKit

class HomeView: UIView {

    
    init (view: UIView, parent: UIViewController) {
        super.init(frame: view.frame)
        
        view.backgroundColor = azulClaro
        
    }
    
    required init(coder aDecoder: NSCoder) {
        
        fatalError("init(coder:) has not been implemented")
        
    }
    
}
