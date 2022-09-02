//
//  MessageColorViewController.swift
//  Mensagens
//
//  Copyright © 2017 Eric Brito. All rights reserved.
//

import UIKit

class MessageColorViewController: BaseViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lbMenssage.text = message.text
        lbMenssage.textColor = message.textColor
        lbMenssage.backgroundColor = message.backgroundColor
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.destination as! ScreenColorViewController
        vc.message = message
    }

} //end class MessageColorViewController

extension MessageColorViewController: ColorPickerDelegate{
    func applyColor(color: UIColor) {
        lbMenssage.backgroundColor = color
        message.backgroundColor = color
    }
} //end extension MessageColorViewController: ColorPickProtocol

