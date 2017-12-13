//
//  ViewController.swift
//  very-simple-json-stringfy
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        guard let dict = JsonStringfy.loadJSONFile(fileName: "Example") else {
            return
        }
        let stringfied = JsonStringfy.prettyPrint(with: dict)
        print(stringfied)
    }
}

