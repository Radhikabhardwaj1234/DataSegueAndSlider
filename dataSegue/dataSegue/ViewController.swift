//
//  ViewController.swift
//  dataSegue
//
//  Created by Student on 27/03/25.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let data = segue.destination as! ViewController2
        data.mydata = input.text!
    }

    @IBAction func nextBtn(_ sender: Any) {
        performSegue(withIdentifier: "next" , sender: nil)
    }
    @IBOutlet var rateLbl: UILabel!
    @IBOutlet var lblSlider: UISlider!
    @IBOutlet var input: UITextField!
    @IBAction func sliderAction(_ sender: Any) {
        let t : Int = Int(lblSlider.value)
        rateLbl.text = String(t)
    }
}

