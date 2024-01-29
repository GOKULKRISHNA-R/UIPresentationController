//
//  ThirdViewController.swift
//  UIPresentationController
//
//  Created by Gokulkrishna Raju on 19/12/23.
//

import UIKit

class ThirdViewController: UIViewController {

    @IBOutlet weak var PopOverButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    
    @IBAction func buttonTapped(_ sender: UIButton) {
        switch sender.tag {
        case 1:
            modelPresentation(style: .automatic)
        case 2:
            modelPresentation(style: .custom)
        case 3:
            modelPresentation(style: .formSheet)
        case 4:
            modelPresentation(style: .pageSheet)
        case 5:
            modelPresentation(style: .popover)
        case 6:
            modelPresentation(style: .currentContext)
        case 7:
            modelPresentation(style: .overCurrentContext)
        case 8:
            modelPresentation(style: .fullScreen)
        case 9:
            modelPresentation(style: .overFullScreen)
        default:
            modelPresentation(style: .none)
        }
    }
    
    func modelPresentation(style: UIModalPresentationStyle) {
        guard let secVC = storyboard?.instantiateViewController(identifier: "SecViewController") as? SecViewController else {
            return
        }
        
        secVC.modalPresentationStyle = style
        
        self.present( secVC, animated: true, completion: nil )
     }
    
}
