//
//  ViewController.swift
//  papago
//
//  Created by 강민수 on 2023/05/23.
//

import UIKit
import Alamofire

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        //통신에 연결하기 위한 url입니다.
        let url = "https://openapi.naver.com/v1/papago/n2mt"
        
        //통신에서 필요한 파라미터를 키 밸류 값으로 묶어서 보냅니다.
        //한국어 -> 영어, 번역할 내용을 파라미터로 보냅니다.
        let parameters: Parameters = [
                    "source": "ko",
                    "target": "en",
                    "text": "안녕하세요 저는 강민수라고 합니다. 지금 성윤이가 만든 코드를 리뷰하는 중 입니다. 우리 모두 화이팅 해서 좋은 결과 있었으면 좋겠습니다."
                ]
        
        //통신에 필요한 헤더를 보냅니다.
        let headers: HTTPHeaders = [
                    "Content-Type": "application/x-www-form-urlencoded; charset=UTF-8",
                    "X-Naver-Client-Id": "HRZepirST6F3gpwzVSAQ",
                    "X-Naver-Client-Secret": "RwfqeBvT48"
                ]
        AF.request(url, method: .post,
                   parameters: parameters,
                   encoding: URLEncoding.default,
                   headers: headers).responseJSON { response in
            switch response.result {
                //만약 response가 성공일 경우
            case .success(let value):
                //얻어온 값을 json 변수에 저장
                if let json = value as? [String: Any],
                   //얻어온 값에 message키에 값에 해당하는 값을 가져온다.
                   let papagoDTO = json["message"] as? [String: Any],
                   //위에서 가져온 값에 result의 키에 해당하는 값을 가져온다.
                   let result = papagoDTO["result"] as? [String: Any],
                   //위에서 가져온 값에 translatedText의 키에 해당하는 값을 가져온다.
                   let translatedText = result["translatedText"] as? String {
                    print(translatedText) //결과값 출력
                }
                //실패할 경우 error코드 출력
            case .failure(let error):
                print(error)
            }
        }
    }
}
