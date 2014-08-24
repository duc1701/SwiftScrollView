//
//  SwiftScrollView.swift
//  SwiftScrollView
//
//  Created by Ducson Nguyen on 8/23/14.
//  Copyright (c) 2014 Section Thirty One. All rights reserved.
//

import Foundation
import UIKit

class SwiftScrollView : UIView
{
    lazy var contentSize = CGSize()
    var scrollVertical = true
    var scrollHorizontal = true

    func handlePanGesture(panGestureRecognizer: UIPanGestureRecognizer) {
        let translation = panGestureRecognizer.translationInView(self)
        var bounds = self.bounds

        // translate bounds but don't allow values outside content_size
        let newBoundsOriginX = bounds.origin.x - translation.x;
        let minBoundsOriginX = CGFloat(0.0);
        let maxBoundsOriginX = self.contentSize.width - bounds.size.width
        bounds.origin.x =
            fmax(minBoundsOriginX, fmin(newBoundsOriginX, maxBoundsOriginX))

        let newBoundsOriginY = bounds.origin.y - translation.y;
        let minBoundsOriginY = CGFloat(0.0);
        let maxBoundsOriginY = self.contentSize.height - bounds.size.height;
        bounds.origin.y =
            fmax(minBoundsOriginY, fmin(newBoundsOriginY, maxBoundsOriginY));

        self.bounds = bounds;
//        panGestureRecognizer.setTranslation(CGPointZero, inView: self)
    }
}