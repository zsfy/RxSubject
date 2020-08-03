//
//  RxSubjectProperty.swift
//  RxSubject
//
//  Created by zsfy on 2020/8/3.
//

import RxSwift

/// 不适用
/*
 @propertyWrapper
 public struct RxAsyncSubject<Value> {
 public init(wrappedValue: Value) {
 self.wrappedValue = wrappedValue
 }
 public var wrappedValue: Value {
 didSet {
 projectedValue.onNext(wrappedValue)
 }
 }
 public lazy var projectedValue = AsyncSubject<Value>()
 }
 */

/// 只接受订阅之后的值
@propertyWrapper
public struct Publish<Value> {
    public init(wrappedValue: Value) {
        self.wrappedValue = wrappedValue
    }
    public var wrappedValue: Value {
        didSet {
            projectedValue.onNext(wrappedValue)
        }
    }
    public let projectedValue = PublishSubject<Value>()
}

/// 订阅时，接受最新一个值
@propertyWrapper
public struct Behavior<Value> {
    public init(wrappedValue: Value) {
        self.wrappedValue = wrappedValue
        projectedValue = BehaviorSubject<Value>(value: wrappedValue)
    }
    public var wrappedValue: Value {
        didSet {
            projectedValue.onNext(wrappedValue)
        }
    }
    public let projectedValue: BehaviorSubject<Value>
}


/// 需要观察所有变化值（包括初始值）
@propertyWrapper
public struct Replay<Value> {
    public init(wrappedValue: Value) {
        self.wrappedValue = wrappedValue
        projectedValue.onNext(wrappedValue)
    }
    public var wrappedValue: Value {
        didSet {
            projectedValue.onNext(wrappedValue)
        }
    }
    public let projectedValue = ReplaySubject<Value>.createUnbounded()
}





