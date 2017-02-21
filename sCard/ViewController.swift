//
//  ViewController.swift
//  SwiftSlideShow
//
//  Created by Malek T. on 8/29/16.
//  Copyright © 2016 Medigarage Studios LTD. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIScrollViewDelegate {
    
    
    @IBOutlet var scrollView: UIScrollView!
    @IBOutlet var textView: UITextView!
    @IBOutlet var pageControl: UIPageControl!
   
    
   // @IBOutlet weak var start: UIButton!
    @IBOutlet var startButton: UIButton!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //1
        self.scrollView.frame = CGRect(x:0, y:0, width:self.view.frame.width, height:self.view.frame.height)
        let scrollViewWidth:CGFloat = self.scrollView.frame.width
        let scrollViewHeight:CGFloat = self.scrollView.frame.height
        //2
        textView.textAlignment = .center
        textView.text = "sCard is your study tool. Stay ontop of your studies with the special tools provided in sCard"
        //textView.textColor = .black
        
        self.startButton.layer.cornerRadius = 12.0
        
        self.textView.alpha = 1.0
        //self.signUp.layer.cornerRadius = 4.0
        //3
        let imgOne = UIImageView(frame: CGRect(x:0, y:0,width:scrollViewWidth, height:scrollViewHeight))
        imgOne.image = UIImage(named: "Slide 1")
        let imgTwo = UIImageView(frame: CGRect(x:scrollViewWidth, y:0,width:scrollViewWidth, height:scrollViewHeight))
        imgTwo.image = UIImage(named: "Slide 2")
        let imgThree = UIImageView(frame: CGRect(x:scrollViewWidth*2, y:0,width:scrollViewWidth, height:scrollViewHeight))
        imgThree.image = UIImage(named: "Slide 3")
        let imgFour = UIImageView(frame: CGRect(x:scrollViewWidth*3, y:0,width:scrollViewWidth, height:scrollViewHeight))
        imgFour.image = UIImage(named: "Slide 4")
        
        self.scrollView.addSubview(imgOne)
        self.scrollView.addSubview(imgTwo)
        self.scrollView.addSubview(imgThree)
        self.scrollView.addSubview(imgFour)
        //4
        self.scrollView.contentSize = CGSize(width:self.scrollView.frame.width * 4, height:self.scrollView.frame.height)
        self.scrollView.delegate = self
        self.pageControl.currentPage = 0
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    //MARK: UIScrollView Delegate
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView){
        // Test the offset and calculate the current page after scrolling ends
        let pageWidth:CGFloat = scrollView.frame.width
        let currentPage:CGFloat = floor((scrollView.contentOffset.x-pageWidth/2)/pageWidth)+1
        // Change the indicator
        self.pageControl.currentPage = Int(currentPage);
        // Change the text accordingly
        if Int(currentPage) == 0{
            textView.text = "Create flash cards of terms and definitions or even images with terms"
        }else if Int(currentPage) == 1{
            textView.text = "Maybe you want to test your knoledge, use the Quiz tool"
        }else if Int(currentPage) == 2{
            textView.text = "Many more features coming to the app"
        }else{
            textView.text = "Give us suggestions as your feedback is VERY important to us. Don't forget to rate us high in App Store as you make those A's"
            // Show the "Let's Start" button in the last slide (with a fade in animation)
            UIView.animate(withDuration: 1.0, animations: { () -> Void in
                self.startButton.alpha = 1.0
            })
            
//            UIView.animate(withDuration: 1.0, animations: { () -> Void in
//                self.signUp.alpha = 1.0
//            })
            
            
        }
    }
}

