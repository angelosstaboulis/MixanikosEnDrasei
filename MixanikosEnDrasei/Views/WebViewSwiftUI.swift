//
//  WebViewSwiftUI.swift
//  MixanikosEnDrasei
//
//  Created by Angelos Staboulis on 23/5/23.
//

import Foundation
import Foundation
import WebKit
import UIKit
import SwiftUI
struct WebViewSwiftUI:UIViewRepresentable{
    var filePath:URL
    typealias UIViewType = WKWebView
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
    public func updateUIView(_ uiView: UIViewType, context: Context) {
        uiView.load(URLRequest(url: filePath))
    }
    init(filePath:URL){
        self.filePath = filePath
    }
    
    
}
