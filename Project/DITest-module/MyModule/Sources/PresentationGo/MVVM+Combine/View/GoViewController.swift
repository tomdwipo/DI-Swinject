//
//  GoViewController.swift
//  DITest
//
//  Created by Tommy on 20/01/22.
//

import UIKit
import Combine
import SwiftUI
import Router

@available(iOS 13.0, *)
public class GoViewController: UIViewController {

    @IBOutlet public weak var textLabel: UILabel!
    public var viewModel: GoViewModel!
    
   public var router: RouterProtocol!
    
    @IBOutlet public weak var button: UIButton!
    private var subscription = Set<AnyCancellable>()
    
    
    public override func viewDidLoad() {
        super.viewDidLoad()
        subscription = [
            viewModel.$resultText.assign(to: \.text!, on: textLabel)
        ]
        
//        viewModel.$resultText.compactMap({ string in
//            return string
//        }).sink { data in
//            self.textLabel.text = data
//        }
//        .store(in: &subscription)
        
        // Do any additional setup after loading the view.
    }

    @IBAction func tapped(_ sender: Any) {
        viewModel?.changeData()
    }
    
    @IBAction func awayPageTapped(_ sender: Any) {
        
        present(router.navigateToAwayPage(), animated: true)
    }
}
