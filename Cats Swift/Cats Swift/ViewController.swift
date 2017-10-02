//
//  ViewController.swift
//  Cats Swift
//
//  Created by Paul on 2017-10-01.
//  Copyright © 2017 Paul. All rights reserved.
//

import UIKit





class ViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    
    
    var pictures : Array<UIImage> = [#imageLiteral(resourceName: "batman01"),#imageLiteral(resourceName: "batman02"),#imageLiteral(resourceName: "batman03"),#imageLiteral(resourceName: "batman04")];
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    
    }


    //optional
    public func numberOfSections(in collectionView: UICollectionView) -> Int{
        return 1;
        
    }
    

    public func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int{
    
        return pictures.count;
    }
    
    
    public func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell{
    
        let number = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as UICollectionViewCell;
        
        
        let imageView = number.viewWithTag(1) as! UIImageView;
        
        imageView.image = self.pictures[indexPath.row];
        
        
        
        return number
        
    }
    
    


    


}

