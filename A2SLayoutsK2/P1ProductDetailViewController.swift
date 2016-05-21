//
//  P1ProductDetailViewController.swift
//  A2SLayoutsK2
//
//  Created by admin on 5/21/2559 BE.
//  Copyright © 2559 All2Sale. All rights reserved.
//

import UIKit
import MapleBacon

class P1ProductDetailViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableView:UITableView!
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 3
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return 2
        } else if section == 1 {
            return 1
        } else {
            return 1
        }
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        /*
        let cell0 = tableView.dequeueReusableCellWithIdentifier(baseCell.tableCell0)
        return cell0!
        */
        if indexPath.section == 0 {
            //section 0
            if indexPath.row == 0 {
                let cell0 = tableView.dequeueReusableCellWithIdentifier(baseCell.tableCell0) as? P1ProductDetailCell0TableViewCell
                let dummyImageURL = NSURL(string: dummyImage("584x193"))
                cell0?.imageViewProduct.setImageWithURL(dummyImageURL!)
                return cell0!
            } else {
                let cell1 = tableView.dequeueReusableCellWithIdentifier(baseCell.tableCell1)
                return cell1!
            }
        } else if indexPath.section == 1 {
            //section 1
            if indexPath.row == 0 {
                let cell3 = tableView.dequeueReusableCellWithIdentifier(baseCell.tableCell2)
                return cell3!
            } else {
                let cell4 = tableView.dequeueReusableCellWithIdentifier(baseCell.tableCell0)
                return cell4!
            }
        } else {
            let cell5 = tableView.dequeueReusableCellWithIdentifier(baseCell.tableCell3)
            
            return cell5!
        }
    }
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        if indexPath.section == 0 {
            //
            if indexPath.row == 0 {
                return 300
            } else {
                return 100
            }
        } else {
            //
            if indexPath.row == 1 {
                return 100
            } else {
                return 100
            }
        }
    }
    
    func tableView(tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        if section == 0 {
            return CGFloat.min
        }
        return 25
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
