//
//  DataSevices.swift
//  ZoomScrcollView
//
//  Created by NgocAnh on 4/24/18.
//  Copyright © 2018 NgocAnh. All rights reserved.
//

import UIKit
extension UIImageView {
    
    func downloadImage(from url : String){
        self.activityIndicator.startAnimating()
        let urlRequest = URLRequest(url: URL(string: url)!)
        let task = URLSession.shared.dataTask(with: urlRequest){(data,response,error)in
            if error != nil {
                DispatchQueue.main.async {
                    self.activityIndicator.stopAnimating()
                }
                print("error...")
            }
            else {
                DispatchQueue.main.async {
                    self.activityIndicator.stopAnimating()
                    self.image = UIImage(data:data!)
                }
            }
        }
        task.resume()
    }
    
    fileprivate var activityIndicator: UIActivityIndicatorView {
        get {
            let activityIndicator = UIActivityIndicatorView(activityIndicatorStyle: .white)
            activityIndicator.hidesWhenStopped = true
            activityIndicator.center = CGPoint(x:self.frame.width/2,
                                               y: self.frame.height/2)
            activityIndicator.stopAnimating()
            self.addSubview(activityIndicator)
            return activityIndicator
        }
    }
}
