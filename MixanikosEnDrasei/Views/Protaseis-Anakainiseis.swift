//
//  Protaseis-Anakainiseis.swift
//  MixanikosEnDrasei
//
//  Created by Angelos Staboulis on 23/5/23.
//

import SwiftUI

struct Protaseis_Anakainiseis: View {
    @State var protaseis : String =
    """
       Το γραφείο μας, στελεχωμένο από έμπειρους διακοσμητές και αρχιτέκτονες,προτείνει λύσεις
   για την ανανέωση της οικίας σας,γρήγορα και οικονομικά.
   Στοχευμένες λύσεις ανανεώνουν το περιβάλλον που ζούμε, ίσως τον περισσότερο χρόνο της ζωής μας.
   """
    var body: some View {
        ScrollView{
            VStack{
                Image("protaseis").resizable().frame(width: 350,height:250,alignment: .center)
                Text(protaseis).foregroundColor(.yellow)
            }
        }.navigationTitle("Προτάσεις - Ανακαινίσεις")
          .navigationBarTitleDisplayMode(.inline)
          .frame(width:UIScreen.main.bounds.width,height:UIScreen.main.bounds.height-150)
          .background(.black)
    }
}

struct Protaseis_Anakainiseis_Previews: PreviewProvider {
    static var previews: some View {
        Protaseis_Anakainiseis()
    }
}
