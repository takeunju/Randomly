//
//  TripViewController.swift
//  pickingout
//
//  Created by Eunju Tak on 2018. 5. 7..
//  Copyright © 2018년 Eunju Tak. All rights reserved.
//

import UIKit
import SVProgressHUD

class TripViewController: UIViewController {
    
    var randomTripIndex = 0
    let tripArray = ["강원도 삼척 환선굴","거제 바람의 언덕","거제 신선대","경기도 광명동굴","경주 불국사","경주 석굴암","남해 독일마을","대전 계족산 황톳길","대전 당태산 자연휴양림","부산 감천문화마을","부산 광안리해수욕장","부산 용두산공원","부산 태종대","부산 해동용궁사","부산 해운대해수욕장","상주 은모래비치","서울 N서울타워","서울 경북국","서울 창덕궁","설알산","용인 한국민속촌","인천 차이나타운","전남 완도 세연정","제주 성산일출봉","진도 세방낙조 전망대","진도 운림산방","청송 주산지","충남 신성리 갈대밭","평창 대관령","하동 최첨판댁","경기도 수원 화성","경기도 양평 두물머리","경기도 포천 아트밸리","공주 공산성","담양 죽녹원","대구 팔공산 동화사","보성 녹차밭","안동 하회마을","영덕 대게거리","우도","울산 간월재 억새군락지","울산 대왕암공원","전남 곡성 섬진강 기차마을","전북 임실 치즈마을","제주 섭지코지","춘천 남이섬","충북 단양 만천하스카카이워크","충북 단양 잔도","포천 국립수목원","합천 해인사"]
    
    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var destinationNameLabel: UILabel!
    @IBOutlet weak var startButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setCustomBackImage()
        setCustomTitle()
        
        let tripImages = [UIImage(named: "강원도 삼척 환선굴")!,
                          UIImage(named: "거제 바람의 언덕")!,
                          UIImage(named: "거제 신선대")!,
                          UIImage(named: "경기도 광명동굴")!,
                          UIImage(named: "경주 불국사")!,
                          UIImage(named: "경주 석굴암")!,
                          UIImage(named: "남해 독일마을")!,
                          UIImage(named: "대전 계족산 황톳길")!,
                          UIImage(named: "대전 장태산 자연휴양림")!,
                          UIImage(named: "부산 감천문화마을")!,
                          UIImage(named: "부산 광안리해수욕장")!,
                          UIImage(named: "부산 용두산공원")!,
                          UIImage(named: "부산 태종대")!,
                          UIImage(named: "부산 해동용궁사")!,
                          UIImage(named: "부산 해운대해수욕장")!,
                          UIImage(named: "상주 은모래비치")!,
                          UIImage(named: "서울 N서울타워")!,
                          UIImage(named: "서울 경북궁")!,
                          UIImage(named: "서울 창덕궁")!,
                          UIImage(named: "설악산")!,
                          UIImage(named: "용인 한국민속촌")!,
                          UIImage(named: "인천 차이나타운")!,
                          UIImage(named: "전남 완도 세연정")!,
                          UIImage(named: "제주 성산일출봉")!,
                          UIImage(named: "진도 세방낙조 전망대")!,
                          UIImage(named: "진도 운림산방")!,
                          UIImage(named: "청송 주산지")!,
                          UIImage(named: "충남 신성리 갈대밭")!,
                          UIImage(named: "평창 대관령")!,
                          UIImage(named: "하동 최첨판댁")!,
                          UIImage(named: "경기도 수원 화성")!,
                          UIImage(named: "경기도 양평 두물머리")!,
                          UIImage(named: "경기도 포천 아트밸리")!,
                          UIImage(named: "공주 공산성")!,
                          UIImage(named: "담양 죽녹원")!,
                          UIImage(named: "대구 팔공산 동화사")!,
                          UIImage(named: "보성 녹차밭")!,
                          UIImage(named: "안동 하회마을")!,
                          UIImage(named: "영덕 대게거리")!,
                          UIImage(named: "우도")!,
                          UIImage(named: "울산 간월재 억새군락지")!,
                          UIImage(named: "울산 대왕암공원")!,
                          UIImage(named: "전남 곡성 섬진강 기차마을")!,
                          UIImage(named: "전북 임실 치즈마을")!,
                          UIImage(named: "제주 섭지코지")!,
                          UIImage(named: "춘천 남이섬")!,
                          UIImage(named: "충북 단양 만천하스카이워크")!,
                          UIImage(named: "충북 단양 잔도")!,
                          UIImage(named: "포천 국립수목원")!,
                          UIImage(named: "합천 해인사")!
                          ]
        imgView.animationImages = tripImages
        imgView.animationDuration = 5
        destinationNameLabel.text = "당신을 위한 국내여행지!"
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    func setCustomBackImage(){
        navigationItem.backBarButtonItem = UIBarButtonItem(title: "Back", style: .plain, target: nil, action: nil)
        
    }
    
    func setCustomTitle(){
        let label1 = UILabel()
        label1.text = "Domestic"
        label1.font = UIFont(name: "DXAbtStd-B", size: 30)
         label1.textColor = UIColor.flatMint()
         label1.textColor = UIColor.flatMint()
        label1.sizeToFit()
        navigationItem.titleView = label1
    }
    
    
    @IBAction func pressedButton(_ sender: Any) {
        if imgView.isAnimating{
            imgView.stopAnimating()
            startButton.setTitle("Stop", for: UIControlState.normal)
            randomTripIndex = Int(arc4random_uniform(30))
            imgView.image = UIImage(named: "\(tripArray[randomTripIndex])")
            destinationNameLabel.text = "\(tripArray[randomTripIndex])"
            SVProgressHUD.setBorderColor(UIColor.flatMint())
            SVProgressHUD.showInfo(withStatus: tripArray[randomTripIndex])
            SVProgressHUD.setMaximumDismissTimeInterval(0.5)
            
            
        }else {
            imgView.startAnimating()
            startButton.setTitle("Start", for: UIControlState.normal)
            destinationNameLabel.text = "국내여행지!"
        }
    }
    
}
