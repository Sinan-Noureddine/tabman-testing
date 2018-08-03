//
//  Article.swift
//  AnbaaOnline
//
//  Created by Sinan NourEddine on 7/31/18.
//  Copyright © 2018 Lelabodigital. All rights reserved.
//

import Foundation
import UIKit

class Article {

    var category: String
    var image: UIImage
    
    
    init(image:UIImage, category: String){
        self.image = image
        self.category = category
    }
    
}
