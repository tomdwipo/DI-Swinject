//
//  AwayView.swift
//  DITest
//
//  Created by Tommy on 20/01/22.
//

import SwiftUI

struct AwayView: View {
    @ObservedObject var viewModel: AwayViewModel = AwayViewModel()
    
    var body: some View {
        Text(viewModel.resultText)
            .padding(SwiftUI.Edge.Set.bottom, 20)
        Button {
            viewModel.changeText()
        } label: {
            Text("test")
        }

    }
}

struct AwayView_Previews: PreviewProvider {
    static var previews: some View {
        AwayView()
    }
}
