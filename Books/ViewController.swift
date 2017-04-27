//
//  ViewController.swift
//  Books
//
//  Created by SDS-016 on 2017. 4. 27..
//  Copyright © 2017년 Kico. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        openAlert()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func openAlert() {
        
        let alert = UIAlertController(title: "환영합니다.", message: "Books 앱을 시작합니다.", preferredStyle: UIAlertControllerStyle.alert)
            //다른 스타일도 있다.
            //UIAlertControllerStyle.actionSheet
        
        let okAction = UIAlertAction(title: "확인", style: UIAlertActionStyle.default, handler: nil)
        
        
        //handler 매개변수를 지운경우 {중괄호를 넣어서 함수의 내용을 담을 수 있음}
        let cancelAction = UIAlertAction(title: "취소", style: UIAlertActionStyle.cancel) {
            (action: UIAlertAction) -> () in
            print(action.title!)//"취소"
            self.view.backgroundColor = UIColor.red
        }
        
        alert.addAction(okAction)
        alert.addAction(cancelAction)
        
        
        //self.present(alert, animated: true, completion: nil)
        
        self.present(alert, animated: true) {
            
            Timer.scheduledTimer(withTimeInterval: 3, repeats: false, block: {
                (Timer) -> Void in
                alert.dismiss(animated: true, completion: nil)
            })
            
        }
    }

}

