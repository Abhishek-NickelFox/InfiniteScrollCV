//
//  CardSwipeViewController.swift
//  InfiniteScrollCV
//
//  Created by Abhishek on 21/06/17.
//  Copyright © 2017 Abhishek. All rights reserved.
//

import UIKit

class CardSwipeViewController: TisprCardStackViewController, TisprCardStackViewControllerDelegate {

    fileprivate var countOfCards: Int = 6
    
    let colors: [UIColor] = [.red, .yellow, .blue, .lightGray, .green, .cyan]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        //set animation speed
        setAnimationSpeed(0.85)
        
        //set size of cards
        let size = CGSize(width: view.bounds.width - 40, height: 2 * view.bounds.height/3)
        setCardSize(size)
        
        cardStackDelegate = self
        
        //configuration of stacks
        layout.topStackMaximumSize = 4
        layout.bottomStackMaximumSize = 30
        layout.bottomStackCardHeight = 45
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func numberOfCards() -> Int {
        return countOfCards
    }
    
    override func card(_ collectionView: UICollectionView, cardForItemAtIndexPath indexPath: IndexPath) -> SwipeCollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "SwipeCollectionViewCell", for: indexPath as IndexPath) as! SwipeCollectionViewCell
        
        cell.title.text = "Card - \(indexPath.item)"
        cell.voteSmile.backgroundColor = colors[indexPath.item]
        
        
        return cell
    }

    func cardDidChangeState(_ cardIndex: Int) {
        print("card with index - \(cardIndex) changed position")
    }
    
}
