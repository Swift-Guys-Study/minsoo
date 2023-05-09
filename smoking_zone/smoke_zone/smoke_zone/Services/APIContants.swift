//
//  APIContants.swift
//  smoke_zone
//
//  Created by 강민수 on 2023/05/08.
//

import Foundation

struct APIConstants {
    // MARK: -  Base URL
    static let baseURL = "http://apis.data.go.kr/3040000/smokingService"
    
    // MARK: - Feature URL
    static let allmenuURL = baseURL + "/api/menus"
    
    static let bestmenuURL = baseURL + "/api/menus/shop"
    
    static let allshopURL = baseURL + "/api/shops"
    
    static let filterURL = baseURL + "/api/shops/lists"
}
