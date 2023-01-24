//
//  PostData.swift
//  N4X0R News
//
//  Created by Roger Espinoza on 9/1/23.
//

import Foundation

struct Results: Decodable {
    let hits: [Post]
}

struct Post: Decodable, Identifiable {
    var id: String {
        objectID
    }
    let objectID: String
    let points: Int
    let title: String
    let url: String?
}
