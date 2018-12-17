//
//  ViewController.swift
//  net10
//
//  Created by student on 2018/12/17.
//  Copyright © 2018年 at. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var myButton: UIButton!
    
    @IBOutlet weak var bigView: UIView!
    
    @IBOutlet weak var myView: UIView!
    var timer: Timer?
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //        timer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true, block: {[weak weakSelf=self](myView) in weakSelf?.myView.center.x += 20})
    }
    
    @IBAction func bntClicked(_ sender: Any) {
        
        UIView.transition(with: myView, duration: 2, options: .transitionCurlUp,  animations: {}, completion: nil)
        
        
        let imgView = UIImageView(frame: CGRect(x: 80, y: 80, width: 200, height: 200))
        imgView.image = UIImage(named: "img")
        bigView.addSubview(imgView)
        UIView.transition(from: myView, to: imgView, duration: 2, options: .transitionFlipFromRight, completion: nil)
        
        
        
        
        //1.
        //        timer?.invalidate()
        //        UIView.animate(withDuration: 0.5, delay: 1, options: .curveLinear, animations: {self.myView.alpha = 0
        //            self.myView.center.x = self.view.bounds.width
        //            self.myView.backgroundColor = UIColor.green
        //            self.myView.transform = CGAffineTransform(rotationAngle: CGFloat(Double.pi)).scaledBy(x: 0.5, y: 0.5)
        //            self.myView.transform = CGAffineTransform.identity
        //            self.myView.transform = CGAffineTransform(rotationAngle: CGFloat(Double.pi)).scaledBy(x: 0.5, y: 0.5)
        //            self.myView.transform = CGAffineTransform.identity
        //
        //        }){
        //            (finished) in
        //            if finished {
        //                self.myView.removeFromSuperview()
        //            }
        //        }
    }
    
    
}
