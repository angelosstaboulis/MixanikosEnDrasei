//
//  WhoWeAre.swift
//  MixanikosEnDrasei
//
//  Created by Angelos Staboulis on 23/5/23.
//

import SwiftUI

struct WhoWeAre: View {
    @State var editor:String =
        """
        Το Τεχνικό Γραφείο «Νίκος Γιαννακουδάκης»,στη Γλυφάδα, ξεκίνησε τη λειτουργία του το 2000, με ιδρυτή τον πολιτικό μηχανικό Νίκο Γιαννακουδάκη.
        Συνιδρυτής σε αυτό το εγχείρημα υπήρξε, ο επί σειρά ετών εργολάβος οικοδομών, Στέλιος Γεωργιλάς.\n
        Στο δυναμικό του προστέθηκαν το 2003, η Μένια Γιαννακουδάκη, πτυχιούχος οικονομικών και η Γεωργία Γεωργιλά, πτυχιούχος ψυχολόγος.\n
        Ο Νίκος αποφοίτησε από το Δημοκρίτειο Πανεπιστήμιο Θράκης το 1998 και έκτοτε διαθέτει στο ενεργητικό του πάνω από 35 ανεγέρσεις πολυκατοικιών και πλήθος ανακαινίσεων, κυρίωs διαμερισμάτων.\n
        Έχει νομιμοποιήσει περισσότερα από 350 κτίρια, ενώ ως ενεργειακός επιθεωρητής, έχει επιθεωρήσει περισσότερα από 1.000 διαμερίσματα και καταστήματα.\n
        Σήμερα, στο ανακαινισμένο πλέον γραφείο του στη Γλυφάδα, υπό τη γενική εποπτεία, οργάνωση και διεύθυνσή του παρέχονται υπηρεσίες υψηλού επιπέδου, βασισμένες στην άρτια επιστημονική του κατάρτιση .\n
        Η τεχνογνωσία και η εμπειρία του εγγυώνται ένα άρτιο αποτέλεσμα.
        """
    @State var clickWebView:String!=""
    var body: some View {
        VStack{
            ScrollView{
                Image("logo1").resizable().frame(width:300,height:200)
                Text(editor).foregroundColor(.white)
                Spacer()
                Spacer()
                HStack{
                    Text("Social Media").font(.title2).foregroundColor(.white)
                }
                HStack{
                    Image("facebook").resizable().frame(width: 50,height:45).onTapGesture {
                        UIApplication.shared.open(URL(string: "https://www.facebook.com/nikosgiannakoudakis.enginnering")!)
                    }
                    Image("twitter").resizable().frame(width: 50,height:45).onTapGesture {
                        UIApplication.shared.open(URL(string: "https://twitter.com/nikgiannak")!)
                    }
                    Image("instagram").resizable().frame(width: 50,height:45).onTapGesture {
                        UIApplication.shared.open(URL(string: "https://www.instagram.com/mixanikos_en_drasei/")!)
                    }
                    Image("messenger").resizable().frame(width: 50,height:45).onTapGesture {
                        UIApplication.shared.open(URL(string: "https://m.me/nikosgiannakoudakis.enginnering")!)
                    }
                }
                HStack{
                    Text("Επικοινωνία").font(.title2).foregroundColor(.white)
                }
                HStack{
                    Text("nikgiannak@gmail.com").font(.title2).foregroundColor(.white).onTapGesture {
                        UIApplication.shared.open(URL(string: "mailto://nikgiannak@gmail.com")!)
                    }
                }
                HStack{
                    Text("6932404454").font(.title2).foregroundColor(.white).onTapGesture {
                        UIApplication.shared.open(URL(string: "tel://6932404454")!)
                    }
                }
            }
            
        }.frame(width:UIScreen.main.bounds.width,height:UIScreen.main.bounds.height-200)
          .background(.black)
    }
}

struct WhoWeAre_Previews: PreviewProvider {
    static var previews: some View {
        WhoWeAre()
    }
}
