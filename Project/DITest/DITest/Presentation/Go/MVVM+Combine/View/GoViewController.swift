//
//  GoViewController.swift
//  DITest
//
//  Created by Tommy on 20/01/22.
//

import UIKit
import Combine

class GoViewController: UIViewController {

    @IBOutlet weak var textLabel: UILabel!
    var viewModel: GoViewModel!
    
    @IBOutlet weak var button: UIButton!
    private var subscription = Set<AnyCancellable>()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        subscription = [
            viewModel.$resultText.assign(to: \.text!, on: textLabel)
        ]
        
        // Do any additional setup after loading the view.
    }

    @IBAction func tapped(_ sender: Any) {
        viewModel?.changeData()
    }
}
