//
//  Epivlepsis.swift
//  MixanikosEnDrasei
//
//  Created by Angelos Staboulis on 23/5/23.
//

import SwiftUI

struct Epivlepsis: View {
    @State var epivlepsi : String =
    """
   Η πολύχρονη εμπειρία του Τεχνικού Γραφείου «Νίκος Γιαννακουδάκης», εγγυάται την ολοκληρωμένη και εμπεριστατωμένη μελέτη ενός έργου, αλλά και τη διαχείρισή του.\n Ειδικότερα, αναλαμβάνουμε την αρχιτεκτονική,τη στατική και ηλεκτρομηχανολογική μελέτη του έργου και κατόπιν επιθυμίας του πελάτη, τον προγραμματισμό και την υλοποίησή του. Παρέχουμε τέλος υπηρεσίες συλλογής και αξιολόγησης προσφορών, συντονισμού και διοίκησης-επίβλεψης του έργου, από την αρχή έως το τελικό στάδιο κατασκευής .
   Ειδικότερα, αναλαμβάνουμε:
   Αρχιτεκτονικές μελέτες & μελέτη εφαρμογών
   Στατικές μελέτες
   Ηλεκτρομηχανολογικές μελέτες
   Ενεργειακές μελέτες
   Επίβλεψη – Διαχείριση και Διοίκηση έργου
   """
    var body: some View {
        ScrollView{
            VStack{
                Image("adeies").resizable().frame(width: 300,height:150,alignment: .center)
                Text(epivlepsi).foregroundColor(.yellow)
            }
        }.navigationTitle("Επίβλεψη και Διαχείριση Εργων")
          .navigationBarTitleDisplayMode(.inline)
          .frame(width:UIScreen.main.bounds.width,height:UIScreen.main.bounds.height-150)
          .background(.black)
    }
}

struct Epivlepsis_Previews: PreviewProvider {
    static var previews: some View {
        Epivlepsis()
    }
}
