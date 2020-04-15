//
//  ResturantListTableViewController.swift
//  compass
//
//  Created by Christopther Garcia on 4/15/20.
//  Copyright © 2020 Mac Cooper. All rights reserved.
//

import UIKit
import CDYelpFusion
import YelpAPI
import BrightFutures

class ResturantListTableViewController: UITableViewController {

    // Variables
    var resturantArray = [CDYelpBusiness]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        self.loadResturants()
    }
    
    func loadResturants() {
        DispatchQueue.global(qos: .background).async {
        let appId = "Lex5mNMAJaJ432LpM3CtdA"
        let appSecret = "jA68XPwLGguQMoeEpcW2DMyw7tMB7MXXhmHcwqW_iRRIdMM3Nx_q-f7RjSMGaeDidFJfv7vNth1urlLXXsMPhNArpXmJNKz-yViahoE8MCmGV9sYTAheSzvqMNNmXnYx"

        // Search for 3 dinner restaurants
        let yelpAPIClient = CDYelpAPIClient(apiKey: appSecret)
            yelpAPIClient.cancelAllPendingAPIRequests()
            
        yelpAPIClient.searchBusinesses(byTerm: "Food",
                                        location: "San Francisco",
                                        latitude: nil,
                                        longitude: nil,
                                        radius: 10000,
                                        categories: nil,
                                        locale: .english_unitedStates,
                                        limit: 5,
                                        offset: 0,
                                        sortBy: .rating,
                                        priceTiers: nil,
                                        openNow: true,
                                        openAt: nil,
                                        attributes: nil) { (response) in
                                            if let response = response,
                                                let businesses = response.businesses,
                                                businesses.count > 0 {
                                                print(businesses[0].name)
                                                self.resturantArray = businesses
                                                                      }
                                                            }
            do{
                sleep(4)
            }
            
            for x in self.resturantArray {
                print(x.name)
            }
        }
        self.tableView.reloadData()
        print("reload successful")
    }

    
    

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

//    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        // #warning Incomplete implementation, return the number of rows
//        return 0
//    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "resturantCell", for:indexPath) as! ResturantTableViewCell
        
//        let user = self.resturantArray[indexPath.row]["business"] as! CDYelpBusiness
        let user = resturantArray[indexPath.row]
        
        
        cell.nameLabel.text = user.name
        cell.styleLabel.text = user.displayPhone
        cell.pricingLabel.text = user.price
        cell.ratingLabel.text = user.rating as? String
        
        
        let imageURL = user.imageUrl
        let data = try? Data(contentsOf: imageURL!)
        if let imageData = data {
            cell.imageURLView.image = UIImage(data:imageData)
        }
        
        return cell;
    }
}
