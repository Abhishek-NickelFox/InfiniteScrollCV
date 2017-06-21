//
//  SwipeCollectionViewCell.swift
//  InfiniteScrollCV
//
//  Created by Abhishek on 21/06/17.
//  Copyright © 2017 Abhishek. All rights reserved.
//

import UIKit

class SwipeCollectionViewCell: TisprCardStackViewCell {
    
    @IBOutlet weak var voteSmile: UIImageView!
    
    @IBOutlet weak var title: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        layer.cornerRadius = 12
        clipsToBounds = false
    }
    
    override var center: CGPoint {
        didSet {
//            updateSmileVote()
        }
    }
    
    override internal func apply(_ layoutAttributes: UICollectionViewLayoutAttributes) {
        super.apply(layoutAttributes)
//        updateSmileVote()
    }
    
//    func updateSmileVote() {
//        let rotation = atan2(transform.b, transform.a) * 100
//        
//        var color = UIColor.red
//        
//        if rotation > 15 {
//            color = .green
//        } else if rotation > 0 {
//            color = .blue
//        } else if rotation < -15 {
//            color = .yellow
//        } else if rotation < 0 {
//            color = .red
//        }
//
//        voteSmile.backgroundColor = color
//    }
    
}
