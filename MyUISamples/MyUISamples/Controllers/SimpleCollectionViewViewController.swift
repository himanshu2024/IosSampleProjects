//
//  SimpleCollectionViewViewController.swift
//  MyUISamples
//
//  Created by Himanshu Chaurasiya on 13/10/19.
//  Copyright © 2019 MyTeam. All rights reserved.
//

import UIKit

class SimpleCollectionViewViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    
    @IBOutlet weak var collectionView: UICollectionView!
    //MARK:- Init variables
    let sampleArray = ["01","02","03","04","05","06","07","08","09","10","11","12","13","14","15","16","17","18","19","20","21","22","23","24","25","26","27","28","29","30",]

    override func viewDidLoad() {
        super.viewDidLoad()

        let layout = collectionView.collectionViewLayout as! UICollectionViewFlowLayout
        layout.sectionInset = UIEdgeInsets(top: 0, left: 1, bottom: 0, right: 1)
        //layout.minimumInteritemSpacing = 6
//        layout.itemSize = CGSize(width: (collectionView.frame.size.width-20)/2, height: collectionView.frame.height/3)
    }
    
    //MARK: - Collection view data source methods
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        sampleArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "oneCell", for: indexPath) as! OneSampleCollectionViewCell
        cell.label.text = sampleArray[indexPath.row]
        cell.layer.borderColor = UIColor.lightGray.cgColor
        cell.layer.borderWidth = 0.5
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if let cell = collectionView.cellForItem(at: indexPath){
        cell.layer.borderColor = UIColor.gray.cgColor
        cell.layer.borderWidth = 2
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, didDeselectItemAt indexPath: IndexPath) {
        if let cell = collectionView.cellForItem(at: indexPath){
        cell.layer.borderColor = UIColor.lightGray.cgColor
            cell.layer.borderWidth = 0.5
        }
    }
    
    //collection view padding
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        
        return UIEdgeInsets(top: 16, left: 16, bottom: 16, right: 16)
    }
    
}
