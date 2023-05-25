//
//  ViewModel.swift
//  MixanikosEnDrasei
//
//  Created by Angelos Staboulis on 24/5/23.
//

import Foundation
import Combine
import SwiftUI
class ViewModel:ObservableObject{
    @Published var isHighLightProjects:Bool!=false
    @Published var isHighLightServices:Bool!=false
    func setHighLightProjects(){
        isHighLightProjects = true
    }
    func setHighLightServices(){
        isHighLightServices = true
    }
    func getHighLightServices()->Bool{
        return isHighLightServices
    }
    func getHighLightProjects()->Bool{
        return isHighLightProjects
    }
}
