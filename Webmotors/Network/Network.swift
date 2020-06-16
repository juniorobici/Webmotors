//
//  Network.swift
//  Webmotors
//
//  Created by Junior Obici on 15/06/20.
//  Copyright © 2020 Junior Obici. All rights reserved.
//

import Foundation

class Network {
    private static let session = URLSession(configuration: configuration)
    
    private static let configuration: URLSessionConfiguration = {
        let config = URLSessionConfiguration.default
        config.allowsCellularAccess = true
        config.httpAdditionalHeaders = ["Content-Type": "application/json; charset=utf-8"]
        config.timeoutIntervalForRequest = 30.0
        config.httpMaximumConnectionsPerHost = 5
        return config
    }()
    
    static func getSession() -> URLSession {
        return URLSession(configuration: configuration)
    }
    
    static func getURL() -> String {
        return RestConstant.baseURL
    }
}
