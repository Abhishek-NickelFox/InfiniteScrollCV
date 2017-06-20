//
//  IFCollectionViewCell.swift
//  InfiniteScrollCV
//
//  Created by Abhishek on 20/06/17.
//  Copyright © 2017 Abhishek. All rights reserved.
//

import UIKit

class IFCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var imgView: UIImageView!
    
    func configure(img: String) {
        imgView.image = UIImage(named: img)
    }
}
