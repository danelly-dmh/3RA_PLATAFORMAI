//
//  ViewController.swift
//  EVA3_5_Persistencia
//
//  Created by TEMPORAL2 on 08/05/17.
//  Copyright © 2017 comdanelly. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var lblText: UILabel!
    @IBOutlet weak var txtFlDatos: UITextField!
    @IBAction func btnLeer(sender: AnyObject) {
        let rutaTemp = NSTemporaryDirectory()
        let rutaTempURL = NSURL(fileURLWithPath: rutaTemp)
        let archivo = rutaTempURL.URLByAppendingPathComponent("danelly.txt")
        do{
            try lblText.text = String(contentsOfFile: archivo.path!, encoding: NSUTF8StringEncoding)
        }catch _ {
            print("UOPS")
        }
    }
    @IBAction func btnGuardar(sender: AnyObject) {
        let rutaTemp = NSTemporaryDirectory()
        let rutaTempURL = NSURL(fileURLWithPath: rutaTemp)
        let archivo = rutaTempURL.URLByAppendingPathComponent("danelly.txt")
        do{
        try txtFlDatos.text?.writeToURL(archivo, atomically: true, encoding: NSUTF8StringEncoding)
        }catch _ {
            print("UOPS")
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

