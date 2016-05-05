//
//  ViewController.swift
//  AstonMartinscrollView
//
//  Created by Mc on 5/4/16.
//  Copyright © 2016 Good Rock Apps LLC. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    let WIDTH: CGFloat = 195 * 2
    let HEIGHT: CGFloat = 364
    var descroption = ["V12 Vantage S\nPureSport", "V12 Vantage S Roadster\nPurePerformance", "V8 Vantage S\nRace-Bred Dynamism","V8 Vantage S Roadster\nSearing Urgency","V8 Vantage\nTotal Control","V8 Vantage Roadster\nPure Emotion","Vantage N430\nSpecial Edition","Vantage GT12\nRacing Inspired"]
    
    @IBOutlet weak var scrollView: UIScrollView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        for var x = 1; x <= 8; x += 1 {
            
            let img = UIImage(named: "\(x)")
            let imgView = UIImageView(image: img)
            
            var dynamicLabel: UILabel = UILabel()
//            dynamicLabel.frame = CGRectMake(50, 150, 200, 21)
//            dynamicLabel.backgroundColor = UIColor.orangeColor()
            dynamicLabel.numberOfLines = 0
            dynamicLabel.textColor = UIColor.lightGrayColor()
            dynamicLabel.textAlignment = NSTextAlignment.Center
            dynamicLabel.text = descroption[x-1]
            //self.view.addSubview(dynamicLabel)

            scrollView.addSubview(dynamicLabel)
            scrollView.addSubview(imgView)
            
            imgView.frame = CGRectMake(-WIDTH + (WIDTH * CGFloat(x)), 380, WIDTH, HEIGHT)
            dynamicLabel.frame = CGRectMake(-WIDTH + (WIDTH * CGFloat(x)), 200, WIDTH, HEIGHT)

            imgView.contentMode = .ScaleAspectFit
            
        }
        scrollView.contentSize = CGSizeMake(WIDTH * 8, scrollView.frame.size.height)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

