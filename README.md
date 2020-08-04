# RxSubject

[![CI Status](https://img.shields.io/travis/zsfy/RxSubject.svg?style=flat)](https://travis-ci.org/zsfy/RxSubject)
[![Version](https://img.shields.io/cocoapods/v/RxSubject.svg?style=flat)](https://cocoapods.org/pods/RxSubject)
[![License](https://img.shields.io/cocoapods/l/RxSubject.svg?style=flat)](https://cocoapods.org/pods/RxSubject)
[![Platform](https://img.shields.io/cocoapods/p/RxSubject.svg?style=flat)](https://cocoapods.org/pods/RxSubject)

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements
Dependency "RxSwift"

## Installation

RxSubject is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'RxSubject'
```
##Usage
#### Swift

```swift
import RxSubject
```
In the ViewModel

```swift
  @RxSubject.Publish
  var publishProperty = "publishProperty--000"
  
  @RxSubject.Behavior
  var behaviorProperty = "behaviorProperty--000"
  
  @RxSubject.Replay
  var replayProperty = "replayProperty--000"
```
In the ViewController/View

```swift
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
```
And then you'll see it on the console

```swift
publishProperty--333
publishProperty--444

behaviorProperty--222
behaviorProperty--333
behaviorProperty--444

replayProperty--000
replayProperty--111
replayProperty--222
replayProperty--333
replayProperty--444
```

## Author

zsfy, zsfy27@163.com

## License

RxSubject is available under the MIT license. See the LICENSE file for more info.
