//
//  P1Cell2CollectionViewCell.swift
//  A2SLayoutsK2
//
//  Created by admin on 5/21/2559 BE.
//  Copyright © 2559 All2Sale. All rights reserved.
//

import UIKit

class P1Cell2CollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var imageViewProduct: UIImageView!
    @IBOutlet weak var lblProductName: UILabel!
    @IBOutlet weak var lblProductPrice: UILabel!
    @IBOutlet weak var imageViewProductRating: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        //lblProductName.backgroundColor = UIColor(red: 166, green: 166, blue: 166, alpha: 0.7)
        //lblProductPrice.backgroundColor = UIColor(red: 166, green: 166, blue: 166, alpha: 0.7)
        // Initialization code
    }

}
