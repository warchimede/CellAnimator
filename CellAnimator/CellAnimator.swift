//
//  CellAnimator.swift
//  CellAnimator
//
//  Created by William Archimede on 29/08/2014.
//  Copyright (c) 2014 HoodBrains. All rights reserved.
//
//  Updated by Alexander Loren on 14/01/2018
//

import UIKit

public class CellAnimator {
    
    public enum AnimationType: Int {
        case TipIn = 0
        case Curl
        case Fan
        case Flip
        case Helix
        case Tilt
        case Wave
        case count
    }
    
    private static let transformTipIn = { (layer: CALayer) -> CATransform3D in
        let rotationDegrees: CGFloat = -15.0
        let rotationRadians: CGFloat = rotationDegrees * (CGFloat(Double.pi)/180.0)
        let offset = CGPoint(x: -20, y: -20)
        var transform = CATransform3DIdentity
        transform = CATransform3DRotate(transform, rotationRadians, 0.0, 0.0, 1.0)
        transform = CATransform3DTranslate(transform, offset.x, offset.y, 0.0)
        
        return transform
    }
    
    private static let transformCurl = { (layer: CALayer) -> CATransform3D in
        var transform = CATransform3DIdentity
        transform.m34 = 1.0 / -500
        transform = CATransform3DTranslate(transform, -layer.bounds.size.width/2.0, 0.0, 0.0)
        transform = CATransform3DRotate(transform, CGFloat(Double.pi)/2.0, 0.0, 1.0, 0.0)
        transform = CATransform3DTranslate(transform, layer.bounds.size.width/2.0, 0.0, 0.0)
        
        return transform
    }
    
    private static let transformFan = { (layer: CALayer) -> CATransform3D in
        var transform = CATransform3DIdentity
        transform = CATransform3DTranslate(transform, -layer.bounds.size.width/2.0, 0.0, 0.0)
        transform = CATransform3DRotate(transform, -CGFloat(Double.pi)/2.0, 0.0, 0.0, 1.0)
        transform = CATransform3DTranslate(transform, layer.bounds.size.width/2.0, 0.0, 0.0)
        return transform
    }
    
    private static let transformFlip = { (layer: CALayer) -> CATransform3D in
        var transform = CATransform3DIdentity
        transform = CATransform3DTranslate(transform, 0.0, layer.bounds.size.height/2.0, 0.0)
        transform = CATransform3DRotate(transform, CGFloat(Double.pi)/2.0, 1.0, 0.0, 0.0)
        transform = CATransform3DTranslate(transform, 0.0, layer.bounds.size.height/2.0, 0.0)
        return transform
    }
    
    private static let transformHelix = { (layer: CALayer) -> CATransform3D in
        var transform = CATransform3DIdentity
        transform = CATransform3DTranslate(transform, 0.0, layer.bounds.size.height/2.0, 0.0)
        transform = CATransform3DRotate(transform, CGFloat(Double.pi), 0.0, 1.0, 0.0)
        transform = CATransform3DTranslate(transform, 0.0, -layer.bounds.size.height/2.0, 0.0)
        return transform
    }
    
    private static let transformTilt = { (layer: CALayer) -> CATransform3D in
        var transform = CATransform3DIdentity
        transform = CATransform3DScale(transform, 0.8, 0.8, 0.8)
        return transform
    }
    
    private static let transformWave = { (layer: CALayer) -> CATransform3D in
        var transform = CATransform3DIdentity
        transform = CATransform3DTranslate(transform, -layer.bounds.size.width/2.0, 0.0, 0.0)
        return transform
    }
    
    public class func animate(_ cell: UITableViewCell, withDuration duration: TimeInterval, animation type: AnimationType) {
        let view = cell.contentView
        view.layer.opacity = 0.8
        
        switch type {
        case .TipIn:
            view.layer.transform = transformTipIn(cell.layer)
        case .Curl:
            view.layer.transform = transformCurl(cell.layer)
        case .Fan:
            view.layer.transform = transformFan(cell.layer)
        case .Flip:
            view.layer.transform = transformFlip(cell.layer)
        case .Helix:
            view.layer.transform = transformHelix(cell.layer)
        case .Tilt:
            view.layer.transform = transformTilt(cell.layer)
        case .Wave:
            view.layer.transform = transformWave(cell.layer)
        default:
            view.layer.transform = transformTipIn(cell.layer)
        }
        
        UIView.animate(withDuration: duration, animations: {
            view.layer.transform = CATransform3DIdentity
            view.layer.opacity = 1
        })
    }
}
