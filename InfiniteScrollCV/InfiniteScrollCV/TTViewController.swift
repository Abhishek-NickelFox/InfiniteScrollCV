//
//  TTViewController.swift
//  InfiniteScrollCV
//
//  Created by Abhishek on 23/06/17.
//  Copyright © 2017 Abhishek. All rights reserved.
//

import UIKit

class TTViewController: UIViewController, iCarouselDataSource, iCarouselDelegate {

    @IBOutlet weak var iCView: iCarousel!
    
    var items = [0,1,2,3,4,5,6,7,8,9,10]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        iCView.delegate = self
        iCView.dataSource = self
        iCView.isVertical = true
        iCView.type = iCarouselType(rawValue: 9)!
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

extension TTViewController {
    
    func numberOfItems(in carousel: iCarousel) -> Int {
        return items.count
    }

    func carousel(_ carousel: iCarousel, viewForItemAt index: Int, reusing view: UIView?) -> UIView {
        var label: UILabel?
        
        var sview: UIView?
        
        if view == nil {
            sview = UIImageView(frame: CGRect(x: 0, y: 0, width: 200, height: 200))
            (sview as! UIImageView).image = UIImage(named: "page.png")
            sview?.contentMode = .center
            label = UILabel(frame: (sview?.bounds)!)
            label?.backgroundColor = .clear
            label?.textAlignment = .center
            label?.tag = 1
            sview?.addSubview(label!)
        }
        else {
            sview = view
            label = sview?.viewWithTag(1) as? UILabel
        }
        label?.text = "\(items[index])"
        
        return sview!
    }
    
    func carousel(_ carousel: iCarousel, valueFor option: iCarouselOption, withDefault value: CGFloat) -> CGFloat {
        print("VALUE : \(value)")
        switch (option)
        {
        case .wrap:
            return 1
        case .fadeMax:
            if (carousel.type == .custom) {
                return 0.0
            }
            return value;
        case .arc:
            return CGFloat(2 * Double.pi * 10)
        case .radius:
            return 1.0 * 10
        case .tilt:
            return 0.153229
        case .spacing:
            return value * 0.381762
        default:
            return value
        }

    }

}
