//
//  ViewController.swift
//  InstagramDemo
//
//  Created by KEA Vanchanraya on 2/12/19.
//  Copyright © 2019 KEA Vanchanraya. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var cameraButton: UIBarButtonItem!
    @IBOutlet weak var liveVideoButton: UIBarButtonItem!
    @IBOutlet weak var messageButtonTop: UIBarButtonItem!
    @IBOutlet weak var tableView: UITableView!
    
    let photoArray = ["1","2","3","4","5","6"]
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return photoArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "IGCell") as! IGTableViewCell
        let image = photoArray[indexPath.row]
        
        cell.photo.image = UIImage(named: image)
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 331.5
    }


}

