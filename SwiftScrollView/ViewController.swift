//
//  ViewController.swift
//  SwiftScrollView
//
//  Created by Ducson Nguyen on 8/23/14.
//  Copyright (c) 2014 Section 0x1F. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var swiftScrollView1 = SwiftScrollView()
    var swiftScrollView2 = SwiftScrollView()

    @objc func handlePanGesture(panGestureRecognizer: UIPanGestureRecognizer) {
        // forward the gesture to all subviews
        self.swiftScrollView2.handlePanGesture(panGestureRecognizer: panGestureRecognizer)
        self.swiftScrollView1.handlePanGesture(panGestureRecognizer: panGestureRecognizer)

        // reset
        panGestureRecognizer.setTranslation(.zero, in: self.view)
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // set up scroll view 1
        self.swiftScrollView1.contentSize =
            CGSize(width: self.view.bounds.size.width / 2, height: 1000)
        self.swiftScrollView1.scrollHorizontal = false

        var redView = UIView(frame: CGRect(x: 20, y: 20, width: 100, height: 100));
        var greenView = UIView(frame: CGRect(x: 150, y: 160, width: 150, height: 200));
        var blueView = UIView(frame: CGRect(x: 40, y: 400, width: 200, height: 150));
        var yellowView = UIView(frame: CGRect(x: 100, y: 600, width: 180, height: 150));

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
            CGSize(width: self.view.bounds.size.width / 2, height: 1000)
        self.swiftScrollView2.scrollHorizontal = false
        self.swiftScrollView2.backgroundColor = UIColor.lightGray

        redView = UIView(frame: CGRect(x: 40, y: 200, width: 120, height: 200));
        greenView = UIView(frame: CGRect(x: 200, y: 100, width: 200, height: 150));
        blueView = UIView(frame: CGRect(x: 100, y: 400, width: 30, height: 600));
        yellowView = UIView(frame: CGRect(x: 80, y: 500, width: 200, height: 200));

        redView.backgroundColor = UIColor(red: 0.615, green: 0.307, blue: 0.105, alpha: 1)
        greenView.backgroundColor = UIColor(red: 0.494, green: 0.927, blue: 0.329, alpha: 1)
        blueView.backgroundColor = UIColor(red: 0.29, green:0.164, blue:0.777, alpha:1)
        yellowView.backgroundColor = UIColor(red:0.872, green:0.805, blue:0.109, alpha:1)

        self.swiftScrollView2.addSubview(redView)
        self.swiftScrollView2.addSubview(greenView)
        self.swiftScrollView2.addSubview(blueView)
        self.swiftScrollView2.addSubview(yellowView)

        // ViewController gets the gesture event first then delegates accordingly
        let panGestureRecognizer = UIPanGestureRecognizer(
            target: self, action: #selector(handlePanGesture))
        self.view.addGestureRecognizer(panGestureRecognizer)
        self.view.addSubview(self.swiftScrollView1)
        self.view.addSubview(self.swiftScrollView2)
    }

    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()

        self.swiftScrollView1.frame = CGRect(x: 0, y: 0,
                                             width: self.view.bounds.size.width / CGFloat(2.0),
                                             height: self.view.bounds.size.height);
        self.swiftScrollView2.frame = CGRect(
            x: self.view.bounds.size.width / CGFloat(2.0), y: 0,
            width: self.view.bounds.size.width / CGFloat(2.0),
            height: self.view.bounds.size.height);
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

