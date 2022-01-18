//
//  NextViewController.swift
//  DITest
//
//  Created by Tommy on 18/01/22.
//

import UIKit
import RxSwift

class NextViewController: UIViewController {

    @IBOutlet weak var textlabel: UILabel!
    var viewModel: NextViewModel?
    var resultText: Disposable?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        resultText = viewModel?
              .resultText
              .observe(on: MainScheduler.instance)
              .subscribe({ text in
                  self.textlabel.text = text.element
              })
              
        // Do any additional setup after loading the view.
    }
    
    deinit {
        resultText?.dispose()
    }
    
    @IBAction func tapped(_ sender: Any) {
        viewModel?.updateText()
    }
    
}
