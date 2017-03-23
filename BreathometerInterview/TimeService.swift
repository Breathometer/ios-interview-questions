//
//  TimeService.swift
//  BreathometerInterview
//
//  Created by Yusuke Kawanabe on 3/23/17.
//  Copyright © 2017 Breathometer. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON

struct Time {
    let fulldate: String?
    
    init(json: JSON) {
        fulldate = json["fulldate"].string
    }
}

class TimeService: NSObject {
    private let TIME_URL = "https://script.googleusercontent.com/macros/echo?user_content_key=n14ikvdBUp8A_WlRlcwa8KtzQrzH_A6kb7qt34zIa-vD_inyhSC2OA1zFhrUStUOV8nnlcuBYqfDAL9lYGlwmHJ6V4TeYnc3m5_BxDlH2jW0nuo2oDemN9CCS2h10ox_1xSncGQajx_ryfhECjZEnJ9GRkcRevgjTvo8Dc32iw_BLJPcPfRdVKhJT5HNzQuXEeN3QFwl2n0M6ZmO-h7C6eIqWsDnSrEd&lib=MwxUjRcLr2qLlnVOLh12wSNkqcO1Ikdrk"
    func load(completion: @escaping (Time) -> ()) {
        Alamofire.request(TIME_URL).responseJSON { response  in
            switch response.result {
            case .success(let data):
                let json = JSON(data)
                completion(Time(json: json))
            case .failure:
                print("Something is wrong.")
            }
        }
    }
}
