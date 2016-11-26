//
//  ViewController.swift
//  SimpleExampleScrollView
//
//  Created by Ievgen Keba on 10/22/16.
//  Copyright © 2016 Harman Inc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var scrollView: ScrollView!
    
    var images = [UIImageView]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        var contexWidth: CGFloat = 0.0
        for pic in 0...4 {
            let image = UIImage(named: "iphone\(pic+1).png")
            let imageView = UIImageView(image: image)
            images.append(imageView)
            var x: CGFloat = 0.0
            x = scrollView.frame.midX + scrollView.frame.size.width * CGFloat(pic)
            contexWidth = x + 200
            scrollView.addSubview(imageView)
            imageView.frame = CGRect(x: x - 150, y: scrollView.bounds.size.height/2 - 100, width: 200, height: 200)
        }
        scrollView.clipsToBounds = false
        scrollView.contentSize = CGSize(width: contexWidth-120, height: view.bounds.size.height/2)
    }
}


