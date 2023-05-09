//
//  MapModel.swift
//  smoke_zone
//
//  Created by 강민수 on 2023/05/08.
//

import Foundation

struct MapResponse: Codable {
    let id, area_nm, area_desc, ctprvnnm: String?
    let signgunm, emdnm, area_se: String?
    let area_ar: Double?
    let rdnmadr, lnmadr, inst_nm: String?
    let latitude, longitude: Double?
    let ref_date: String?
    let fclty_knd: String?
    let note: String?
    let pageNo: String?
    let resultCode: String?
    let totalCount: String?
    let numOfRows: String?
    let resultMsg: String?
}


typealias mapResponseList = [MapResponse]
