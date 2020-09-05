//
//  Data.swift
//  NewsReader
//
//  Created by Luiza on 05.09.2020.
//  Copyright © 2020 Luiza. All rights reserved.
//

import Foundation
struct Results: Decodable{
    let hits: [Post]
}

struct Post: Decodable, Identifiable {
    var id: String{
        return objectID
    }
    let objectID: String
    let points: Int
    let title: String
    let url: String?
}
