//
//  TableViewController.swift
//  StretchMyHeader2
//
//  Created by Philip Ha on 2016-10-11.
//  Copyright © 2016 Philip Ha. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController{
    
    @IBOutlet weak var tableHeaderView: UIView!
    @IBOutlet weak var dateLabel: UILabel!
    
    var newsItems = [CellItem]()
    
    override var prefersStatusBarHidden: Bool {
        get {
            return true
        }
    }
    
    let kTableHeaderHeight: CGFloat = 300.0
    let kTableHeaderCutAway: CGFloat = 80.0
    var headerMaskLayer: CAShapeLayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let currentDate = Date()
        let dateFormatter = DateFormatter()
        
        dateFormatter.dateStyle = DateFormatter.Style.long
        let date = dateFormatter.string(from: currentDate as Date)
        dateLabel.text = date
        
        
        tableView.tableHeaderView = nil;
        tableView.addSubview(tableHeaderView)
        
        let effectiveHeight = kTableHeaderHeight - kTableHeaderCutAway / 2
        tableView.contentInset = UIEdgeInsets(top: effectiveHeight, left: 0, bottom: 0, right: 0)
        tableView.contentOffset = CGPoint(x: 0, y: -effectiveHeight)
        
        headerMaskLayer = CAShapeLayer()
        headerMaskLayer.fillColor = UIColor.black.cgColor
        tableHeaderView.layer.mask = headerMaskLayer
        
        updateTableHeaderView()
        
        
        let news1 = CellItem(category: .World, headline: "Climate change protests, divestments meet fossil fuels realities")
        let news2 = CellItem(category: .Europe, headline: "Scotland's 'Yes' leader says independence vote is 'once in a lifetime'")
        let news3 = CellItem(category: .MiddleEast, headline:  "Airstrikes boost Islamic State, FBI director warns more hostages possible")
        let news4 = CellItem(category: .Africa, headline: "Nigeria says 70 dead in building collapse; questions S. Africa victim claim")
        let news5 = CellItem(category: .AsiaPacific, headline: "Despite UN ruling, Japan seeks backing for whale hunting")
        let news6 = CellItem(category: .Americas, headline: "Officials: FBI is tracking 100 Americans who fought alongside IS in Syria")
        let news7 = CellItem(category: .World, headline: "South Africa in $40 billion deal for Russian nuclear reactors")
        let news8 = CellItem(category: .Europe, headline: "'One million babies' created by EU student exchanges")
        
        newsItems = [news1, news2, news3, news4, news5, news6, news7, news8]
        
    }
    
    func updateTableHeaderView() {
        let effectiveHeight = kTableHeaderHeight - kTableHeaderCutAway / 2
        var headerRect = CGRect(x: 0, y: -effectiveHeight, width: tableView.bounds.width, height: kTableHeaderHeight)
        if tableView.contentOffset.y < -effectiveHeight {
            headerRect.origin.y = tableView.contentOffset.y
            headerRect.size.height = -tableView.contentOffset.y + (kTableHeaderCutAway / 2)
        }
        tableHeaderView.frame = headerRect
        
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 0, y: 0))
        path.addLine(to: CGPoint(x: headerRect.width, y: 0))
        path.addLine(to: CGPoint(x: headerRect.width, y: headerRect.height))
        path.addLine(to: CGPoint(x: 0, y: headerRect.height - kTableHeaderCutAway))
        headerMaskLayer?.path = path.cgPath
    }
    
    override func scrollViewDidScroll(_ scrollView: UIScrollView) {
        updateTableHeaderView()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return newsItems.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> CustomTableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "newsCell", for: indexPath) as! CustomTableViewCell
        
        let item = newsItems[indexPath.row]
        cell.newsItem = item
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableViewAutomaticDimension
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableViewAutomaticDimension
    }
    
    
}
