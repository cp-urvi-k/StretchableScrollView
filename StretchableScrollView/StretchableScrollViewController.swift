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
        
        if scrollView.contentOffset.y < 0 {
            self.scrollView.contentInset.top = estimetedScrollingPoint(offsetY: scrollView.contentOffset.y)
        } else {
            self.scrollView.contentInset.top = 0
        }
    }
    
    func estimetedScrollingPoint(offsetY: CGFloat) -> CGFloat {
        
        let estimatedMax = (offsetY * 100) / (self.view.frame.size.height / 3)
        let offset = (estimatedMax * (scrollView.contentSize.height - self.view.frame.size.height)) / 100
        return offset
    }
}

