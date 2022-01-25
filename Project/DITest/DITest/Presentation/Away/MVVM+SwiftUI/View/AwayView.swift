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
        List(0 ..< 10) { item in
            HStack{
                VStack(alignment: HorizontalAlignment.leading) {
                    Text(viewModel.resultText)
                    Button {
                        viewModel.changeText()
                    } label: {
                        
                        Text("Button")
                    }
                    Button {
                        self.presentTo(page: AssemblerManager.moreViewcontroller)
                    } label: {
                        Text("To More View Controller")
                    }
                }
            }.buttonStyle(PlainButtonStyle())
        }
        
    }
}



struct AwayView_Previews: PreviewProvider {
    static var previews: some View {
        AwayView()
    }
}


//        ScrollView(.horizontal) {
//            HStack {
//                ForEach(0 ..< 10) {item in
//                    VStack(alignment: HorizontalAlignment.leading) {
//
//                        Text(viewModel.resultText)
//                        Button {
//                            viewModel.changeText()
//                        } label: {
//                            Text("Button")
//                        }
//                        Button {
//                            self.presentTo(page: AssemblerManager.moreViewcontroller)
//                        } label: {
//                            Text("To More View Controller")
//                        }.padding(Edge.Set.top, 20)
//
//                    }
//                }
//
//            }
//        }

//        }
