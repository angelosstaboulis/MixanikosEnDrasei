//
//  Projects.swift
//  MixanikosEnDrasei
//
//  Created by Angelos Staboulis on 23/5/23.
//

import SwiftUI

struct Projects: View {
    var projects:[ProjectModel] = [ProjectModel(title:"Ανακαίνιση Πεύκη",url:"https://nikosgiannakoudakis.com/ανακαίνιση-πεύκη/"),ProjectModel(title:"Ανακαίνιση-Λαζαράκη 8 - Γλυφάδα",url:"https://nikosgiannakoudakis.com/ανακαίνιση-λαζαράκη-8-γλυφάδα/"),ProjectModel(title:"Ανακαίνιση - Καζανόβα 77 - Πειραιάς",url:"https://nikosgiannakoudakis.com/ανακαίνιση-καζανόβα-77-πειραιάς/"),ProjectModel(title:"Ανακαίνιση - Διαμέρισμα Γλυφάδα",url:"https://nikosgiannakoudakis.com/ανακαίνιση-διαμέρισμα-γλυφάδα/"),ProjectModel(title:"Ανακαίνιση - Δεινοκράτους 127/129 - Αθήνα",url:"https://nikosgiannakoudakis.com/ανακαίνιση-δεινοκράτους-127-129-αθήνα/"),ProjectModel(title:"Ανακαίνιση - Βουτσινά 64 - Χολαργός",url:"https://nikosgiannakoudakis.com/ανακαίνιση-βουτσινά-64-χολαργός/"),ProjectModel(title:"Ανακαίνιση - Αμαλθείας 9 - Αθήνα",url:"https://nikosgiannakoudakis.com/ανακαίνιση-αμαλθείας-9-αθήνα/"),ProjectModel(title:"Ανακαίνιση Αλ.Ζαιμή 10 Μεταμόρφωση",url:"https://nikosgiannakoudakis.com/ανακαίνιση-αλ-ζαΐμη-10-μεταμόρφωση/"),ProjectModel(title: "Gallery", url: "")]

    var body: some View {
        VStack{
            Image("logo1").resizable().frame(width:300,height:200)
            List(projects,id:\.self){ project in
                NavigationLink {
                    if project.title == "Gallery"{
                        SwiftUIGallery()
                    }else{
                        let url = project.url
                        let  encodedURL = url.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed)
                        SwiftUIWebView(urlMain: encodedURL!)
                    }
                } label: {
                    Text(project.title)
                }

            }.colorScheme(.dark)
            
        }.frame(width:UIScreen.main.bounds.width,height:UIScreen.main.bounds.height-200)
            .background(.black)
    }
}

struct Projects_Previews: PreviewProvider {
    static var previews: some View {
        Projects()
    }
}
