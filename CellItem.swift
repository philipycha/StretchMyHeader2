//
//  CellItem.swift
//  StretchMyHeader2
//
//  Created by Philip Ha on 2016-10-11.
//  Copyright © 2016 Philip Ha. All rights reserved.
//

import UIKit

struct CellItem {
    
    enum Category {
        case World
        case Americas
        case Europe
        case MiddleEast
        case Africa
        case AsiaPacific
        
        func toString() -> String {
            switch self {
            case .World:
                return "World"
            case .Americas:
                return "Americas"
            case .Europe:
                return "Europe"
            case .MiddleEast:
                return "Middle East"
            case .Africa:
                return "Africa"
            case .AsiaPacific:
                return "Asia Pacific"
            }
        }
        
        func toColor() -> UIColor {
            switch self {
            case .World:
                return .red
            case .Americas:
                return .blue
            case .Europe:
                return .green
            case .MiddleEast:
                return .yellow
            case .Africa:
                return .orange
            case .AsiaPacific:
                return .purple
            }
        }
    }
    
    var category: Category
    var headline: String
    
    // MARK: Initialization
    
    init(category: Category, headline: String) {
        self.category = category
        self.headline = headline
    }
}
