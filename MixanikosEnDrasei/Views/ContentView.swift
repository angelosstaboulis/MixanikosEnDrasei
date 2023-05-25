//
//  ContentView.swift
//  MixanikosEnDrasei
//
//  Created by Angelos Staboulis on 23/5/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            TabView{
                HomeView().tabItem {
                    Label("Αρχική", image: "home")
                }.navigationTitle("Mhxanikos")
                 .navigationBarTitleDisplayMode(.inline)
                WhoWeAre().tabItem {
                    Label("Ποιοί είμαστε", image: "resume")
                }
                Services().tabItem {
                    Label("Υπηρεσίες", image: "services")
                }
                FindUS().tabItem {
                    Label("Βρείτε μας", image: "map")
                }
                Projects().tabItem {
                    Label("Τα έργα μας", image: "workers")
                }
            }.navigationTitle("Μηχανικός Εν Δράσει")
             .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
