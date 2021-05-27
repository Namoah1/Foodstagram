//
//  PostCollectionViewController.swift
//  Foodstagram
//
//  Created by Nana Adwoa Odeibea Amoah on 5/27/21.
//  Copyright © 2021 Nana Adwoa Odeibea Amoah. All rights reserved.
//

import UIKit

class PostCollectionViewController: UICollectionViewController {

    let posts = getPosts()
        
    override func viewDidLoad() {
        super.viewDidLoad()

      
    }
    
    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return posts.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "postCell", for: indexPath) as! PostCollectionViewCell
        
        let post = posts[indexPath.row]
        cell.postImageView.image = UIImage(named: post.image)
        cell.postNameLabel.text = post.name
    
        return cell
    }

    

}
