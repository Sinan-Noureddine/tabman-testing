//
//  testViewController.swift
//  testingLibrary
//
//  Created by Sinan NourEddine on 8/2/18.
//  Copyright © 2018 Lelabodigital. All rights reserved.
//

import UIKit

class testViewController: UIViewController {

    var articles: [Article] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        articles = createArray()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func createArray() -> [Article]{
        
        var tempArticles: [Article] = []
        
        
        let article1 = Article(image: #imageLiteral(resourceName: "ttt"),  category: "Testing")

        for _ in 1...10 {
             tempArticles.append(article1)
        }
        
    
        return tempArticles
    }

    
}

extension testViewController: UITableViewDataSource, UITableViewDelegate{
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return articles.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let article = articles[indexPath.row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "testingcell") as! ArticleCell
        
        cell.setArticle(article: article)
        
        return cell
    }
    
    
    
    
    
}
