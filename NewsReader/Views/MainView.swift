//
//  MainView.swift
//  NewsReader
//
//  Created by Luiza on 05.09.2020.
//  Copyright © 2020 Luiza. All rights reserved.
//
import SwiftUI

struct MainView: View {
   @ObservedObject var networkManager = NetworkManager()
    var body: some View {
        NavigationView{
            List(networkManager.posts){ post in
                NavigationLink(destination: SecondView(url: post.url)){
                    HStack{
                        Text(String(post.points))
                        Text(post.title)
                    }
                }
            }
            .navigationBarTitle("News")
        }
        .onAppear{
            self.networkManager.fetchData()
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}

