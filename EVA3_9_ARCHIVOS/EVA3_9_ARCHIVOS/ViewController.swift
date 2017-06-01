//
//  ViewController.swift
//  EVA3_9_ARCHIVOS
//
//  Created by TEMPORAL2 on 17/05/17.
//  Copyright © 2017 comdanelly. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    var arreglo: NSMutableArray = []
    var arregloDatos: [String: [String]]!
    var arregloClave: [String]!
    @IBOutlet weak var txtFldDatos: UITextField!
    @IBOutlet weak var tblVwLista: UITableView!
    @IBAction func btnDatos(sender: AnyObject) {
        let ruta = obtenRuta()
        let sCade = txtFldDatos.text
        arreglo.addObject(sCade!)
        arreglo.writeToURL(ruta, atomically: true)
        tblVwLista.reloadData()//para que se actualice la tabla

    }
    
    func obtenRuta() ->NSURL {
        let tempDir = NSTemporaryDirectory()
        let tempDirURL = NSURL(fileURLWithPath: tempDir)
        let tempDirFile = tempDirURL.URLByAppendingPathComponent("sortednames.plist")
        return tempDirFile
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let ruta = NSBundle.mainBundle().pathForResource("sortednames", ofType: "plist")
        print(ruta)
        let diccionarioD = NSDictionary(contentsOfFile: ruta!)
        arregloDatos = diccionarioD as! [String:[String]]
        arregloClave = (diccionarioD!.allKeys as! [String]).sort()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return arregloClave.count
    }
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let clave = arregloClave[section]
        let nombresSec = arregloDatos[clave]!
        return nombresSec.count
    }
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCellWithIdentifier("celda", forIndexPath: indexPath) as UITableViewCell
        let clave = arregloClave[indexPath.section]
        let nombresSec = arregloDatos[clave]!
        celda.textLabel?.text = nombresSec[indexPath.row]
        return celda
    }
    
    func tableView(tableView: UITableView, titleForFooterInSection section: Int) -> String? {
        return arregloClave[section]
        
    }
    func sectionIndexTitlesForTableView(tableView: UITableView) -> [String]? {
        return arregloClave
    }
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        let controlador = UIAlertController(title: "Borraste: ", message: "", preferredStyle: .Alert)
        let boton = UIAlertAction(title: "OK", style: .Default, handler: nil)
        let ruta = obtenRuta()
        arreglo.writeToURL(ruta, atomically: true)
        tblVwLista.reloadData()
        controlador.addAction(boton) //poner el controlador en el boton
        presentViewController(controlador, animated: true, completion: nil)
        
        
        let stringArray = Array(arreglo)
        print(stringArray)
    }
}

