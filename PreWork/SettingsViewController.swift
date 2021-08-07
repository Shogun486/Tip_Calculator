//
//  SettingsViewController.swift
//  Prework
//
//  Created by Shagun Karmacharya on 7/24/21.
//

import UIKit

class SettingsViewController: UIViewController
{
    let userDefaults = UserDefaults.standard //Save User Settings
    
    @IBOutlet weak var SwitchForDark: UISwitch!
    @IBOutlet weak var DisplaySettingLabel: UILabel!
    @IBOutlet weak var DarkModeLabel: UILabel!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        checkSwitchState() // Dark Mode On Or Off?
        // Do any additional setup after loading the view.
    }
    
    func checkSwitchState()
    {
        if(userDefaults.bool(forKey: "key"))
        {
            SwitchForDark.setOn(true, animated: false)
            DarkModeLabel.textColor = .white
            DisplaySettingLabel.textColor = .white
            view.backgroundColor = .black
            
            navigationController?.navigationBar.barTintColor = .black
            
            navigationController?.navigationBar.titleTextAttributes =
            [NSAttributedString.Key.foregroundColor: UIColor.white]
            
            tabBarController?.tabBar.barTintColor = .black
        }
        else
        {
            SwitchForDark.setOn(false, animated: false)
            userDefaults.set(false, forKey: "key")
            DarkModeLabel.textColor = .black
            DisplaySettingLabel.textColor = .darkGray
            view.backgroundColor = .white
            
            navigationController?.navigationBar.barTintColor = .white
            
            navigationController?.navigationBar.titleTextAttributes =
            [NSAttributedString.Key.foregroundColor: UIColor.black]
            
            tabBarController?.tabBar.barTintColor = .white
        }
    }
    
    @IBAction func Switched(_ sender: UISwitch)
    {
        if(SwitchForDark.isOn)
        {
            userDefaults.set(true, forKey: "key")
            DarkModeLabel.textColor = .white
            DisplaySettingLabel.textColor = .white
            view.backgroundColor = .black
            
            navigationController?.navigationBar.barTintColor = .black
            
            navigationController?.navigationBar.titleTextAttributes =
            [NSAttributedString.Key.foregroundColor: UIColor.white]
            
            tabBarController?.tabBar.barTintColor = .black
        }
        else
        {
            userDefaults.set(false, forKey: "key")
            DarkModeLabel.textColor = .black
            DisplaySettingLabel.textColor = .darkGray
            view.backgroundColor = .white
            
            navigationController?.navigationBar.barTintColor = .white
            
            navigationController?.navigationBar.titleTextAttributes =
            [NSAttributedString.Key.foregroundColor: UIColor.black]
            
            tabBarController?.tabBar.barTintColor = .white
        }
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
