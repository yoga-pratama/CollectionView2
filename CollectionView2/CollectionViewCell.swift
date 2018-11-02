//
//  CollectionViewCell.swift
//  CollectionView2
//
//  Created by Yoga Pratama on 02/11/18.
//  Copyright © 2018 YPA. All rights reserved.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {

    @IBOutlet var bookImage : UIImageView!
    @IBOutlet var bookLabel: UILabel!
    
    func displayContent(image: UIImage , title : String){
        bookImage.image = image
        bookLabel.text = title
    }
}
