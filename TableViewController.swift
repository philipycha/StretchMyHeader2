//
//  TableViewController.swift
//  StretchMyHeader2
//
//  Created by Philip Ha on 2016-10-11.
//  Copyright © 2016 Philip Ha. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    
    @IBOutlet weak var dateLabel: UILabel!
    
    var newsItems = [CellItem]()
    
    override var prefersStatusBarHidden: Bool {
        get {
            return true
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let currentDate = Date()
        let dateFormatter = DateFormatter()
        
        dateFormatter.dateStyle = DateFormatter.Style.long
        let date = dateFormatter.string(from: currentDate as Date)
        dateLabel.text = date
        
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
