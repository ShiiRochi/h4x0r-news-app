//
//  WebView.swift
//  HAX0R News
//
//  Created by Денис Богданенко on 12.02.2021.
//

import Foundation
import SwiftUI
import WebKit

struct WebView: UIViewRepresentable {
    let urlString: String?;
    
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView();
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        if let safeUrl = urlString {
            if let url = URL(string: safeUrl) {
                let request = URLRequest(url: url);
                
                uiView.load(request);
            }
        }
    }
}
