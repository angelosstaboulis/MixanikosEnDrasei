//
//  SwiftUIWebView.swift
//  MixanikosEnDrasei
//
//  Created by Angelos Staboulis on 23/5/23.
//

import SwiftUI

struct SwiftUIWebView: View {
    @State var urlMain:String?
    var body: some View {
        VStack{
            WebViewSwiftUI(filePath:(URL(string:urlMain!)!))

        }
    }
}

