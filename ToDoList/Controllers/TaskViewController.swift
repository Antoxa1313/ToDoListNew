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
     
   var tasks =
    
//    ["Create app",
//                 "Sign the lease",
//                 "Options system",
//                 "Open corporation",
//                 "Fix Iphone",
//                 "Multifamily",
//                 "Property zoning"]

    [
           Task(cellTitle: "Create app", cellDescription: "ios app", cellStatus: "In progress"),
           Task(cellTitle: "Sign the lease", cellDescription: "Rental agreement", cellStatus: "Todo"),
           Task(cellTitle: "Options system", cellDescription: "Trading system", cellStatus: "In progress"),
           Task(cellTitle: "Fix Iphone", cellDescription: "Broken screen", cellStatus: "Todo"),
           Task(cellTitle: "Multifamily", cellDescription: "Property", cellStatus: "Todo")
       ]
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return 3
        return tasks.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "celll", for: indexPath) as! TaskTableViewCell
        
//        cell.textLabel?.text = "Hello world"
        cell.textLabel?.text = tasks[indexPath.row].cellTitle
        cell.textLabel?.text = tasks[indexPath.row].cellDescription
        
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

