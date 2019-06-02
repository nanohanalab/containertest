//
//  FavoriteViewController.swift
//  test
//
//  Created by 齋藤紗耶花 on 2019/06/02.
//  Copyright © 2019 Sayaka Saito. All rights reserved.
//

import UIKit

class FavoriteViewController: UIViewController {

    @IBOutlet var favView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let tapGesture : UITapGestureRecognizer = UITapGestureRecognizer(
            target: self,
            action: #selector(tapped))
        favView.addGestureRecognizer(tapGesture)
        // Do any additional setup after loading the view.
    }
    
    @objc func tapped() {
        NotificationCenter.default.post(name: Notification.Name("test"), object: nil, userInfo: ["test" : "test!!!"])
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
