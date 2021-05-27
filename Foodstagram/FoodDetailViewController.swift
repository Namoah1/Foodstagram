//
//  FoodDetailViewController.swift
//  Foodstagram
//
//  Created by Nana Adwoa Odeibea Amoah on 5/26/21.
//  Copyright © 2021 Nana Adwoa Odeibea Amoah. All rights reserved.
//

import UIKit

class FoodDetailViewController: UIViewController {

    var food: Food?
    
    @IBOutlet weak var foodImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        foodImageView.image = UIImage(named: food?.image ?? "")
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
