//
//  ViewController.swift
//  Mensagens
//
//  Copyright © 2017 Eric Brito. All rights reserved.
//

import UIKit

class MessageViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        message = Message() //Instanciando
    }
    
    //passando informações de  uma tela para outra
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.destination as! MessageColorViewController
        vc.message = message
    }
    
    
} //end class MessageViewController

//Mark:Extensions

extension MessageViewController: UITextFieldDelegate {
    //metodo que executando quando o usuário clica em concluir
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        //pegar a mensagem e dizer que o texto dele vai ser o texto que vou recuprar do meu textfield
        message.text = textField.text!
        lbMenssage.text = textField.text!
        //Quando trocar o texto fazer com que o teclado desapareca
        textField.resignFirstResponder()
        
        return true
    }//end func textFieldSouldReturn
} //end MessageViewController: UITextfieldDelegate

extension MessageViewController: ColorPickerDelegate{
    //Aplicando a cor
    func applyColor(color: UIColor) {
        lbMenssage.textColor = color
        message.textColor = color
    }
}//end extension MessageViewController: ColorPickerProtocol
