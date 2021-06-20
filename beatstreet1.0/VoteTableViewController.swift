//
//  ReportViewController.swift
//  beatstreet1.0
//
//  Created by Natalie Lampa on 12/7/2020.
//

import UIKit
import Firebase
import SDWebImage

class VoteStreetTableViewController: UITableViewController // view controller holding some basic preset data as examples
{
    var streets = [Street]()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let street1 = Street(name: "1) Pulaski & Foster", image: UIImage(named: "1"), votes: 108, ward: "Ward: 12")
        
        let street2 = Street(name: "2) Lake & Laramie", image: UIImage(named: "2"), votes: 87, ward: "Ward: 65")
        
        let street3 = Street(name: "3) Lawrence & Central", image: UIImage(named: "3"), votes: 46, ward: "Ward: 15"  )
         
        let street4 = Street(name: "4) Irving Park & Austin", image: UIImage(named: "4"), votes: 28, ward: "Ward: 45")
        
        let street5 = Street(name: "5) 26th & Cicero", image: UIImage(named: "5"), votes: 18, ward: "13")
        
        let street6 = Street(name: "6) Lake & Laramie", image: UIImage(named: "6"), votes: 4, ward: "24")
        
        
        
        streets = [street1, street2, street3, street4 , street5 , street6] // used to append our pre-SET data.
        
        tableView.reloadData()
        
        
        
        
        
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false
        
        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

   
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return streets.count
    }
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return self.view.frame.height/3
    }
    
    override func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        return UIView()
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell // cell function to display on screen cell
    {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TableViewCell
        let street = streets[indexPath.row]          // will tie the street class to the data
        cell.labelStreet.text = street.name         // will display the street names stored in data
        cell.labelWard.text = street.ward
        
        cell.imageCell.image = street.image! // will display the images stores in data
        // Configure the cell...
        
        
        
        return cell
    } // [tableView END]
    
//    override func numberOfSections(in tableView: UITableView) -> Int {
//        // #warning Incomplete implementation, return the number of sections
//        return 1
//    }
//
//    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        // #warning Incomplete implementation, return the number of rows
//        return items.count
//    }

    
}// [CLASS END]
