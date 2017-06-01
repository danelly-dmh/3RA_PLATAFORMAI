//
//  ViewController.swift
//  EVA3_6_PERSISTENCIA2
//
//  Created by TEMPORAL2 on 09/05/17.
//  Copyright © 2017 comdanelly. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var misSliders: [UISlider]!

    @IBOutlet weak var txtView: UITextView!
    @IBAction func btnGuardar(sender: AnyObject) {
        //obtener ruta donde vamos a guardar en el directorio
        let tempDirect = NSTemporaryDirectory()
        //obtener URL
        let tempDirectURL = NSURL(fileURLWithPath: tempDirect)
        //nombre del archivo
        let archivo = tempDirectURL.URLByAppendingPathComponent("Danelly.txt")
        let arreglo = (misSliders as NSArray).valueForKey("value") as! NSArray
        arreglo.writeToURL(archivo, atomically: true)//se guarda en la ruta indicada
        
    }
    @IBAction func btnVer(sender: AnyObject) {
        //obtener ruta donde vamos a guardar en el directorio
        let tempDirect = NSTemporaryDirectory()
        //obtener URL
        let tempDirectURL = NSURL(fileURLWithPath: tempDirect)
        //nombre del archivo
        let archivo = tempDirectURL.URLByAppendingPathComponent("Danelly.txt")
        //vamos a recuperar el contenido del archivo y ponerlo en el txtView
        if (NSFileManager.defaultManager().fileExistsAtPath(archivo.path!)){
            if let arreglo  = NSArray(contentsOfURL: archivo) as? [Double]{
                var cadena = ""
                for i in 0..<arreglo.count {
                    cadena = cadena + "\(arreglo[i])" + "\n"
                }
                txtView.text = cadena
            }
        }
    }
    @IBOutlet weak var lblVer: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        //obtener ruta donde vamos a guardar en el directorio
        let tempDirect = NSTemporaryDirectory()
        //obtener URL
        let tempDirectURL = NSURL(fileURLWithPath: tempDirect)
        //nombre del archivo
        let archivo = tempDirectURL.URLByAppendingPathComponent("Danelly.txt")
        //vamos a recuperar el contenido del archivo y ponerlo en el txtView
        if (NSFileManager.defaultManager().fileExistsAtPath(archivo.path!)){
            if let arreglo  = NSArray(contentsOfURL: archivo) as? [Double]{
                var cadena = " "
                for i in 0..<arreglo.count {
                    cadena = cadena + "\(arreglo[i])" + "\n"
                }
                txtView.text = cadena
            }
        }
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

