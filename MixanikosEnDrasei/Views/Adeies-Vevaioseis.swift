//
//  Adeies-Vevaioseis.swift
//  MixanikosEnDrasei
//
//  Created by Angelos Staboulis on 23/5/23.
//

import SwiftUI

struct Adeies_Vevaioseis: View {
    @State var adeies : String =
    """
    Το τεχνικό μας γραφείο, έχοντας εμπειρία πολλών ετών, δραστηριοποιείται ενδεικτικά στα κάτωθι:\n
    Έκδοση Αδειών Δόμησης
    Έκδοση Αδειών Λειτουργίας Καταστημάτων-Ιατρείων-Γραφείων
    Έκδοση Αδειών Μικρής Κλίμακας
    Έκδοση Οικοδομησιμότητας
    Έλεγχος Στατικής Επάρκειας με Καταστροφικές και μη Καταστροφικές Μεθόδους
    Ανακαινίσεις-Ανακατασκευές
    Μελέτες-Επιβλέψεις Τεχνικών Έργων
    Αυτοψίες και Τεχνικές Εκθέσεις
    Νομιμοποιήσεις Αυθαιρέτων
    Τοπογραφικά Διαγράμματα
    Eνεργειακά Πιστοποιητικά
    Βεβαιώσεις Ν.4495/2017 για Μεταβιβάσεις Ακινήτων
    """
    var body: some View {
        ScrollView{
            VStack{
                Image("adeies").resizable().frame(width: 300,height:150,alignment: .center)
                Text(adeies).foregroundColor(.yellow)
            }
        }.navigationTitle("Αδειες - Βεβαιώσεις")
          .navigationBarTitleDisplayMode(.inline)
          .frame(width:UIScreen.main.bounds.width,height:UIScreen.main.bounds.height-150)
          .background(.black)
    }
}

struct Adeies_Vevaioseis_Previews: PreviewProvider {
    static var previews: some View {
        Adeies_Vevaioseis()
    }
}
