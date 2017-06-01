//
//  ViewController.swift
//  EVA3_8_AGREGAR_DATOS
//
//  Created by TEMPORAL2 on 16/05/17.
//  Copyright © 2017 comdanelly. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    var arreglo: NSMutableArray = []
   
    @IBOutlet weak var tblVwLista: UITableView!
    @IBOutlet weak var txtFldDatos: UITextField!
    @IBAction func capturarDatos(sender: AnyObject) {
        let ruta = obtenRuta()
        let sCade = txtFldDatos.text
        arreglo.addObject(sCade!)
        arreglo.writeToURL(ruta, atomically: true)
        tblVwLista.reloadData()//para que se actualice la tabla
    }
    func obtenRuta() ->NSURL {
        let tempDir = NSTemporaryDirectory()
        let tempDirURL = NSURL(fileURLWithPath: tempDir)
        let tempDirFile = tempDirURL.URLByAppendingPathComponent("milista.plist")
        return tempDirFile

    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //ABRIR EL ARCHIVO, LEER DATOS, ARREGLAR AL ARREGLO
        let ruta = obtenRuta()
        if(NSFileManager.defaultManager().fileExistsAtPath(ruta.path!)){
            arreglo = NSMutableArray(contentsOfURL: ruta)!
            
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arreglo.count
    }
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCellWithIdentifier("celda")
        celda?.textLabel?.text = arreglo[indexPath.row] as? String
        return celda!
    }
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        let controlador = UIAlertController(title: "Borraste: ", message: "", preferredStyle: .Alert)
        let boton = UIAlertAction(title: "OK", style: .Default, handler: nil)
        let ruta = obtenRuta()
        arreglo.removeObjectAtIndex(indexPath.row)
        arreglo.writeToURL(ruta, atomically: true)
        tblVwLista.reloadData()
        controlador.addAction(boton) //poner el controlador en el boton
        presentViewController(controlador, animated: true, completion: nil) // muestra el dato que selecciona
    }
}

