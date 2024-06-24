import UIKit




class ViewController: UIViewController, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "custom", for: indexPath) as? CustomTableViewCell
        
        
        
        cell?.titleLabel.text = "asdf"
        
        return cell!
    }
    
    
    @IBOutlet weak var tableVIew: UITableView!
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableVIew.register(.init(nibName: "CustomTableViewCell", bundle: nil), forCellReuseIdentifier: "custom")
        
        tableVIew.dataSource = self
        
    }


}

