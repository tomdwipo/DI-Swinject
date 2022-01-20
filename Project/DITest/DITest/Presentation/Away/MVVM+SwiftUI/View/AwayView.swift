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
        VStack {
            Text(viewModel.resultText)
                .padding(20)
            Button {
                viewModel.changeText()
            } label: {
                Text("Button")
            }
            Spacer()
        }
    }
}

struct AwayView_Previews: PreviewProvider {
    static var previews: some View {
        AwayView()
    }
}
