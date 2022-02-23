//
//  ViewController.swift
//  ej02Ainara
//
//  Created by user193642 on 1/24/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    var isSantoriniShowed = true

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        changeInfo()
    }

    @IBAction func infoAlert(_ sender: Any) {
        showAlert()
    }
    
    @IBAction func nextButton(_ sender: UIButton) {
        isSantoriniShowed.toggle()
        changeInfo()
    }
    
    func changeInfo() {
        if isSantoriniShowed {
            imageView.image = UIImage(named: "santorini")
            titleLabel.text = "Santorini"
            descriptionLabel.text = "Isla de Grecia muy conocida"
        } else {
            imageView.image = UIImage(named: "coliseo")
            titleLabel.text = "Coliseo romano"
            descriptionLabel.text = "Anfiteatro muy importante de Roma"
        }
    }
    
    func showAlert() {
        if isSantoriniShowed {
            let alert = UIAlertController(title: "Santorini", message: "Pequeño archipiélago circular formado por islas volcánicas, ubicado en el sur del mar Egeo, a unos 200km al sureste del territorio continental griego.", preferredStyle: .alert)
            //las dos siguientes líneas son para cerrar la alerta
            let action = UIAlertAction(title: "OK", style: .default, handler: nil)
            alert.addAction(action)
            present(alert, animated: true, completion: nil)
        } else {
            let alert = UIAlertController(title: "Coliseo romano", message: "Ubicado al este del Foro Romano. El más grande de los que se construyeron en el Imperio Romano.", preferredStyle: .alert)
            //las dos siguientes líneas son para cerrar la alerta
            let action = UIAlertAction(title: "OK", style: .default, handler: nil)
            alert.addAction(action)
            present(alert, animated: true, completion: nil)
        }
        
    }

}

