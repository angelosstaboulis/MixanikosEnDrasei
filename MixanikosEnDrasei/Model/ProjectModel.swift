//
//  ProjectModel.swift
//  MixanikosEnDrasei
//
//  Created by Angelos Staboulis on 23/5/23.
//

import Foundation
struct ProjectModel:Identifiable,Hashable{
    var id = UUID()
    var title:String
    var url:String
}
