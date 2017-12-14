//
//  ViewController.swift
//  very-simple-json-stringfy
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        guard let dict = JsonStringfy.loadJSONFile(fileName: "Example") else {
            return
        }
        JsonStringfy.prettyPrint(dict)
        textView.text = JsonStringfy.prettyString(dict)
    }
}

