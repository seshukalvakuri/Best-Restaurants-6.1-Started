//
//  RestaurantsTableViewController.swift
//  Beset Restaurants
//
//  Created by Michael Rogers on 8/14/18.
//  Copyright © 2018 Michael Rogers. All rights reserved.
//

import UIKit

class RestaurantsTableViewController: UITableViewController {
    
    //var restaurants:[String] = ["Planet Sub", "Subway", "Applebee's", "Pizza Ranch", "A&Gs", "Jimmy Johns"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return Restaurants.shared.numRestaurants()
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "restaurantCell", for: indexPath)
        cell.textLabel?.text = Restaurants.shared[indexPath.row].name
        
        return cell
    }
    
//    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        let chosenRestaurant = restaurants[indexPath.row]
//        let alert = UIAlertController(title: "Hello", message: "Welcome to \(chosenRestaurant), may I take your order?", preferredStyle: .alert)
//        let alertAction = UIAlertAction(title: "OK", style: .default, handler: nil)
//        alert.addAction(alertAction)
//        self.present(alert, animated: true, completion: nil)
//
//
//    }
    
    
    
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        let restaurantDetailsVC = segue.destination as! RestaurantDetailsViewController
        restaurantDetailsVC.restaurant = Restaurants.shared[tableView.indexPathForSelectedRow!.row]
        
        
    }
    
    
}
