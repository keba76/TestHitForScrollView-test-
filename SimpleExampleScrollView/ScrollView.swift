//
//  ScrollView.swift
//  SimpleExampleScrollView
//
//  Created by Ievgen Keba on 11/25/16.
//  Copyright © 2016 Harman Inc. All rights reserved.
//

import UIKit

class ScrollView: UIScrollView {
    
    override func hitTest(_ point: CGPoint, with event: UIEvent?) -> UIView? {
     return self
    }
}
