//
//  P1ProductAllViewController.swift
//  A2SLayoutsK2
//
//  Created by admin on 5/23/2559 BE.
//  Copyright © 2559 All2Sale. All rights reserved.
//

import UIKit
import MapleBacon
import Alamofire

class P1ProductAllViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {

    @IBOutlet weak var collectionView: UICollectionView!
    
    private var numberOfItemPerSection = 16
    
    var dataJSON = NSArray()
    
    func loadJSON() {
        Alamofire.request(.POST,"https://www.all2sale.com/sendmail/testfunction/json/apitest.php",parameters: ["api":"productall","productall":numberOfItemPerSection]).responseJSON { response in
            //print(response.result)
            self.dataJSON = response.result.value as! NSArray
            //print(self.dataJSON.description)
            self.collectionView.reloadData()
            
        }
    }
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        //return numberOfItemPerSection
        return self.dataJSON.count
    }

    func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        return 1
    }
    
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let col0 = collectionView.dequeueReusableCellWithReuseIdentifier(baseCell.collectCell0, forIndexPath: indexPath) as? P1ProductAllCell0CollectionViewCell
        let dummyImageURL = NSURL(string: dummyImage("176x176"))
        let item = dataJSON[indexPath.row] as! NSDictionary
        col0?.lblProductName.text = item.objectForKey("ProductName") as? String
        col0?.imageViewProduct.setImageWithURL(dummyImageURL!)
        return col0!
    }
    
    func scrollViewDidScroll(scrollView: UIScrollView) {
        let offsetY = scrollView.contentOffset.y
        //print("offsetY\(offsetY)")
        let contentHeight = scrollView.contentSize.height
        //print("contentHeight\(contentHeight)")
        //if offsetY > contentHeight - scrollView.frame.size.height {
        if ((scrollView.contentOffset.y + scrollView.frame.size.height) >= scrollView.contentSize.height) {
            numberOfItemPerSection += 9
            self.collectionView.reloadData()
            print("numberOfItemPerSection\(numberOfItemPerSection)")
            loadJSON()
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
