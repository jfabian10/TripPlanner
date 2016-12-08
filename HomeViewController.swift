//
//  HomeViewController.swift
//  FinalProject
//
//  Created by Jesus Fabian on 12/7/16.
//  Copyright © 2016 CS3714. All rights reserved. FINAL
//

import UIKit

class HomeViewController: UIViewController {
    
    
    
    
    var cityNameToPass = ""
    @IBOutlet var searchedMovieText: UITextField!
    
    
    @IBAction func sayCity(_ sender: Any) {
        
    }
    
    

    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    ////hides keyboard when user taps Search
    @IBAction func textFieldShouldReturn(_ sender: UITextField) {
        searchedMovieText.resignFirstResponder()
        cityNameToPass = searchedMovieText.text! ////loads string name to pass to next VC
        searchedMovieText.text = ""
        performSegue(withIdentifier: "searchedCity", sender: self)
    }
    
    
    
    
    //prepare for segue
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        if segue.identifier == "searchedCity"{
            let searchCityViewController: CityViewController = segue.destination as! CityViewController
            searchCityViewController.cityNamePassed = self.cityNameToPass
        }
    }
    

    
}
