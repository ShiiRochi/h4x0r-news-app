//
//  NetworkManager.swift
//  HAX0R News
//
//  Created by Денис Богданенко on 11.02.2021.
//

import Foundation

class NetworkManager: ObservableObject {
    @Published var posts = [Post]();
    
    func fetchData () {
        if let url = URL(string: "http://hn.algolia.com/api/v1/search?tags=front_page") {
            let session = URLSession(configuration: .default);
            
            let task = session.dataTask(with: url) { (mayBeData, mayBeResponse, mayBeError) in
                if mayBeError == nil {
                    let decoder = JSONDecoder();
                    
                    if let data = mayBeData {
                        do {
                            // здесь точно будут данные
                            let decodedData = try decoder.decode(PostsData.self, from: data);
                            
                            DispatchQueue.main.async {
                                self.posts = decodedData.hits;
                            }
                            
                        } catch {
                            print(error.localizedDescription);
                        }
                    }
                }
            }
            
            task.resume();
        }
    };
};
