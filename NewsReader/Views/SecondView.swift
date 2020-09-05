//
//  SecondView.swift
//  NewsReader
//
//  Created by Luiza on 05.09.2020.
//  Copyright © 2020 Luiza. All rights reserved.
//

import SwiftUI
import WebKit

struct SecondView: View {
    let url: String?
    var body: some View {
        WebView(urlString: url)
    }
}

struct SecondView_Previews: PreviewProvider {
    static var previews: some View {
        SecondView(url: "https://www.google.com")
    }
}


