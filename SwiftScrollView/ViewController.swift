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
        // forward the gesture to all subviews
        self.swiftScrollView2.handlePanGesture(panGestureRecognizer)
        self.swiftScrollView1.handlePanGesture(panGestureRecognizer)
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // set up scroll view 1
        self.swiftScrollView1.contentSize =
            CGSizeMake(self.view.bounds.size.width / 2, 1000)
        self.swiftScrollView1.scrollHorizontal = false

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

        // set up scroll view 2
        self.swiftScrollView2.contentSize =
            CGSizeMake(self.view.bounds.size.width / 2, 1000)
        self.swiftScrollView2.scrollHorizontal = false
        self.swiftScrollView2.backgroundColor = UIColor.lightGrayColor()

        redView = UIView(frame: CGRectMake(40, 200, 120, 200));
        greenView = UIView(frame: CGRectMake(200, 100, 200, 150));
        blueView = UIView(frame: CGRectMake(100, 400, 30, 600));
        yellowView = UIView(frame: CGRectMake(80, 500, 200, 200));

        redView.backgroundColor = UIColor(red: 0.615, green: 0.307, blue: 0.105, alpha: 1)
        greenView.backgroundColor = UIColor(red: 0.494, green: 0.927, blue: 0.329, alpha: 1)
        blueView.backgroundColor = UIColor(red: 0.29, green:0.164, blue:0.777, alpha:1)
        yellowView.backgroundColor = UIColor(red:0.872, green:0.805, blue:0.109, alpha:1)

        self.swiftScrollView2.addSubview(redView)
        self.swiftScrollView2.addSubview(greenView)
        self.swiftScrollView2.addSubview(blueView)
        self.swiftScrollView2.addSubview(yellowView)

        // ViewController gets the gesture event first then delegates accordingly
        var panGestureRecognizer = UIPanGestureRecognizer(
            target: self, action: "handlePanGesture:")
        self.view.addGestureRecognizer(panGestureRecognizer)
        self.view.addSubview(self.swiftScrollView1)
        self.view.addSubview(self.swiftScrollView2)
    }

    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()

        self.swiftScrollView1.frame = CGRectMake(0, 0,
            self.view.bounds.size.width / CGFloat(2.0),
            self.view.bounds.size.height);
        self.swiftScrollView2.frame = CGRectMake(
            self.view.bounds.size.width / CGFloat(2.0), 0,
            self.view.bounds.size.width / CGFloat(2.0),
            self.view.bounds.size.height);
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

