# CellAnimator

[![CI Status](https://img.shields.io/travis/warchimede/CellAnimator.svg?style=flat)](https://travis-ci.org/warchimede/CellAnimator)
[![Version](https://img.shields.io/cocoapods/v/CellAnimator.svg?style=flat)](http://cocoapods.org/pods/CellAnimator)
[![License](https://img.shields.io/cocoapods/l/CellAnimator.svg?style=flat)](http://cocoapods.org/pods/CellAnimator)
[![Platform](https://img.shields.io/cocoapods/p/CellAnimator.svg?style=flat)](http://cocoapods.org/pods/CellAnimator)

## Summary

Cool animations for `UITableViewCell` in Swift language

## Usage

In your `UITableViewController`, import `CellAnimator` and override the `tableView:willDisplayCell:forRowAtIndexPath:` function :

```Swift
import CellAnimator
...
override func tableView(tableView: UITableView, willDisplayCell cell: UITableViewCell, forRowAtIndexPath indexPath: NSIndexPath) {
    CellAnimator.animate(cell, withDuration: 1, animation: .Wave)
}
```

## Configuration

Here are the currently available transforms you can use to customize the animation
when calling `CellAnimator.animateCell:withDuration:animation:` :

  + `AnimationType.TipIn`
  + `AnimationType.Curl`
  + `AnimationType.Fan`
  + `AnimationType.Flip`
  + `AnimationType.Helix`
  + `AnimationType.Tilt`
  + `AnimationType.Wave`

## Example

To try the example project, clone the repo, and run the project.

## Requirements

  + iOS 9

## Installation

CellAnimator is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile :

```ruby
pod "CellAnimator"
```

## Author

William Archimede, william.archimede@hoodbrains.com

Alexander Loren, lorenalexm@gmail.com (Swift 4 Updates)

## License

CellAnimator is available under the MIT license. See the LICENSE file for more info.

If you use it and like it, let me know: [@warchimede](http://twitter.com/warchimede)
