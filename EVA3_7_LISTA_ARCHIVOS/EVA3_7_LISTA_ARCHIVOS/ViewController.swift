//
//  ViewController.swift
//  EVA3_7_LISTA_ARCHIVOS
//
//  Created by TEMPORAL2 on 11/05/17.
//  Copyright © 2017 comdanelly. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
    
    var arregloDatos: [String: [String]]!
    var arregloClave: [String]!
    
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
        let ruta2 = obtenRuta()
        
        let diccionarioD = NSDictionary(contentsOfURL: ruta2)
        arregloDatos = diccionarioD as! [String:[String]]
        arregloClave = (diccionarioD!.allKeys as! [String]).sort()
        //arregloDatos[arregloClave[0]]!.append("AAAAAAAAAA")
        //let diccionario2 = NSDictionary(dictionary: arregloDatos)
        //diccionario2.writeToURL(ruta2, atomically: true)
        
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

}

