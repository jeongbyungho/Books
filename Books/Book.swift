//
//  Book.swift
//  Books
//
//  Created by SDS-016 on 2017. 4. 28..
//  Copyright © 2017년 Kico. All rights reserved.
//

import Foundation
import UIKit


class Book: NSObject, NSCoding { //이클래스가 아카이빙이 가능하다는 것을 알려줌
    
    enum Key: String {
        case title = "title"
        case author = "author"
        case coverImage = "coverImage"
        case URL = "url"
    }
    
    let title: String //무조건 책 제목 값은 있어야 한다.
    let author: String?
    let corverImage: UIImage?
    let URL: String?
    
    //클래스인경우 지정초기화를 생성
    
    init(title: String, author: String?, coverImage: UIImage?, URL: String?) {
        self.title = title
        self.author = author
        self.corverImage = coverImage
        self.URL = URL
    }

    func encode(with aCoder: NSCoder) {
        aCoder.encode(self.title, forKey: Key.title.rawValue)
        aCoder.encode(self.author, forKey: Key.author.rawValue)
        aCoder.encode(self.corverImage, forKey: Key.coverImage.rawValue)
        aCoder.encode(self.URL, forKey: Key.URL.rawValue)
        
        print("\(self.title) was encoded")
    }
    
    required init?(coder aDecoder: NSCoder) {
        self.title = aDecoder.decodeObject(forKey: Key.title.rawValue) as! String
        self.author = aDecoder.decodeObject(forKey: Key.author.rawValue) as? String
        self.corverImage = aDecoder.decodeObject(forKey: Key.coverImage.rawValue) as? UIImage
        self.URL = aDecoder.decodeObject(forKey:Key.URL.rawValue) as? String
        print("\(self.title) was decoded")
    }
}
