CellAnimator
============

## Summary
Cool animations for UITableViewCell in Swift language

## Use
Just drag the **CellAnimator.swift** file into your project.

Then, in your **UITableViewController**, override the **tableView:willDisplayCell:forRowAtIndexPath:** function :

    override func tableView(tableView: UITableView, willDisplayCell cell: UITableViewCell, forRowAtIndexPath indexPath: NSIndexPath) {
        CellAnimator.animateCell(cell, withTransform: TransformWave, andDuration: 1)
    }

## Configuration
Here are the currently available transforms you can use to customize the animation
when calling **CellAnimator.animateCell:withTransform:andDuration:** :

  + `TransformTipIn`
  + `TransformCurl`
  + `TransformFan`
  + `TransformFlip`
  + `TransformHelix`
  + `TransformTilt`
  + `TransformWave`

## License
This control was made available under the MIT License

If you use it and like it, let me know: [@warchimede](http://twitter.com/warchimede)
