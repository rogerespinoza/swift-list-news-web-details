//
//  ContentView.swift
//  N4X0R News
//
//  Created by Roger Espinoza on 8/1/23.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var networkManager = NetworkManager()
    
    var body: some View {
        NavigationView {
            List(networkManager.posts) { post in
                NavigationLink(destination: DetailsView(url: post.url)) {
                    HStack {
                        Text(String(post.points))
                        Text(post.title)
                    }
                }
                
            }
            .toolbarBackground(Color.purple, for: .navigationBar)
            .navigationTitle("H4X0R NEWS")
            .onAppear {
                networkManager.fetchData()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
