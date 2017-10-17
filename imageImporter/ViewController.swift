//
//  ViewController.swift
//  imageImporter
//
//  Created by Satyam Saluja on 16/09/17.
//  Copyright © 2017 Satyam Saluja. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UINavigationControllerDelegate,UIImagePickerControllerDelegate
     {
    @IBOutlet weak var Addbutton: UIButton!
    @IBOutlet weak var myImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        Addbutton.layer.cornerRadius = 8
        Addbutton.layer.shadowColor=UIColor.red.cgColor
        Addbutton.layer.shadowRadius=67
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func AddButton(_ sender: Any) {
        let image=UIImagePickerController()
        image.delegate=self
        image.sourceType=UIImagePickerControllerSourceType.photoLibrary
        image.allowsEditing=false
        self.present(image,animated: true)
        {  // any further code
                              }
}
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        if let image = info[UIImagePickerControllerOriginalImage] as? UIImage{
            myImageView.image=image
        }
        else{
            //error message
        }
        self.dismiss(animated: true, completion: nil)
    }
}
