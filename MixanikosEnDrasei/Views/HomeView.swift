//
//  HomeView.swift
//  MixanikosEnDrasei
//
//  Created by Angelos Staboulis on 23/5/23.
//

import SwiftUI

struct HomeView: View {
    @StateObject var viewModel = ViewModel()
    
    var body: some View {
            VStack{
                Image("main").resizable()
                    .overlay {
                        VStack{
                            VStack{
                                ZStack{
                                    VStack{
                                        VStack{
                                            HStack{
                                                Text("Μηχανικός Εν Δράσει").foregroundColor(.white)
                                                    .font(.largeTitle).padding(60)
                                            }.frame(width:500,height:50)
                                            HStack{
                                                Text("Νίκος Γιαννακουδάκης").foregroundColor(.white)
                                                    .font(.title3)
                                            }
                                        }.frame(width: 500, height: 45, alignment: .top)
                                            .padding(-200)
                                    }.frame(width: 500, height: 45, alignment: .top)
                                    
                                }.padding(180)


                                NavigationLink {
                                    Projects().onAppear {
                                            viewModel.isHighLightServices = false
                                            viewModel.setHighLightProjects()
                                        }
                                } label: {
                                    Text("Τα έργα μας").foregroundColor(.white)
                                }.frame(width:300.0,height: 45.0)
                                    .buttonBorderShape(.roundedRectangle)
                                    .border(.white)
                                    .background(viewModel.getHighLightProjects() ? .yellow : .clear)
                                    .padding(30.0)
                                    
                                   
                                NavigationLink {
                                    Services().onAppear {
                                        viewModel.isHighLightProjects = false
                                        viewModel.setHighLightServices()
                                    }
                                } label: {
                                    Text("Υπηρεσίες").foregroundColor(.white)

                                }.frame(width:300.0,height: 45.0)
                                    .buttonBorderShape(.roundedRectangle)
                                    .border(.white)
                                    .background(viewModel.getHighLightServices() ? .yellow : .clear)
                                    .padding(30.0)
                            }
                        }.padding(160.0)
                    }
            }.foregroundColor(.black)
            
               
    
        
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
