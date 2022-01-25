//
//  AwayView.swift
//  DITest
//
//  Created by Tommy on 20/01/22.
//

import SwiftUI
import Router
import Helpers
@available(iOS 13.0, *)
public struct AwayView: View {
    @ObservedObject public var viewModel: AwayViewModel = AwayViewModel()
    public var router: RouterProtocol?
    
    public init() {
        
    }
    
    public var body: some View {
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
//                        self.presentTo(page: AssemblerManager.moreViewcontroller)
                        self.presentTo(page: router?.navigateToMorePage())
                    } label: {
                        Text("To More View Controller")
                    }
                }
            }.buttonStyle(PlainButtonStyle())
        }
        
    }
}


@available(iOS 13.0, *)
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
