//
//  LandingViewController.swift
//  AnbaaOnline
//
//  Created by Sinan NourEddine on 7/30/18.
//  Copyright © 2018 Lelabodigital. All rights reserved.
//

import UIKit
import Tabman
import Pageboy

class LandingViewController: TabmanViewController, PageboyViewControllerDataSource {
    
    //
    private lazy var controllers: [UIViewController] = {
        var controllers: [UIViewController] = []
        //ignore this
        let arString = [ "17981","171","170", "169", "168","167"]
        
        for item in arString
        {
                guard let controller = storyboard?.instantiateViewController(withIdentifier: "testViewController") as? testViewController else {
                    fatalError("For some reason couldn't create the controller from the storyboard")
                }
                controllers.append(controller)
            
        }
        
        return controllers
    }()
    
    func numberOfViewControllers(in pageboyViewController: PageboyViewController) -> Int {
        return 6
    }
    
    func viewController(for pageboyViewController: PageboyViewController, at index: PageboyViewController.PageIndex) -> UIViewController? {
        return controllers[index]
    }
    
    func defaultPage(for pageboyViewController: PageboyViewController) -> PageboyViewController.Page? {
        return nil
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        scrollToPage(PageboyViewController.Page.last, animated: false)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //setNavigationItem()
        self.dataSource = self
        
        // configure the bar
        self.bar.items = [Item(title: "Tab1"),
                          Item(title: "Tab2"),
                          Item(title: "Tab3"),
                          Item(title: "Tab4"),
                          Item(title: "Tab5"),
                          Item(title: "Tab6")]
    }
}
