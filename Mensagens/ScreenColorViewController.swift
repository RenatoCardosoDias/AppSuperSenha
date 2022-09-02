//
//  ScreenColorViewController.swift
//  Mensagens
//
//  Copyright © 2017 Eric Brito. All rights reserved.
//

import UIKit

class ScreenColorViewController: BaseViewController {
    
    @IBOutlet weak var viBorder: UIView!
    @IBOutlet weak var swWhiteBorder: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lbMenssage.text = message.text
        lbMenssage.textColor = message.textColor
        lbMenssage.backgroundColor = message.backgroundColor
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.destination as! ResultViewController
        vc.message = message
        vc.useWhiteBorder = swWhiteBorder.isOn
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(false, animated: true)
    }
    
    @IBAction func changeBorder(_ sender: UISwitch) {
        //Se(?) o botão estiver ligado, eu vou mostrar a cor da borda branca senão(:) vai ficar transparente
        viBorder.backgroundColor = sender.isOn ? .white : .clear
    }
}//end ScreenColorViewController: BaseViewController

extension ScreenColorViewController: ColorPickerDelegate{
    func applyColor(color: UIColor) {
        view.backgroundColor = color
        message.screenColor = color
    }
}

