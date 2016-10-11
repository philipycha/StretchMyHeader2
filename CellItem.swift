//
//  CellItem.swift
//  StretchMyHeader2
//
//  Created by Philip Ha on 2016-10-11.
//  Copyright © 2016 Philip Ha. All rights reserved.
//

import UIKit

struct CellItem {
    
    enum Category: String {
        case World = "World"
        case Americas = "Americas"
        case Europe = "Europe"
        case MiddleEast = "Middle East"
        case Africa = "Africa"
        case AsiaPacific = "Asia Pacific"
    }
    
    enum Headline: String {
        case World = "South Africa in $40 billion deal for Russian nuclear reactors"
        case Americas = "Officials: FBI is tracking 100 Americans who fought alongside IS in Syria"
        case Europe = "Scotland's 'Yes' leader says independence vote is 'once in a lifetime'"
        case MiddleEast = "Airstrikes boost Islamic State, FBI director warns more hostages possible"
        case Africa = "Nigeria says 70 dead in building collapse; questions S. Africa victim claim"
        case AsiaPacific = "Despite UN ruling, Japan seeks backing for whale hunting"
    }
    
    var category: Category
    var headline: Headline
    
    init(category: Category, headline: Headline) {
        self.category = category
        self.headline = headline
    }
}


