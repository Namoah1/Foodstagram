//
//  FoodCollectionViewController.swift
//  Foodstagram
//
//  Created by Nana Adwoa Odeibea Amoah on 5/26/21.
//  Copyright © 2021 Nana Adwoa Odeibea Amoah. All rights reserved.
//

import UIKit

private var food : [Food] = [ Food(image: "fufu", name: "Fufu"), Food(image: "banku", name: "Banku"), Food(image: "waakye", name: "Waakye")]

class FoodCollectionViewController: UICollectionViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }

   
    @IBAction func unwindToMain(segue: UIStoryboardSegue){
        
    }
    
    
    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return food.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "dataCell", for: indexPath) as! FoodCollectionViewCell
        let meal = food[indexPath.row]
        
        cell.foodImageView.image = UIImage(named: meal.image)
        cell.foodNameLabel.text = meal.name
    
        return cell
    }
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        <#code#>
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "BlowUp" {
            if let indexPaths = collectionView.indexPathsForSelectedItems {
                let destinationVC = segue.destination as! FoodDetailViewController
                destinationVC.food =  food[indexPaths[0].row]
                collectionView.deselectItem(at: indexPaths[0], animated: false)
            }
        }
    }


    

}
