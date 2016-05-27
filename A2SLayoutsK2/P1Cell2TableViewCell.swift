//
//  P1Cell2TableViewCell.swift
//  A2SLayoutsK2
//
//  Created by admin on 5/21/2559 BE.
//  Copyright © 2559 All2Sale. All rights reserved.
//

import UIKit
import MapleBacon
import Alamofire

class P1Cell2TableViewCell: UITableViewCell, UICollectionViewDataSource, UICollectionViewDelegate {

    @IBOutlet weak var collectionView:UICollectionView!
    
    var dataArray = NSArray()
    
    
    func loadData() {
        Alamofire.request(.POST, "https://www.all2sale.com/sendmail/testfunction/json/apitest.php", parameters: ["api":"product_rand","product_rand":"8"]).responseJSON { response in
            //print(response.result.value)
            self.dataArray = response.result.value as! NSArray
            self.collectionView.reloadData()
        }
    }
    
    func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return dataArray.count
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let col0 = collectionView.dequeueReusableCellWithReuseIdentifier(baseCell.collectCell0, forIndexPath: indexPath) as? P1Cell2CollectionViewCell
        let dummyImageURL = NSURL(string: dummyImage("175x175"))
        let item = dataArray[indexPath.row] as! NSDictionary
        col0?.lblProductName.text = item.objectForKey("ProductName") as? String
        col0?.lblProductPrice.text = item.objectForKey("ProductPrice") as? String
        var baseUrl = "https://www.all2sale.com/store/"
        let imageFullUrl = item.objectForKey("ProductShowImage") as? String
        baseUrl += imageFullUrl!
        let imageUrl = NSURL(string: baseUrl)
        col0?.imageViewProduct.setImageWithURL(imageUrl!)
        let productRaing = item.objectForKey("ProductRating") as! String
        let productRaingUrl = NSURL(string: getProductRating(productRaing))
        col0?.imageViewProductRating.setImageWithURL(productRaingUrl!)
        //print(productRaing)
        //col0?.layer.borderWidth = 1
        //col0?.layer.borderColor = UIColor.blackColor().CGColor
        
        return col0!
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        loadData()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
