//
//  NewViewModel.swift
//  DITest
//
//  Created by Tommy on 19/01/22.
//

import Foundation
import Module_login
import RxSwift

struct NewViewModel {
    let usecase: GetMessageUseCase
    let resultText: BehaviorSubject<String> = BehaviorSubject<String>(value: "default")
    var isChangeData = false
  
    mutating func changeData(){
        isChangeData = !isChangeData
        resultText.onNext(isChangeData ? usecase.getMessage() : "Mnatap")
    }
}
