//
//  ViewController.swift
//  TableView_app
//
//  Created by Nguyen Vinh Tien on 10/3/16.
//  Copyright © 2016 ensteintApp. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var restaurantNames = ["Cafe Deadend", "Homei", "Teakha", "Cafe Loisl", "Petite Oyster", "For Kee Restaurant", "Po's Atelier", "Bourke Street Bakery", "Haigh's Chocolate", "Palomino Espresso", "Upstate", "Traif", "Graham Avenue Meats And Deli", "Waffle & Wolf", "Five Leaves", "Cafe Lore", "Confessional", "Barrafina", "Donostia", "Royal Oak", "CASK Pub and Kitchen"]
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return restaurantNames.count
    }
    
    func setStandardName(string: String) -> String {
        let exceptions = [" ", "'", "&"]
        var result = string.lowercaseString
        for exception in exceptions {
            if result.containsString(exception) {
                result = result.stringByReplacingOccurrencesOfString(exception, withString: "")
            }
        }
        return result
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cellIndentifer = "Cell"
        let cell = tableView.dequeueReusableCellWithIdentifier(cellIndentifer, forIndexPath: indexPath)
        let restaurantName = setStandardName(restaurantNames[indexPath.row])
        cell.textLabel?.text = restaurantName
        cell.imageView?.image = UIImage(named: restaurantName)
        return cell
    }
    
    override func prefersStatusBarHidden() -> Bool {
        return true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

