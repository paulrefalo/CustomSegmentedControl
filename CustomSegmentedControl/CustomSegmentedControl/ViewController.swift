//
//  ViewController.swift
//  CustomSegmentedControl
//
//  Created by Paul ReFalo on 7/23/17.
//  Copyright © 2017 QSS. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var departingView: UIView!
    @IBOutlet weak var returningView: UIView!
    @IBOutlet weak var addCityButton: UIButtonX!
    @IBOutlet weak var cloudsImageView: UIImageView!
    @IBOutlet weak var searchButton: UIButtonX!
    @IBOutlet weak var agreeSwitch: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        agreeSwitch.isOn = false
        searchButton.isEnabled = false
        
        addCityButton.alpha = 0
        
        UIView.animate(withDuration: 55, delay: 0, options: [.autoreverse, .curveLinear], animations: {
            self.cloudsImageView.transform = CGAffineTransform(translationX: -(self.cloudsImageView.frame.width-self.view.frame.width), y: 0)
        })
    }
    
    @IBAction func SegmentChanged(_ sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex {
        case 0:
            UIView.animate(withDuration: 0.3, animations: {
                self.departingView.transform = .identity
                self.returningView.transform = .identity
                self.addCityButton.alpha = 0
            })
            break
        case 1:
            UIView.animate(withDuration: 0.3, animations: {
                self.returningView.transform = CGAffineTransform(translationX: self.returningView.frame.width + 50, y: 0)
                let x = self.view.center.x - self.departingView.center.x
                self.departingView.transform = CGAffineTransform(translationX: x, y: 0)
                self.addCityButton.alpha = 0
            })
            break
        default:
            // 3rd Segment
            UIView.animate(withDuration: 0.3, animations: {
                self.addCityButton.alpha = 1
            })
            break
        }
    }
    
    
    @IBAction func customSegmentValueChanged(_ sender: CustomSegmentedControl) {
        switch sender.selectedSegmentIndex {
        case 0:
            UIView.animate(withDuration: 0.3, animations: {
                self.departingView.transform = .identity
                self.returningView.transform = .identity
                self.addCityButton.alpha = 0
            })
            break
        case 1:
            UIView.animate(withDuration: 0.3, animations: {
                self.returningView.transform = CGAffineTransform(translationX: self.returningView.frame.width + 50, y: 0)
                let x = self.view.center.x - self.departingView.center.x
                self.departingView.transform = CGAffineTransform(translationX: x, y: 0)
                self.addCityButton.alpha = 0
            })
            break
        default:
            // 3rd Segment
            UIView.animate(withDuration: 0.3, animations: {
                self.addCityButton.alpha = 1
            })
            break
        }
    }
    
    @IBAction func flexibleDays(_ sender: UIButtonX) {
        if sender.backgroundColor == .clear {
            sender.backgroundColor = .lightGray
            sender.setTitleColor(.black, for: .normal)
        } else {
            sender.backgroundColor = .clear
            sender.setTitleColor(.white, for: .normal)
        }
    }
    
    @IBAction func agreeSwitched(_ sender: UISwitch) {
        searchButton.isEnabled = sender.isOn
    }
}


