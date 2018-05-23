//
//  ViewController.swift
//  ZoomScrcollView
//
//  Created by NgocAnh on 4/24/18.
//  Copyright © 2018 NgocAnh. All rights reserved.
//



import UIKit

class ViewController: UIViewController, UIScrollViewDelegate {
       @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var scrollView: UIScrollView!
   
    override func viewDidLoad() {
        super.viewDidLoad()
        
        scrollView.minimumZoomScale = 1.0
        scrollView.maximumZoomScale = 5.0
    }
    
    func viewForZooming(in scrollView: UIScrollView) -> UIView? {
        return image
    }
   
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

