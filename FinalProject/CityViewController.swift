//
//  CityViewController.swift
//  FinalProject
//
//  Created by Jesus Fabian on 12/7/16.
//  Copyright © 2016 CS3714. All rights reserved.
//

import UIKit

class CityViewController: UIViewController {

    
    var cityNamePassed = ""
    
    @IBAction func toRestaurantView(_ sender: Any) {
         performSegue(withIdentifier: "restaurants", sender: self)
    }
    
    @IBOutlet var cityLabel: UINavigationItem!
    
    
    
    @IBAction func goToHotels(_ sender: Any) {
        performSegue(withIdentifier: "hotels", sender: self)
    }
    
    @IBAction func goToSightseeing(_ sender: Any) {
         performSegue(withIdentifier: "sightSeeing", sender: self)

    }
    
    
    
 
    
    /*
     -----------------------------------
     MARK: - Play Sound on Shake Gesture
     -----------------------------------
     */
    
    // This method plays the turkey gobble sound if the detected motion is a Shake Gesture
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        
        // If the detected motion is a Shake Gesture
        if event!.subtype == UIEventSubtype.motionShake {
            
            let alertController = UIAlertController(title: "Did you know?", message: "Boston is home to the oldest park in the US", preferredStyle: .alert)
            present(alertController, animated: true, completion: nil)
            
            let when = DispatchTime.now() + 4
            DispatchQueue.main.asyncAfter(deadline: when){
                alertController.dismiss(animated: true, completion: nil)
            }
        }
    }
    
    
   
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        cityLabel.title = cityNamePassed
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        if segue.identifier == "sightSeeing"{
            let sightSeeingVC: SightseeingTableViewController = segue.destination as! SightseeingTableViewController
            //sightSeeingVC.cityNamePassed = self.cityNameToPass
        }
        else if segue.identifier == "restaurants" {
            let restaurantTVC: RestaurantsTableViewController = segue.destination as! RestaurantsTableViewController
        }
        else {
            let hotelTVC: HotelsTableViewController = segue.destination as! HotelsTableViewController
        }
    }
    

    
    
    
    
    
    
    
    
    

   }
