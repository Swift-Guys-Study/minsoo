//
//  ViewController.swift
//  smoke_zone
//
//  Created by 강민수 on 2023/05/02.
//

import UIKit
import NMapsMap
import Alamofire

class ViewController: UIViewController {

    var MapInfoList : mapResponseList = []
    
    func getAllMapList() {
        MapService.shared.getAllMap { [self] (response) in
            
            switch(response) {
                
            case .success(let data):
                guard let listData = data as? mapResponseList else {return}
                self.MapInfoList = listData
                print(self.MapInfoList)
                
                // 실패할 경우에 분기처리는 아래와 같이 합니다.
            case .requestErr :
                print("requestErr")
            case .pathErr :
                print("pathErr")
            case .serverErr :
                print("serveErr")
            case .networkFail:
                print("networkFail")
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        getAllMapList()
        let mapView = NMFMapView(frame: view.frame)
        view.addSubview(mapView)
    }


}

