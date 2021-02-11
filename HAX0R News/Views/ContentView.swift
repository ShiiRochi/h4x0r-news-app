//
//  ContentView.swift
//  HAX0R News
//
//  Created by Денис Богданенко on 11.02.2021.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var networkManager = NetworkManager();
    
    var body: some View {
        NavigationView {
            List(networkManager.posts) { post in
                NavigationLink(destination: DetailView(url: post.url)) {
                    HStack {
                        Text(String(post.points));
                        Text(post.title);
                    }
                }
            }
            .navigationTitle("H4X0R News")
        }
        
        .onAppear(perform: {
            self.networkManager.fetchData();
        })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

let posts = [
    Post(objectID: "1", title: "Putin Strikes Back dasdasd dasd dsad  sadasd  dasdasd a!", url: nil, points: 0),
    Post(objectID: "2", title: "Russia is uprising!", url: nil, points: 0),
    Post(objectID: "3", title: "How I've ruined a server?", url: nil, points: 0)
];
