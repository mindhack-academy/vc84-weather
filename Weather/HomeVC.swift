//
//  ViewController.swift
//  Weather
//
//  Created by Valentin Condrea on 27/05/2019.
//  Copyright © 2019 Trainer. All rights reserved.
//

import UIKit

class HomeVC: UIViewController {
    @IBOutlet weak var forecastTableView: UITableView!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        forecastTableView.delegate = self
        forecastTableView.dataSource = self
    }
    
}

extension HomeVC: UITableViewDelegate {
    
    
}

extension HomeVC: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 7
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ForecastCell") as! ForecastCell
        
        let df = DateFormatter()
        cell.dayLabel.text = df.weekdaySymbols[indexPath.row]
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
    
}
