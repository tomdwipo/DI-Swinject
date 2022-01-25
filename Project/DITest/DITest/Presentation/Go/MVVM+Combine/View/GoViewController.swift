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

class GoViewController: UIViewController {

    @IBOutlet weak var textLabel: UILabel!
    var viewModel: GoViewModel!
    
    var router: RouterProtocol!
    
    @IBOutlet weak var button: UIButton!
    private var subscription = Set<AnyCancellable>()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        subscription = [
//            viewModel.$resultText.assign(to: \.text!, on: textLabel)
//        ]
        
        viewModel.$resultText.compactMap({ string in
            if string == "default" {
                return "default"
            }
            return string
        }).sink { data in
            self.textLabel.text = data
        }
        .store(in: &subscription)
        
        // Do any additional setup after loading the view.
    }

    @IBAction func tapped(_ sender: Any) {
        viewModel?.changeData()
    }
    
    @IBAction func awayPageTapped(_ sender: Any) {
        
        present(router.navigateToAwayPage(), animated: true)
    }
}
