//
//  ViewController.swift
//  InfiniteScrollCV
//
//  Created by Abhishek on 20/06/17.
//  Copyright © 2017 Abhishek. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    var imgArray: [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        setupUI()
        imgArray = ["wall1.jpg", "wall2.jpg", "wall3.jpg", "wall4.jpg", "wall5.jpg"]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource {

    func setupUI() {
        collectionView.delegate = self
        collectionView.dataSource = self
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return Int(INT_MAX)//imgArray.count //Int.max // rather imgArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "IFCollectionViewCell", for: indexPath) as! IFCollectionViewCell
        
        cell.configure(img: imgArray[indexPath.row % imgArray.count])
        
        return cell
    }
    
}

