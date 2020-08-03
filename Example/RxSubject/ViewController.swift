//
//  ViewController.swift
//  RxSubject
//
//  Created by zsfy on 08/03/2020.
//  Copyright (c) 2020 zsfy. All rights reserved.
//

import UIKit
import RxSwift

class ViewController: UIViewController {
    
    let viewModel = ViewModel()
    let disposeBag = DisposeBag()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        viewModel.publishProperty = "publishProperty--111"
        viewModel.publishProperty = "publishProperty--222"
        viewModel.$publishProperty.subscribe(onNext: { (property) in
            print(property)
        }).disposed(by: disposeBag)
        viewModel.publishProperty = "publishProperty--333"
        viewModel.publishProperty = "publishProperty--444"
        
        viewModel.behaviorProperty = "behaviorProperty--111"
        viewModel.behaviorProperty = "behaviorProperty--222"
        viewModel.$behaviorProperty.subscribe(onNext: { (property) in
            print(property)
        }).disposed(by: disposeBag)
        viewModel.behaviorProperty = "behaviorProperty--333"
        viewModel.behaviorProperty = "behaviorProperty--444"
        
        viewModel.replayProperty = "replayProperty--111"
        viewModel.replayProperty = "replayProperty--222"
        viewModel.$replayProperty.subscribe(onNext: { (property) in
            print(property)
        }).disposed(by: disposeBag)
        viewModel.replayProperty = "replayProperty--333"
        viewModel.replayProperty = "replayProperty--444"
        
        
    }


}

