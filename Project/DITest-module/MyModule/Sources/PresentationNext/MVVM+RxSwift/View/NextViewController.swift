//
//  NextViewController.swift
//  DITest
//
//  Created by Tommy on 18/01/22.
//

import UIKit
import RxSwift
import Router

public protocol NextView: UIViewController {
    func tapped(_ sender: UIButton)
}

open class NextViewController: UIViewController, NextView {

    @IBOutlet weak var textlabel: UILabel!
    var viewModel: NextViewModel?
    let disposeBag = DisposeBag()
    var router: RouterProtocol!
    
    open override func viewDidLoad() {
        super.viewDidLoad()
        viewModel?
              .resultText
              .observe(on: MainScheduler.instance)
              .subscribe({ text in
                  self.textlabel.text = text.element
              }).disposed(by: disposeBag)

    }
    
    
    @IBAction open func tapped(_ sender: UIButton) {
        viewModel?.updateText()
    }
    
    @IBAction func newPageTapped(_ sender: Any) {
        
        present(router.navigateToNewPage(), animated: true)
    }
    
}
