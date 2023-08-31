////
////  TaskViewController.swift
////  ToDoList
////
////  Created by Anton Nepotenko on 2023-06-26.
////
//
import UIKit

class TaskViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
//    var tasks = [Task]()
     
   var tasks = ["Create app",
                 "Sign the lease",
                 "Options system",
                 "Open corporation",
                 "Fix Iphone",
                 "Multifamily",
                 "Property zoning"]
//
//    [
//           Task(title: "Create app", description: "ios app", status: "In progress"),
//           Task(title: "Sign the lease", description: "Rental agreement", status: "Todo"),
//           Task(title: "Options system", description: "Trading system", status: "In progress"),
//           Task(title: "Fix Iphone", description: "Broken screen", status: "Todo"),
//           Task(title: "Multifamily", description: "Property", status: "Todo")
//       ]
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return 3
        return tasks.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
//        cell.textLabel?.text = "Hello world"
        cell.textLabel?.text = tasks[indexPath.row]
        
        return cell
    }
    
    @IBOutlet weak var tableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
//        updateTasks()
    }
    
    @IBAction func addButtonPressed(_ sender: UIBarButtonItem) {
        
        let vc2 = storyboard?.instantiateViewController(withIdentifier: "detail") as! TaskDetailViewController
            self.navigationController?.pushViewController(vc2, animated: true)
    }
//        func updateTasks() {
//           guard let count = UserDefaults.standard.value(forKey: "count") as? Int else {
//               return
//           }
//            for X in 0..<count{
//                if let task = UserDefaults.standard.value(forKey: "task_\(X+1)") as? String {
//                    tasks.append(task)
//                }
//            }
//        }
        
    }

