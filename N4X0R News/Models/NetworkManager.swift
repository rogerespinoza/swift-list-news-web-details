//
//  NetworkManager.swift
//  N4X0R News
//
//  Created by Roger Espinoza on 9/1/23.
//

import Foundation

class NetworkManager: ObservableObject {
    
//    var posts = [Post]()
    @Published var posts: [Post] = []
    
    func fetchData() {
        if let url = URL(string: "https://hn.algolia.com/api/v1/search?tags=front_page") {
            let session = URLSession(configuration: .default)
            let task = session.dataTask(with: url) { data, response, error in
                if error == nil {
                    let decoder = JSONDecoder()
                    if let safeData = data {
                        do {
                            let response = try decoder.decode(Results.self, from: safeData)
                            DispatchQueue.main.async {
                                self.posts = response.hits
                            }
                        } catch {
                          print(error)
                        }
                    }
                }
            }
            task.resume()
        }
    }
}
