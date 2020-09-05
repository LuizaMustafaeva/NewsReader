//
//  WebView.swift
//  NewsReader
//
//  Created by Luiza on 05.09.2020.
//  Copyright © 2020 Luiza. All rights reserved.
//


import SwiftUI
import WebKit

struct WebView: UIViewRepresentable{
    let urlString: String?
    
    func makeUIView(context: Context) -> WKWebView{
        return WKWebView()
    }
    func updateUIView(_ uiView: WKWebView, context: Context) {
        if let safeString = urlString{
            if let url = URL(string: safeString){
                let request = URLRequest(url: url)
                uiView.load(request)
            }
        }
    }
}
