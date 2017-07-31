//
//  Interest.swift
//  Interests
//
//  Created by Duc Tran on 6/13/15.
//  Copyright © 2015 Developer Inspirus. All rights reserved.
//

import UIKit

class Interest
{
    
    var title = ""
    var featuredImage: UIImage
    var color: UIColor
    
    init(title: String, featuredImage: UIImage, color: UIColor)
    {
        self.title = title
        self.featuredImage = featuredImage
        self.color = color
    }
    
    
    static func fetchInterests() -> [Interest]
    {
        return [
            Interest(title: "Kate Moss Smoked", featuredImage: UIImage(named: "Eman0")!, color: UIColor(red: 63/255.0, green: 71/255.0, blue: 80/255.0, alpha: 0.8)),
            Interest(title: "Kate Moss Burning", featuredImage: UIImage(named: "Eman1")!, color: UIColor(red: 240/255.0, green: 133/255.0, blue: 91/255.0, alpha: 0.8)),
            Interest(title: "Supply & Demand", featuredImage: UIImage(named: "Eman2")!, color: UIColor(red: 105/255.0, green: 80/255.0, blue: 227/255.0, alpha: 0.8)),
            Interest(title: "She", featuredImage: UIImage(named: "Eman3")!, color: UIColor(red: 102/255.0, green: 102/255.0, blue: 102/255.0, alpha: 0.8)),
            
            Interest(title: "She Can Rebel", featuredImage: UIImage(named: "Eman4")!, color: UIColor(red: 245/255.0, green: 62/255.0, blue: 40/255.0, alpha: 0.8)),
            Interest(title: "Apple & Eve", featuredImage: UIImage(named: "Eman5")!, color: UIColor(red: 103/255.0, green: 217/255.0, blue: 87/255.0, alpha: 0.8)),
            Interest(title: "Kate Doing the Most", featuredImage: UIImage(named: "Eman6")!, color: UIColor(red: 63/255.0, green: 71/255.0, blue: 80/255.0, alpha: 0.8)),
            Interest(title: "Eve Bears Fruits", featuredImage: UIImage(named: "Eman7")!, color: UIColor(red: 240/255.0, green: 133/255.0, blue: 91/255.0, alpha: 0.8)),
        ]
    }
}
