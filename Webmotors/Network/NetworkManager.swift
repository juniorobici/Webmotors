//
//  NetworkManager.swift
//  Webmotors
//
//  Created by Junior Obici on 15/06/20.
//  Copyright © 2020 Junior Obici. All rights reserved.
//

import Foundation

enum RestError {
    case url
    case taskError(error: Error)
    case noResponse
    case noData
    case responseStatusCode(code: Int)
    case invalidJSON
}

class NetworkManager {
    class func getCarros(pagina: Int, onComplete: @escaping ([Carros]) -> Void, onError: @escaping (RestError) -> Void) {
        let urlCarros: String = "\(RestConstant.baseURL)\(RestConstant.URLCarros)\(pagina)"
        guard let url = URL(string: urlCarros) else {
            onError(.url)
            return
        }
        let dataTask = Network.getSession().dataTask(with: url) { (data: Data?, response: URLResponse?, error: Error?) in
            if error == nil {
                guard let response = response as? HTTPURLResponse  else {
                    onError(.noResponse)
                    return
                }
                if response.statusCode == 200 {
                    guard let data = data else { return }
                    do {
                        let carros = try JSONDecoder().decode([Carros].self, from: data)
                        onComplete(carros)
                        
                    } catch {
                        print(error.localizedDescription)
                        onError(.invalidJSON)
                    }
                } else {
                    print("Algum status invalido pelo servidor!!! \(response.statusCode)")
                    onError(.responseStatusCode(code: response.statusCode))
                }
            } else {
                print(error!.localizedDescription)
                onError(.taskError(error: error!))
            }
        }
        dataTask.resume()
    }
}
