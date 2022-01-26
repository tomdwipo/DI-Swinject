//
//  NextViewModel.swift
//  DITest
//
//  Created by Tommy on 18/01/22.
//

import Foundation
import Module_login
import RxSwift

struct NextViewModel {
    var usecase : GetMessageUseCase
    var isChangeData: Bool = false

    let resultText: BehaviorSubject<String> = BehaviorSubject<String>(value: "default")
    
    mutating func updateText() {
        isChangeData = !isChangeData
        resultText.onNext(isChangeData ? usecase.getMessage() : "change")
    }
}
