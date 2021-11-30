//
//  ViewController.swift
//  MoviesOnline
//
//  Created by Avalith on 11/27/21.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var tableView: UITableView!
    var moviesLst = [""]
    let reuseIdentifier = "movieCell"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.delegate = self
        tableView.dataSource = self
        moviesLst = ["Noticia 1", "Noticia 2", "Noticia 3", "Noticia 4", "Noticia 5"]
        print("Hello Mauricio !!")
    }


}

extension ViewController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return moviesLst.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: reuseIdentifier, for: indexPath)as! MovieCell
        cell.titleTv.text = moviesLst[indexPath.row]
        return cell
    }
}

