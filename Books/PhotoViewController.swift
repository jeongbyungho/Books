//
//  PhotoViewController.swift
//  Books
//
//  Created by SDS-016 on 2017. 4. 27..
//  Copyright © 2017년 Kico. All rights reserved.
//

import UIKit

class PhotoViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate
{

    @IBAction func close(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    @IBOutlet var coverImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        coverImageView.isUserInteractionEnabled = true
        coverImageView.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(selectPhoto)))

        // Do any additional setup after loading the view.
    }
    
    func  selectPhoto(sender: UITapGestureRecognizer) {
        
        
        if sender.state == .ended {
            print("test")
            let picker = UIImagePickerController()
            picker.sourceType = UIImagePickerControllerSourceType.savedPhotosAlbum
            picker.allowsEditing = true
            picker.delegate = self
            
            self.present(picker, animated: true, completion: nil)
            
        }
        
        
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        
        if let pickedImage = info[UIImagePickerControllerOriginalImage] as? UIImage {
            coverImageView.contentMode = .scaleAspectFit
            //coverImageView.contentMode = .scaleToFill
            coverImageView.image = pickedImage
            
            //권한이 안되서 안열림
            
        }
        
        picker.dismiss(animated: true, completion: nil)
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
