//
//  ViewController.swift
//  Simple Browser
//
//  Created by Mohtasim Abrar Samin on 18/11/21.
//

import UIKit

class ViewController: UITableViewController {
    var websites = ["www.apple.com", "www.google.com", "www.facebook.com", "www.twitter.com", "www.youtube.com"]
    var websiteNames = ["Apple", "Google", "Facebook", "Twitter", "Youtube"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Simple Browser"
        navigationController?.navigationBar.prefersLargeTitles = true
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return websites.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Website", for: indexPath)
        cell.textLabel?.text = websiteNames[indexPath.row]
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let vc = storyboard?.instantiateViewController(withIdentifier: "Web") as? WebViewController {
            vc.selectedWeb = websites[indexPath.row]
            navigationController?.pushViewController(vc, animated: true)
        }
    }
}
