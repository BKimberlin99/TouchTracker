//
//  Circle.swift
//  TouchTracker
//
//  Created by Brandon Kimberlin on 4/26/19.
//  Copyright © 2019 Brandon Kimberlin. All rights reserved.
//

import CoreGraphics

//Sets up struct for drawing a circle
struct Circle {
    var rect = CGRect.zero
    
    init() {
        self.rect = CGRect.zero
    }
    
    init(rect: CGRect) {
        self.rect = rect
    }
    
    //Information for the dimensions of the circle
    init(point1: CGPoint, point2: CGPoint) {
        let width = abs(point2.x - point1.x)
        let height = abs(point2.y - point1.y)
        let diameter = min(width, height)
        let radius = diameter / 2
        let center = CGPoint(x: (point1.x + point2.x) / 2, y: (point1.y + point2.y) / 2)
        self.rect = CGRect(x: center.x - radius, y: center.y - radius, width: diameter, height: diameter)
    }
}
