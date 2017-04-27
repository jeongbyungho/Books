//
//  MainTableViewController.swift
//  Books
//
//  Created by SDS-016 on 2017. 4. 27..
//  Copyright © 2017년 Kico. All rights reserved.
//

import UIKit

class MainTableViewController: UITableViewController, LoginProtocol {//프로토콜 준수하겠다
    
    var myArr:[[String:String]] = [[String:String]]()
    
    
    

    @IBAction func openLoginScene(_ sender: Any) {
        
        //loginview
        //loginview
        
        
        /*
        
        if let loginVC = storyboard?.instantiateViewController(withIdentifier: "loginview") as? LoginViewController {
            loginVC.delegate = self
            self.present(loginVC, animated: true, completion: nil)//모달방식으로 뜸
            //현재 테이블뷰를 로그인뷰의 delegate변수에 할당한다.
            //할당하면 이동한 화면에서 현재의 뷰를 컨트롤할 수 있다.
        }
        
        */
        
        //위와 동일한 방식
        //다른점은 이방식이 아니면 리턴하겠다. 즉 꼭 이방식을 해야 겟다.
        guard let loginVC = storyboard?.instantiateViewController(withIdentifier: "loginview") as? LoginViewController else {
            return
        }
        
        loginVC.delegate = self
        self.present(loginVC, animated: true, completion: nil)
        
        
        
    }
    
    
    //프로토콜 구현
    func completedLogin(name: String) {
        print(name)
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        myArr.append("홍길동")
//        myArr.append("김민수")
//        myArr.append("김길동")
        
        let dict1:[String:String] = ["name":"홍길동","phone":"010-2323-2222"]
        let dict2:[String:String] = ["name":"김민수","phone":"010-2323-3333"]
        let dict3:[String:String] = ["name":"김길동","phone":"010-2323-5555"]
        
        myArr.append(dict1)
        myArr.append(dict2)
        myArr.append(dict3)
        

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return myArr.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...
        
        let dict = myArr[indexPath.row]
        
        
        
        cell.textLabel?.text = dict["name"]
        cell.detailTextLabel?.text = dict["phone"]

        print("Row: \(indexPath.row)")
        
        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
