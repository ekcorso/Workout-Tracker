//
//  ExerciseEntryViewController.swift
//  BarbellMath
//
//  Created by Emily Corso on 1/15/21.
//  Copyright © 2021 Emily Corso. All rights reserved.
//

import Foundation
import UIKit

class ExerciseEntryViewController: UITableViewController {
    
    @IBOutlet weak var exerciseName: UITextField!
    
    var workoutTrackerViewController: WorkoutTrackerViewController?
    
    //Rename tappedDone for what it will do rather than what it just did
    @IBAction func tappedDone(_ sender: Any) {
        //answer should be the value of the text field. See the "submitAction" part of promptForWeight method in PlateCountViewController to see how to set this up.
        if let exerciseNameField = exerciseName, let exerciseName = exerciseNameField.text, let workoutTrackerViewController = workoutTrackerViewController {
            let exercise = Exercise(name: exerciseName)
            workoutTrackerViewController.exercises.append(exercise)
        } else {
            assertionFailure("Failed to unwrap exererciseName.")
        }
        
        UITableView.transition(with: tableView, duration: 0.2, options: .transitionCrossDissolve, animations: {self.tableView.reloadData()}, completion: nil)
        
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func tappedCancel(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
}
