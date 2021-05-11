//
//  dashboardServicesModel.swift
//  Firstpass Ipad
//
//  Created by Vinitha on 11/05/21.
//

import Foundation
import UIKit

struct ServicesModel: Codable{
    
    var title: String!
    var image: String!
    var color: String!
    
    enum CodingKeys: String, CodingKey {
        case title = "title"
        case image
        case color
    }
    
    
}

