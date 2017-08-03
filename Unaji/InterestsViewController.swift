//
//  InterestsCollectionViewController.swift
//  Interests
//
//  Created by Duc Tran on 3/6/17.
//  Copyright © 2017 Developer Inspirus. All rights reserved.
//

import UIKit

class InterestsViewController: UIViewController
{
    @IBOutlet weak var collectionView: UICollectionView!
    
    var interests = Interest.fetchInterests()
    let cellScaling: CGFloat = 0.6
    
    var interestCell = [0,1,2,3,4,5,6,7]
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let screenSize = UIScreen.main.bounds.size
        let cellWidth = floor(screenSize.width * cellScaling)
        let cellHeight = floor(screenSize.height * cellScaling)
        
        let insetX = (view.bounds.width - cellWidth) / 2.0
        let insetY = (view.bounds.height - cellHeight) / 2.0
        
        let layout = collectionView!.collectionViewLayout as! UICollectionViewFlowLayout
        layout.itemSize = CGSize(width: cellWidth, height: cellHeight)
        collectionView?.contentInset = UIEdgeInsets(top: insetY, left: insetX, bottom: insetY, right: insetX)
        
        collectionView?.dataSource = self
        collectionView?.delegate = self
    }
}

extension InterestsViewController : UICollectionViewDataSource
{
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return interests.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell
    {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "InterestCell", for: indexPath) as! InterestCollectionViewCell
        
        cell.interest = interests[indexPath.item]
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath){
        
        
            if interestCell[0] == indexPath.row {
        
            print("segue from cell row \(indexPath.item)")
            
            performSegue(withIdentifier: "FeatureVC0", sender: interests[0])
                
        }
        
        
        if interestCell[1] == indexPath.row {
            
            print("segue from cell row \(indexPath.item)")
        
            performSegue(withIdentifier: "FeatureVC1", sender: interests[1])
            
        }
        
        if interestCell[2] == indexPath.row {
            
            print("segue from cell row \(indexPath.item)")
            
            performSegue(withIdentifier: "FeatureVC2", sender: interests[2])
            
        }
        
        if interestCell[3] == indexPath.row {
            
            print("segue from cell row \(indexPath.item)")
            
            performSegue(withIdentifier: "FeatureVC3", sender: interests[3])
            
        }

        if interestCell[4] == indexPath.row {
            
            print("segue from cell row \(indexPath.item)")
            
            performSegue(withIdentifier: "FeatureVC4", sender: interests[4])
            
        }
        
        if interestCell[5] == indexPath.row {
            
            print("segue from cell row \(indexPath.item)")
            
            performSegue(withIdentifier: "FeatureVC5", sender: interests[5])
            
        }
        
        if interestCell[6] == indexPath.row {
            
            print("segue from cell row \(indexPath.item)")
            
            performSegue(withIdentifier: "FeatureVC6", sender: interests[6])
            
        }
        
        if interestCell[7] == indexPath.row {
            
            print("segue from cell row \(indexPath.item)")
            
            performSegue(withIdentifier: "FeatureVC7", sender: interests[7])
            
        }

    }
    
}

extension InterestsViewController : UIScrollViewDelegate, UICollectionViewDelegate
{
    func scrollViewWillEndDragging(_ scrollView: UIScrollView, withVelocity velocity: CGPoint, targetContentOffset: UnsafeMutablePointer<CGPoint>)
    {
        let layout = self.collectionView?.collectionViewLayout as! UICollectionViewFlowLayout
        let cellWidthIncludingSpacing = layout.itemSize.width + layout.minimumLineSpacing
        
        var offset = targetContentOffset.pointee
        let index = (offset.x + scrollView.contentInset.left) / cellWidthIncludingSpacing
        let roundedIndex = round(index)
        
        offset = CGPoint(x: roundedIndex * cellWidthIncludingSpacing - scrollView.contentInset.left, y: -scrollView.contentInset.top)
        targetContentOffset.pointee = offset
    }
}

