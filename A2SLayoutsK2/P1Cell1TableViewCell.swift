//
//  P1Cell1TableViewCell.swift
//  A2SLayoutsK2
//
//  Created by admin on 5/21/2559 BE.
//  Copyright © 2559 All2Sale. All rights reserved.
//

import UIKit
import MapleBacon
import Alamofire

class P1Cell1TableViewCell: UITableViewCell, UICollectionViewDataSource, UICollectionViewDelegate {

    @IBOutlet weak var collectionView:UICollectionView!
    
    var dataArray = NSArray()
    
    func loadData() {
        Alamofire.request(.POST, "https://www.all2sale.com/sendmail/testfunction/json/apitest.php", parameters: ["api":"category","category":"all"]).responseJSON { response in
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
        let col0 = collectionView.dequeueReusableCellWithReuseIdentifier(baseCell.collectCell0, forIndexPath: indexPath) as? P1Cell1CollectionViewCell
        let dummyImageURL = NSURL(string: dummyImage("100x100"))
        let item = dataArray[indexPath.row] as! NSDictionary
        col0?.lblProductName.text = item.objectForKey("CategoryName") as? String
        col0?.lblProductPrice.text = item.objectForKey("Id") as? String
        let imageUrl = NSURL(string: (item.objectForKey("ProductShowImage") as? String)!)
        col0?.imageViewProduct.setImageWithURL(imageUrl!)
        return col0!
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        loadData()
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
