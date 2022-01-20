//
//  GoViewModel.swift
//  DITest
//
//  Created by Tommy on 20/01/22.
//

import Foundation
import Combine
import Module_login

class GoViewModel {
    @Published private(set) var resultText = "default"
    
    var usecase: GetMessageUseCase?
    private(set) var isChangeData = false
    
    func changeData(){
        isChangeData = !isChangeData
        resultText = isChangeData ? usecase!.getMessage() : "change"
    }
    
}
