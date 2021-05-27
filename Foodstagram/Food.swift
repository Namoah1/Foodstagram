//
//  Food.swift
//  Foodstagram
//
//  Created by Nana Adwoa Odeibea Amoah on 5/26/21.
//  Copyright © 2021 Nana Adwoa Odeibea Amoah. All rights reserved.
//

import Foundation

struct Food {
    var image: String = ""
    var name: String = ""
    
    init(image: String, name: String) {
        self.image = image
        self.name = name
    }
}
