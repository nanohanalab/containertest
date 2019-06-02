//
//  MainViewController.swift
//  test
//
//  Created by 齋藤紗耶花 on 2019/06/02.
//  Copyright © 2019 Sayaka Saito. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    @IBOutlet weak var testLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        NotificationCenter.default.addObserver(self, selector: #selector(self.test), name: NSNotification.Name("test"), object: nil)
    }
    
    @objc func test(notification: NSNotification) {
        let text = notification.userInfo?["test"] as? String
        testLabel.text = text
//        testLabel.setNeedsDisplay()
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
