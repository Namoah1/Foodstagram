//
//  Post.swift
//  Foodstagram
//
//  Created by Nana Adwoa Odeibea Amoah on 5/27/21.
//  Copyright © 2021 Nana Adwoa Odeibea Amoah. All rights reserved.
//

import Foundation

struct Post {
    
    var image = ""
    var name = ""
    
    
    init(image: String, name: String) {
        self.image = ""
        self.name = ""
    }
}

func getPosts() -> [Post] {
    let post1 = Post(image: "fufu", name: "Fufu")
    let post2 = Post(image: "waakye", name: "Waakye")
    let post3 = Post(image: "banku", name: "Banku")
    
    return [post1, post2, post3]
}
