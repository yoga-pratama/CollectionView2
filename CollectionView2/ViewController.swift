//
//  ViewController.swift
//  CollectionView2
//
//  Created by Yoga Pratama on 02/11/18.
//  Copyright © 2018 YPA. All rights reserved.
//

import UIKit

class ViewController:UIViewController,UICollectionViewDelegate,UICollectionViewDataSource {
   
    @IBOutlet var collectionView: UICollectionView!
    
    let store = DataStore.sharedInstance

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        store.getBookImages {
            self.collectionView.reloadSections(IndexSet(integer: 0 ))
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return store.audiobooks.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "collectionViewCell", for: indexPath) as! CollectionViewCell
        let book = store.audiobooks[indexPath.row]
        
        cell.displayContent(image: store.images[indexPath.row], title: book.name)
        return cell
        
    }


}

