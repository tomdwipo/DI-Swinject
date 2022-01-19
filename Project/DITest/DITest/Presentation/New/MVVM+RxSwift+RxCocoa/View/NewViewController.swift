//
//  NewViewController.swift
//  DITest
//
//  Created by Tommy on 19/01/22.
//

import UIKit
import RxSwift
import RxCocoa

class NewViewController: UIViewController {

    @IBOutlet weak var textLabel: UILabel!
  
    var viewModel: NewViewModel?
    
    let dispose = DisposeBag()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewModel?
            .resultText
            .observe(on: MainScheduler.instance)
            .bind(to: textLabel.rx.text)
            .disposed(by: dispose)
        // Do any additional setup after loading the view.
    }

    @IBAction func changeTxt(_ sender: Any) {
        viewModel?.changeData()
    }
    

}
