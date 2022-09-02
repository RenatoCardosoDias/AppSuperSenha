//
//  ResultViewController.swift
//  Mensagens
//
//  Copyright © 2017 Eric Brito. All rights reserved.
//

import UIKit

class ResultViewController: BaseViewController {
    
    var useWhiteBorder : Bool = false
    

    @IBOutlet weak var viBorder: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.setNavigationBarHidden(true, animated: true)
        
        lbMenssage.text = message.text
        lbMenssage.textColor = message.textColor
        lbMenssage.backgroundColor = message.backgroundColor
        view.backgroundColor = message.screenColor
        viBorder.backgroundColor = useWhiteBorder ? .white : .clear
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        navigationController?.popViewController(animated: true)
    }
}
