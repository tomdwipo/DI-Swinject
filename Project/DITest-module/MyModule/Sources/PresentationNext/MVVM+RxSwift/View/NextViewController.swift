//
//  NextViewController.swift
//  DITest
//
//  Created by Tommy on 18/01/22.
//

import UIKit
import RxSwift
import Router

public class NextViewController: UIViewController {

    @IBOutlet weak var textlabel: UILabel!
    var viewModel: NextViewModel?
    let disposeBag = DisposeBag()
    var router: RouterProtocol!
    
    public override func viewDidLoad() {
        super.viewDidLoad()
        viewModel?
              .resultText
              .observe(on: MainScheduler.instance)
              .subscribe({ text in
                  self.textlabel.text = text.element
              }).disposed(by: disposeBag)

    }
  
    
    @IBAction func tapped(_ sender: Any) {
        viewModel?.updateText()
    }
    
    @IBAction func newPageTapped(_ sender: Any) {
        
        present(router.navigateToNewPage(), animated: true)
    }
    
}
