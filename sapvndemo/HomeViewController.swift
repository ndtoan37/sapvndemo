//
//  HomeViewController.swift
//  sapvndemo
//
//  Created by Nguyen, Toan on 2/8/18.
//  Copyright © 2018 SAP. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var btn_voiceControl: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        btn_voiceControl.titleLabel?.minimumScaleFactor = 0.5
        btn_voiceControl.titleLabel?.numberOfLines = 0
        btn_voiceControl.titleLabel?.adjustsFontSizeToFitWidth = true
        btn_voiceControl.titleLabel?.textAlignment = .center
        btn_voiceControl.contentEdgeInsets = UIEdgeInsets(top: 15, left: 0, bottom: 15, right: 0)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
