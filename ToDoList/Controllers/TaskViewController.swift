////
////  TaskViewController.swift
////  ToDoList
////
////  Created by Anton Nepotenko on 2023-06-26.
////
//
import UIKit

class TaskViewController: UIViewController {
//
//    @IBOutlet weak var tableView: UITableView!
//    
//    var tasks = [String]()
//    override func viewDidLoad() {
//        super.viewDidLoad()
//
//        self.title = "Tasks"
//        tableView.delegate = self
//        tableView.dataSource = self
//        
//        // Setup
//        
//        if (UserDefaults.standard.value(forKey: "setup") == nil) {
//            UserDefaults.setValue(true, forKey: "setup")
//            UserDefaults.setValue(0, forKey: "count")
//            
//            
//        }
//        DispatchQueue.main.async {
//            self.updateTasks()
//        }
//        
    }
//    
//    func updateTasks() {
//        guard let count = UserDefaults.standard.value(forKey: "count") as? Int else {
//            return
//        }
//        for X in 0..<count{
//            if let task = UserDefaults.standard.value(forKey: "task_\(X+1)") as? String {
//                tasks.append(task)
//            }
//        }
//    }
//    @IBAction func didTapAdd(_ sender: Any) {
//        
//////        let vc = storyboard?.instantiateViewController(withIdentifier: "entry") as! EntryViewController
//////
////        vc.title = "New Task"
////        vc.update = {
////
////        }
////        navigationController?.pushViewController(vc, animated: true)
////    }
////
//   
//}
//
////extension TaskViewController: UITableViewDelegate {
////    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
////        tableView.deselectRow(at: indexPath, animated: true)
////    }
////}
////
////extension TaskViewController: UITableViewDataSource {
////    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
////        return tasks.count
////    }
////
////    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
////        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
////
////        cell.textLabel?.text = tasks[indexPath.row]
////        return cell
////    }
////
////
////}
