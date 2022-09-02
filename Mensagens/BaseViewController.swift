//
//  BaseViewController.swift
//  Mensagens
//
//  Created by Renato on 01/09/22.
//  Copyright © 2022 Eric Brito. All rights reserved.
//

import UIKit

class BaseViewController: UIViewController {
    
    @IBOutlet weak var lbMenssage: UILabel!
    var message : Message!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func changeColor(_ sender: UIButton){
        if let reference = self as? ColorPickerDelegate{
            //instanciar uma viewController qualquer através de um identificador
            let colorPicker = storyboard?.instantiateViewController(withIdentifier: "ColorPickerViewController") as! ColorPickerViewController
            //mudando o modo de apresentação da modal
            colorPicker.modalPresentationStyle = .overCurrentContext
            colorPicker.delegate = reference
            //vamos apresentar a viewcontroller
            present(colorPicker, animated: true, completion: nil)
        }
    }

} //end class BaseViewController: UIViewController
