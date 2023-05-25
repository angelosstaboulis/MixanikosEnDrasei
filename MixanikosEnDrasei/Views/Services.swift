//
//  Services.swift
//  MixanikosEnDrasei
//
//  Created by Angelos Staboulis on 23/5/23.
//

import SwiftUI

struct Services: View {
    var services:[String] = ["Άδειες – Βεβαιώσεις – Ενεργειακά Πιστοποιητικά","Επίβλεψη και Διαχείριση Έργων","Προτάσεις – Λύσεις Ανακαινίσεις"]
    var body: some View {
        VStack{
            Image("logo1").resizable().frame(width:300,height:200)
            List(services,id:\.self){ services in
                NavigationLink(services) {
                    if services == "Άδειες – Βεβαιώσεις – Ενεργειακά Πιστοποιητικά"{
                        Adeies_Vevaioseis()
                    } else if services == "Επίβλεψη και Διαχείριση Έργων"{
                        Epivlepsis()
                    } else if services == "Προτάσεις – Λύσεις Ανακαινίσεις"{
                        Protaseis_Anakainiseis()
                    }
                }
              
            }.colorScheme(.dark)
        }.frame(width:UIScreen.main.bounds.width,height:UIScreen.main.bounds.height-200)
            .background(.black)
    }
}

struct Services_Previews: PreviewProvider {
    static var previews: some View {
        Services()
    }
}
