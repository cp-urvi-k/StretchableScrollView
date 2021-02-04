//
//  StretchableScrollViewController.swift
//  StretchableScrollView
//
//  Created by Urvi Koladiya on 19/01/21.
//

import UIKit

class StretchableScrollViewController: UIViewController {

    @IBOutlet weak var scrollView: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        scrollView.delegate = self
    }
}

extension StretchableScrollViewController: UIScrollViewDelegate {
    
    
    func scrollViewDidEndDragging(_ scrollView: UIScrollView, willDecelerate decelerate: Bool) {
        if scrollView.contentOffset.y > -50  && scrollView.contentOffset.y < -1 {
            
            let difference = self.scrollView.contentSize.height - self.scrollView.contentSize.height / 3.5
            
            if difference >= scrollView.frame.size.height {
                self.scrollView.contentInset.top = -self.scrollView.contentSize.height / 3.5
            }else {
                self.scrollView.contentInset.top = -self.scrollView.contentSize.height + scrollView.frame.size.height + 20
            }
        }else if scrollView.contentOffset.y > -100  && scrollView.contentOffset.y < -50 {
            
            let difference = self.scrollView.contentSize.height - self.scrollView.contentSize.height / 2.5
            
            if difference >= scrollView.frame.size.height {
                self.scrollView.contentInset.top = -self.scrollView.contentSize.height / 2.5
            }else {
                self.scrollView.contentInset.top = -self.scrollView.contentSize.height + scrollView.frame.size.height + 20
            }
        } else if scrollView.contentOffset.y > -150 && scrollView.contentOffset.y < -100{
            
            let difference = self.scrollView.contentSize.height - self.scrollView.contentSize.height / 1.8
            
            if difference >= scrollView.frame.size.height {
                self.scrollView.contentInset.top = -self.scrollView.contentSize.height / 1.8
            }else {
                self.scrollView.contentInset.top = -self.scrollView.contentSize.height + scrollView.frame.size.height + 20
            }
        } else
        if scrollView.contentOffset.y < -150 {
            self.scrollView.contentInset.top = -self.scrollView.contentSize.height + scrollView.frame.size.height + 20
        } else
        {
            self.scrollView.contentInset.top = 0
        }
    }
}

