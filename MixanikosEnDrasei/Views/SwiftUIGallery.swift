//
//  SwiftUIGallery.swift
//  MixanikosEnDrasei
//
//  Created by Angelos Staboulis on 25/5/23.
//

import SwiftUI

struct SwiftUIGallery: View {
    var photos:[String] = ["photo1","photo2","photo3","photo4","photo5","photo11","photo12","photo13","photo14","photo15","phoot16","photo21","photo22","photo23","photo24","photo25","photo26"]
    var body: some View {
        ScrollView{
            VStack{
                ForEach(photos,id:\.self){ photo in
                    Image(photo).resizable()
                }
            }
        }
    }
}

