//
//  FriendDetailsTableViewController.swift
//  socialCalendar
//
//  Created by Kevin Nguyen on 12/2/14.
//  Copyright (c) 2014 AIT. All rights reserved.
//

import UIKit

class FriendDetailsTableViewController: UITableViewController {
    
    var friend: Friend!

    @IBOutlet weak var userNameDetails: UILabel!
    @IBOutlet weak var realNameDetails: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    @IBAction func friendImageViewTap(sender: UITapGestureRecognizer) {
        if imageView.image != nil {
            var activityController = UIActivityViewController(activityItems: [imageView.image!], applicationActivities: nil)
            
            presentViewController(activityController, animated: true, completion: nil)
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
        imageView.image = friend.image
        userNameDetails.text = friend.userName
        realNameDetails.text = friend.realName

    }
    
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject!) {
        
        if segue.identifier == "editFriendsSegue" {
            
            let navigationController = segue.destinationViewController as UINavigationController
            let editFriendViewController = navigationController.topViewController as EditFriendsTableViewController
            
            editFriendViewController.friend = friend

        }
    }

}
