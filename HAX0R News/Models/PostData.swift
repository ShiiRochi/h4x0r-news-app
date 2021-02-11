//
//  PostData.swift
//  HAX0R News
//
//  Created by Денис Богданенко on 11.02.2021.
//

import Foundation

struct PostsData: Codable {
    let page: Int;
    let nbPages: Int;
    let hitsPerPage: Int;
    let exhaustiveNbHits: Bool;
    let hits: [Post]
}

struct Post: Codable, Identifiable {
    let objectID: String;
    var id: String {
        objectID;
    };
    let title: String;
    let url: String?;
    let points: Int;
};
