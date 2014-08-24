SwiftScrollView
===============

Swift implementation of `UIScrollView`-like view based upon Ole Begemann's [example](https://github.com/ole/CustomScrollView).

## Background
I needed some custom behavior from `UIScrollView` and came across an outstanding blog post: [Understanding UIScrollView](http://oleb.net/blog/2014/04/understanding-uiscrollview/). This happened as I was learning Swift and iOS development in general, so I figured translating the example to Swift would be a good exercise. 

## Demo
To demonstrate a reason why you'd want to make a custom scrolling view, the included `ViewController` sets one `UIPanGestureRecognizer` to control two `SwiftScrollView`s simultaneously. 
