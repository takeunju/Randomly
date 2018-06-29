//
//  MenuViewController.swift
//  pickingout
//
//  Created by Eunju Tak on 2018. 5. 7..
//  Copyright © 2018년 Eunju Tak. All rights reserved.
//

import UIKit
import ChameleonFramework
import SVProgressHUD

class MenuViewController: UIViewController {
    
    
    var randomFoodIndex: Int = 0
    let foodArray = ["갈비","갈비탕","감바스","고등어구이","곱창전골","김밥","김치볶음밥","김치찌개","까르보나라","나시고랭","낚지볶음","냉면","냉우동","닭갈비","닭강정","닭발","돈까스","돼지국밥","된장찌개","떡국","떡볶이","라멘","라면","라볶이","막창구이","만두","메밀소바","물회","미고랭","보쌈","볶음밥","부대찌개","불고기","불막창","비빔국수","비빔만두","뼈해장국","삼겹살","삼계탕","샌드위치","샤브샤브","설렁탕","소고기국밥","소고기타다끼","수제비","순대볶음","순두부찌개","스테이크","쌀국수","아구찜","알리오올리오","야끼우동","양곱창","양념치킨","양장피","연어덮밥","오리주물럭","오리훈제","오므라이스","월남쌈","잡채","장어구이","장어덮밥","쟁반국수","제육볶음","족발","짜장면","짬뽕","쫄면","찜닭","치즈돈까스","치킨","치폴레","카레우동","칼국수","케밥","콩나물국밥","퀘사디아","타코","탕수육","파닭","파스타","파전","팟타이","피자","하몽","햄버거","회"]
    
    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var foodNameLabel: UILabel!
    @IBOutlet weak var startButton: RoundButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
      foodNameLabel.isHidden = true
        setCustomBackImage()
        setCustomTitle()
        
        let foodImages = [UIImage(named: "갈비")!,
                          UIImage(named: "갈비탕")!,
                          UIImage(named: "감바스")!,
                          UIImage(named: "고등어구이")!,
                          UIImage(named: "곱창전골")!,
                          UIImage(named: "김밥")!,
                          UIImage(named: "김치볶음밥")!,
                          UIImage(named: "김치찌개")!,
                          UIImage(named: "까르보나라")!,
                          UIImage(named: "나시고랭")!,
                          UIImage(named: "낚지볶음")!,
                          UIImage(named: "냉면")!,
                          UIImage(named: "냉우동")!,
                          UIImage(named: "닭갈비")!,
                          UIImage(named: "닭강정")!,
                          UIImage(named: "닭발")!,
                          UIImage(named: "돈까스")!,
                          UIImage(named: "돼지국밥")!,
                          UIImage(named: "된장찌개")!,
                          UIImage(named: "떡국")!,
                          UIImage(named: "떡볶이")!,
                          UIImage(named: "라멘")!,
                          UIImage(named: "라면")!,
                          UIImage(named: "라볶이")!,
                          UIImage(named: "막창구이")!,
                          UIImage(named: "만두")!,
                          UIImage(named: "메밀소바")!,
                          UIImage(named: "물회")!,
                          UIImage(named: "미고랭")!,
                          UIImage(named: "보쌈")!,
                          UIImage(named: "볶음밥")!,
                          UIImage(named: "부대찌개")!,
                          UIImage(named: "불고기")!,
                          UIImage(named: "불막창")!,
                          UIImage(named: "비빔국수")!,
                          UIImage(named: "비빔만두")!,
                          UIImage(named: "뼈해장국")!,
                          UIImage(named: "삼겹살")!,
                          UIImage(named: "샌드위치")!,
                          UIImage(named: "샤브샤브")!,
                          UIImage(named: "설렁탕")!,
                          UIImage(named: "소고기국밥")!,
                          UIImage(named: "소고기타다끼")!,
                          UIImage(named: "수제비")!,
                          UIImage(named: "순대볶음")!,
                          UIImage(named: "순두부찌개")!,
                          UIImage(named: "스테이크")!,
                          UIImage(named: "스파게티")!,
                          UIImage(named: "쌀국수")!,
                          UIImage(named: "아구찜")!,
                          UIImage(named: "알리오올리오")!,
                          UIImage(named: "야끼우동")!,
                          UIImage(named: "양곱창")!,
                          UIImage(named: "양념치킨")!,
                          UIImage(named: "양장피")!,
                          UIImage(named: "연어덮밥")!,
                          UIImage(named: "오리주물럭")!,
                          UIImage(named: "오리훈제")!,
                          UIImage(named: "오므라이스")!,
                          UIImage(named: "잡채")!,
                          UIImage(named: "월남쌈")!,
                          UIImage(named: "장어구이")!,
                          UIImage(named: "장어덮밥")!,
                          UIImage(named: "쟁반국수")!,
                          UIImage(named: "제육볶음")!,
                          UIImage(named: "족발")!,
                          UIImage(named: "짜장면")!,
                          UIImage(named: "짬뽕")!,
                          UIImage(named: "쫄면")!,
                          UIImage(named: "찜닭")!,
                          UIImage(named: "치즈돈까스")!,
                          UIImage(named: "치폴레")!,
                          UIImage(named: "치킨")!,
                          UIImage(named: "카레우동")!,
                          UIImage(named: "칼국수")!,
                          UIImage(named: "케밥")!,
                          UIImage(named: "콩나물국밥")!,
                          UIImage(named: "퀘사디아")!,
                          UIImage(named: "타코")!,
                          UIImage(named: "탕수육")!,
                          UIImage(named: "파닭")!,
                          UIImage(named: "파스타")!,
                          UIImage(named: "파전")!,
                          UIImage(named: "팟타이")!,
                          UIImage(named: "하몽")!,
                          UIImage(named: "햄버거")!,
                          UIImage(named: "회")!]
        
        imgView.animationDuration = 10
        imgView.animationImages = foodImages
        foodNameLabel.text = "오늘의 메뉴는?!"
    }
    
    func setCustomBackImage(){
        navigationItem.backBarButtonItem = UIBarButtonItem(title: "Back", style: .plain, target: nil, action: nil)
        
    }
    
    func setCustomTitle(){
        let label1 = UILabel()
        label1.text = "Today Menu"
        label1.font = UIFont(name: "DXAbtStd-B", size: 30)
        label1.textColor = UIColor.flatMint()
        label1.sizeToFit()
        navigationItem.titleView = label1
    }
    
    @IBAction func pressedButton(_ sender: RoundButton) {
        
        
        if imgView.isAnimating{
            imgView.stopAnimating()
            randomFoodIndex = Int(arc4random_uniform(90))
            imgView.image = UIImage(named: foodArray[randomFoodIndex])
            SVProgressHUD.showInfo(withStatus: foodArray[randomFoodIndex])
            SVProgressHUD.setMaximumDismissTimeInterval(0.5)
            //foodNameLabel.text = foodArray[randomFoodIndex]
            startButton.setTitle("Start", for: UIControlState.normal)
            
        }else {
            imgView.startAnimating()
            startButton.setTitle("Stop", for: UIControlState.normal)
            
            // how to remove SVProgressHUD show is here
            
            
            foodNameLabel.text = "오늘의 메뉴는?!"
        }
        
        
    }
    
    
}
