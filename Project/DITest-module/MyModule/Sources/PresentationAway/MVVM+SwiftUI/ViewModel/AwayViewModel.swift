//
//  AwayViewModel.swift
//  DITest
//
//  Created by Tommy on 20/01/22.
//

import Foundation
import Module_login
import SwiftUI

@available(iOS 13.0, *)
public class AwayViewModel: ObservableObject {
    @Published var resultText = "default"
    var isChangeData = false
    var usecase: GetMessageUseCase!
    
    func changeText(){
        isChangeData = !isChangeData
        resultText = isChangeData ? usecase.getMessage() : "no"
    }
}
