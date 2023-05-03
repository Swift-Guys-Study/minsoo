//
//  ViewController.swift
//  smoke_zone
//
//  Created by 강민수 on 2023/05/02.
//

import UIKit
import NMapsMap

class ViewController: UIViewController {

    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let mapView = NMFMapView(frame: view.frame)
        view.addSubview(mapView)
    }


}

