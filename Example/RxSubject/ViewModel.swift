//
//  ViewModel.swift
//  RxSubject_Example
//
//  Created by zsfy on 2020/8/3.
//  Copyright © 2020 CocoaPods. All rights reserved.
//

import UIKit
import RxSubject

class ViewModel: NSObject {

    @RxSubject.Publish
    var publishProperty = "publishProperty--000"
    
    @RxSubject.Behavior
    var behaviorProperty = "behaviorProperty--000"
    
    @RxSubject.Replay
    var replayProperty = "replayProperty--000"
    
}
