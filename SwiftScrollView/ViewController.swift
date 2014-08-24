//
//  ViewController.swift
//  SwiftScrollView
//
//  Created by Ducson Nguyen on 8/23/14.
//  Copyright (c) 2014 Section Thirty One. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var swiftScrollView1 = SwiftScrollView()
    var swiftScrollView2 = SwiftScrollView()

    func handlePanGesture(panGestureRecognizer: UIPanGestureRecognizer) {
        self.swiftScrollView1.handlePanGesture(panGestureRecognizer)
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        self.swiftScrollView1.contentSize =
            CGSizeMake(self.view.bounds.size.width / 2, 1000)
        self.swiftScrollView1.scrollHorizontal = false

        // colored boxes
        var redView = UIView(frame: CGRectMake(20, 20, 100, 100));
        var greenView = UIView(frame: CGRectMake(150, 160, 150, 200));
        var blueView = UIView(frame: CGRectMake(40, 400, 200, 150));
        var yellowView = UIView(frame: CGRectMake(100, 600, 180, 150));

        redView.backgroundColor = UIColor(red: 0.815, green: 0.007, blue: 0.105, alpha: 1)
        greenView.backgroundColor = UIColor(red: 0.494, green: 0.827, blue: 0.129, alpha: 1)
        blueView.backgroundColor = UIColor(red: 0.29, green:0.564, blue:0.886, alpha:1)
        yellowView.backgroundColor = UIColor(red:0.972, green:0.905, blue:0.109, alpha:1)

        self.swiftScrollView1.addSubview(redView)
        self.swiftScrollView1.addSubview(greenView)
        self.swiftScrollView1.addSubview(blueView)
        self.swiftScrollView1.addSubview(yellowView)

        var panGestureRecognizer = UIPanGestureRecognizer(
            target: self, action: "handlePanGesture:")
        self.view.addGestureRecognizer(panGestureRecognizer)
        self.view.addSubview(self.swiftScrollView1)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

