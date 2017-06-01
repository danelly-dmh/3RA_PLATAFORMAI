//
//  ViewControllerTab.swift
//  EVA3_2_TABS_DATOS
//
//  Created by TEMPORAL2 on 02/05/17.
//  Copyright © 2017 comdanelly. All rights reserved.
//

import UIKit

class ViewControllerTab: UITabBarController {
    //var sCade = "inicio"

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func tabBar(tabBar: UITabBar, didSelectItem item: UITabBarItem){
        var sTitulo=""
        
        if item == tabBar.items![0]{
            sTitulo="UNO"
        }else if item == tabBar.items![1]{
            sTitulo="DOS"
        }else{
            sTitulo="TRES"
        }
        let alerta = UIAlertController(title: sTitulo, message: "hola mundo", preferredStyle: .Alert)
        let accion = UIAlertAction(title: "ok", style: .Default, handler: nil)
        alerta.addAction(accion)
        presentViewController(alerta, animated: true, completion: nil)
    }
}
