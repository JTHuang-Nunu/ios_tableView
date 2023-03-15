//
//  ViewController.swift
//  tableView
//
//  Created by Mac15 on 2023/3/15.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate, UITableViewDataSource {
    var names = ["1","2","3","4","5"]
    var images = ["fb_icon", "fb_icon", "firefox_icon", "twitter_icon", "youtube_icon"]


    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return names.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)

        cell.textLabel?.text = names[indexPath.row]
        cell.imageView?.image = UIImage(named: images[indexPath.row])
        return cell
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

