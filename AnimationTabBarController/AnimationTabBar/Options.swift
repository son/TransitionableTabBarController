//
//  Options.swift
//  TransitionableTab-iOS
//
//  Created by gwangbeom on 2017. 11. 12..
//  Copyright © 2017년 InteractiveStudio. All rights reserved.
//

import UIKit

enum Direction {
    case left
    case right
    
    init(selectedIndex: Int, shouldSelectIndex: Int) {
        self = selectedIndex > shouldSelectIndex ? .left : .right
    }
}

enum TransitionViewType: Int {
    case to
    case from
}
