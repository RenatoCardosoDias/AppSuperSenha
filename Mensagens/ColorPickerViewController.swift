//
//  ColorPickerViewController.swift
//  Mensagens
//
//  Created by Renato on 01/09/22.
//  Copyright © 2022 Eric Brito. All rights reserved.
//

import UIKit

protocol ColorPickerDelegate: class {
    func applyColor(color: UIColor)
}

class ColorPickerViewController: UIViewController {
    
    @IBOutlet weak var viColor: UIView!
    @IBOutlet weak var sliderRed: UISlider!
    @IBOutlet weak var sliderGreen: UISlider!
    @IBOutlet weak var sliderBlue: UISlider!
    
    
    weak var delegate: ColorPickerDelegate?
    //weak var reference: MessageViewController? 
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    @IBAction func chooseColor(_ sender: UIButton) {
        //quando o usuario escolher a cor, aplicar a cor
        delegate?.applyColor(color: viColor.backgroundColor!)
        //ao selecionar a cor desejada e quando apertar o botão, sair da tela
        dismiss(animated: true, completion: nil)
        
    }
    @IBAction func changeColor(_ sender: UISlider) {
        viColor.backgroundColor = UIColor(red: CGFloat(sliderRed.value), green: CGFloat(sliderGreen.value), blue: CGFloat(sliderBlue.value), alpha: 1.0)
    }
    
}
