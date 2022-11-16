//
//  StartViewController.swift
//  ColorizedApp
//
//  Created by Илья Морин on 14.11.2022.
//

import UIKit

protocol ViewControllerDelegate {
    func setNewBackColor(for backgroundColor: UIColor)
}
class StartViewController: UIViewController {

    @IBOutlet weak var startView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let hellowVC = segue.destination as? ViewController else { return }
        hellowVC.delegate = self
        hellowVC.mainViewColor = view.backgroundColor
    }
    
    @IBAction func letsGoButtonPressed() {
        dismiss(animated: true)
    }
}

// MARK: - ViewControllerDelegate
extension StartViewController: ViewControllerDelegate {
    func setNewBackColor(for backgroundColor: UIColor) {
        view.backgroundColor = backgroundColor
    }
}

