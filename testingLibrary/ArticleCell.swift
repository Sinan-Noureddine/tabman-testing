//
//  ArticleCell.swift
//  AnbaaOnline
//
//  Created by Sinan NourEddine on 7/31/18.
//  Copyright © 2018 Lelabodigital. All rights reserved.
//

import UIKit

class ArticleCell: UITableViewCell {

    @IBOutlet weak var imgNews: UIImageView!
    
    @IBOutlet weak var txtCategory: UILabel!
    
    
    func setArticle(article: Article){
        imgNews.image = article.image
        txtCategory.text = article.category
        
    }
}
