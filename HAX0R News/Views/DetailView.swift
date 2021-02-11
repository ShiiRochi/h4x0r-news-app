//
//  DetailView.swift
//  HAX0R News
//
//  Created by Денис Богданенко on 12.02.2021.
//

import SwiftUI
import WebKit

struct DetailView: View {
    
    let url: String?;
    
    var body: some View {
        WebView(urlString: url);
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(url: "https://yandex.ru")
    }
}
