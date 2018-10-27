//
//  ViewController.swift
//  MinhasAnotacoes
//
//  Created by Hebert Falcão on 28/04/2018.
//  Copyright © 2018 hebertfalcao. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textoCampo: UITextView!
    
    @IBAction func salvarAnotacao(_ sender: Any) {
        if let texto = textoCampo.text {
            UserDefaults.standard.set(texto, forKey: "minhaAnotacao")
        }
    }
    
    func recuperarAnotacao() -> String {
        if let textoRecuperado = UserDefaults.standard.object(forKey: "minhaAnotacao") {
            return textoRecuperado as! String
        }
        
        return ""
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        textoCampo.text = recuperarAnotacao()
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

