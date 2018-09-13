//
//  ViewController.swift
//  ViewFromCode
//
//  Created by Darya Kuliashova on 7/6/18.
//  Copyright © 2018 Darya Kuliashova. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var button: UIButton!
    @IBOutlet weak var secondButton: UIButton!
    
    let newView = UIView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        self.addNewView()
    }
    
    @IBAction func secondButtonPressed(_ sender: UIButton) {
        changeColorView()
    }
    
    
    private func addNewView() {
        self.newView.frame = CGRect(x: 50, y: 100, width: 100, height: 100)
        self.newView.backgroundColor = .gray
        self.newView.layer.cornerRadius = newView.frame.width / 2
        self.view.addSubview(newView)
    }
   
    private func changeColorView() {
        UIView.animate(withDuration: 1, animations: {
            self.newView.frame.origin.y += 200
            self.newView.backgroundColor = .yellow
        }, completion: { (_) in
            UIView.animate(withDuration: 1, animations: {
                self.newView.frame.origin.x += 150
                self.newView.backgroundColor = .red
            }, completion: { (_) in
                UIView.animate(withDuration: 1, animations: {
                    self.newView.frame.origin.y -= 200
                    self.newView.backgroundColor = .green
                }, completion: { (_) in
                    UIView.animate(withDuration: 1, animations: {
                        self.newView.frame.origin.x -= 150
                        self.newView.backgroundColor = .gray
                    }, completion: { (_) in
                        self.changeColorView()
                    })
                })
            })
        })
    }



    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    

}

