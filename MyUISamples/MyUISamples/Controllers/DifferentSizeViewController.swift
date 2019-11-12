//
//  DifferentSizeViewController.swift
//  MyUISamples
//
//  Created by Himanshu Chaurasiya on 10/11/19.
//  Copyright © 2019 MyTeam. All rights reserved.
//

import UIKit

class DifferentSizeViewController: UIViewController, PinterestLayoutDelegate{
    
    //var photos = [100,200,50,500,10,400,342,150]
    
    @IBOutlet weak var differentSizeCollectionView: UICollectionView!
    let screenWidth = UIScreen.main.bounds.width
    
    override func viewDidLoad() {
        super.viewDidLoad()
        differentSizeCollectionView.delegate = self
        differentSizeCollectionView.dataSource = self
        
        if let layout = differentSizeCollectionView?.collectionViewLayout as? PinterestLayout {
          layout.delegate = self
        }
    }
    
    func collectionView(collectionView: UICollectionView, heightForItemAtIndexPath: IndexPath) -> CGFloat {
        return CGFloat(getCellRandomHeight())// photos[heightForItemAtIndexPath.row])
    }
    
    func getCellRandomColor() -> UIColor {
        let redNumber  = Float.random(in: 0...255)
        let greenNumber  = Float.random(in: 0...255)
        let blueNumber  = Float.random(in: 0...255)
        
        return UIColor(red: CGFloat(redNumber/255), green: CGFloat(greenNumber/255), blue: CGFloat(blueNumber/255), alpha: 1)
    }
    
    func getCellRandomHeight() -> CGFloat {
        let randomNumber  = Int.random(in: 0...4)
        return CGFloat(randomNumber*100)
    }

}

extension DifferentSizeViewController : UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        20//photos.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "DifferentSizeCollectionViewCell", for: indexPath)
        let color = getCellRandomColor()
        //print(color)
        cell.backgroundColor = color
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        
            return 0
         
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        
            return 0
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        
            return UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
         
    }
}
