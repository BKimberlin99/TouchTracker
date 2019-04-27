//
//  Line.swift
//  TouchTracker
//
//  Created by Brandon Kimberlin on 4/10/19.
//  Copyright © 2019 Brandon Kimberlin. All rights reserved.
//

import Foundation
import CoreGraphics
import UIKit

struct Line {
    var begin = CGPoint.zero
    var end = CGPoint.zero
}

//Sets up ability to check the angle of the line being drawn
extension Line {
    var angle: Measurement<UnitAngle> {
        guard begin != end else {
            return Measurement(value: 0.0, unit: .radians)
        }
    let dy = Double(end.y - begin.y)
    let dx = Double(end.x - begin.x)
    let angleInRadian: Measurement<UnitAngle> = Measurement(value: atan2(dy, dx), unit: .radians)
    return angleInRadian
    }

    //Sets up different colors for the line to become based on the angle
    var color: UIColor {
        let colors = [ UIColor.black, UIColor.blue, UIColor.brown, UIColor.cyan, UIColor.darkGray, UIColor.gray, UIColor.green, UIColor.lightGray, UIColor.magenta, UIColor.orange, UIColor.purple, UIColor.red, UIColor.yellow]
        let ratio = (self.angle.value + Double.pi) / (Double.pi * 2)
        let colorIndex = Int( Double(colors.count - 1) * ratio)
        return colors[colorIndex]
    }
}
