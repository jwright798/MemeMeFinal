//
//  MemeCollectionViewController.swift
//  MemeMeFinal
//
//  Created by Jeremy Wright on 7/1/17.
//  Copyright © 2017 Jeremy Wright. All rights reserved.
//

import UIKit

private let reuseIdentifier = "memeCell"

class MemeCollectionViewController: UICollectionViewController, UICollectionViewDelegateFlowLayout, UINavigationControllerDelegate{
    
    var memes = [Meme]()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Collection"
        self.navigationItem.title = "Sent Memes"
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        //set up the object
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        self.memes = appDelegate.memes
        self.collectionView?.reloadData()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: UICollectionViewDataSource

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return memes.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "memeCell", for: indexPath) as! MemeCollectionViewCell
    
        // Configure the cell
        cell.memeImage.image = memes[indexPath.row].memeImage
    
        return cell
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return CGFloat(-6.0)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout:UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 6.0, left: 6.0, bottom: 6.0, right: 6.0)
    }

}
