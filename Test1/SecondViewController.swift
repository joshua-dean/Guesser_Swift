//
//  SecondViewController.swift
//  Test1
//
//  Created by WENDOLEK, CONNOR on 9/17/15.
//  Copyright © 2015 Josh. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    var numberguessed = 0
    var numberlength = 0
    var guesses = 0;
    var numberlabel = ""
    var adjustlabel = ""
    var secretnumber = 0
    var retarded: Double? = -42
    var userlevel = 0.0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        var level: Double? = retrieveDouble("Level")
        if retrieveDouble("Level") == retarded
        {
            level = 1
            storeDouble("Level", value: 1)
        }
        userlevel = Double(level!)
        secretnumber = generateNumber(UInt32(userlevel))
        //GuessTell.text = "Guess 1-\(userlevel)"
        //TheNumber.text = ""
        SideLabel.text = ""
        
        scale = (scaleVal / userlevel)
        //if(userlevel > scaleVal)
        //{}
        //else
        //{scale = 1}
        top = userlevel + 1
        configureCollectionView()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBOutlet weak var TheNumber: UILabel!
    @IBOutlet weak var SideLabel: UILabel!
    @IBOutlet weak var GuessTell: UILabel!
    
    @IBAction func ShopButton(sender: AnyObject) {
        storeDouble("Level", value: 1)
        userlevel = 1
        //GuessTell.text = "Guess 1-\(userlevel)"
        secretnumber = generateNumber(UInt32(userlevel))
    }
    
    @IBAction func Add0(sender: AnyObject) {
        numberlabel = numberlabel + "0"
        TheNumber.text = numberlabel
    }
    
    @IBAction func Add1(sender: AnyObject) {
        numberlabel = numberlabel + "1"
        TheNumber.text = numberlabel
    }
    
    @IBAction func Add2(sender: AnyObject) {
        numberlabel = numberlabel + "2"
        TheNumber.text = numberlabel
    }
    
    
    @IBAction func Add3(sender: AnyObject) {
        numberlabel = numberlabel + "3"
        TheNumber.text = numberlabel
    }
    
    @IBAction func Add4(sender: AnyObject) {
        numberlabel = numberlabel + "4"
        TheNumber.text = numberlabel
    }
    
    @IBAction func Add5(sender: AnyObject) {
        numberlabel = numberlabel + "5"
        TheNumber.text = numberlabel
    }
    
    @IBAction func Add6(sender: AnyObject) {
        numberlabel = numberlabel + "6"
        TheNumber.text = numberlabel
    }
    
    @IBAction func Add7(sender: AnyObject) {
        numberlabel = numberlabel + "7"
        TheNumber.text = numberlabel
    }
    
    @IBAction func Add8(sender: AnyObject) {
        numberlabel = numberlabel + "8"
        TheNumber.text = numberlabel
    }
    
    @IBAction func Add9(sender: AnyObject) {
        numberlabel = numberlabel + "9"
        TheNumber.text = numberlabel
    }
    
    @IBAction func DeleteNumber(sender: AnyObject) {
        if numberlabel.characters.count > 0
        {
            numberlabel = numberlabel.substringToIndex(numberlabel.endIndex.predecessor())
            TheNumber.text = numberlabel
        }
    }
    
    
    @IBAction func EnterDaNumber(sender: AnyObject) {
        if numberlabel != ""
        {
            numberguessed = Int(numberlabel)!
            guesses++
            adjustlabel = calculateGuess(secretnumber, guessnumber: numberguessed)
            SideLabel.text = adjustlabel
            TheNumber.text = ""
            numberlabel = ""
            if adjustlabel == "Correct!"
            {
                if guesses == 1
                {
                    userlevel++
                    storeDouble("Level", value: Double(userlevel))
                }
                secretnumber = generateNumber(UInt32(userlevel))
                guesses = 0
                //GuessTell.text = "Guess 1-\(userlevel)"
            }
        }
        let guess = Double(numberguessed)
        if adjustlabel == "Lower"
        {
            if guess < top
                {top = guess}
        }
        if adjustlabel == "Higher"
        {
            if guess > bot
                {bot = guess}
        }
        if adjustlabel == "Correct!"
        {
            bot = 0.0
            top = userlevel + 1.0
        }
        print(bot, top)
        configureCollectionView()
        sLay.reloadData()
        
    }
    
    let cellID = "CellIdentifier"
    let sWidth  = UIScreen.mainScreen().bounds.size.width
    let sHeight = UIScreen.mainScreen().bounds.size.height
    let scaleVal = 50.0 //dont change
    var scale: Double = 0.0 //dont change
    var bot = 0.0
    var top = 3.0
    /*
    sLay.reloadData()
    configureCollectionView()
    */
    
    @IBOutlet weak var sLay: UICollectionView!
    
    func configureCollectionView() {
        
        let cellWidth = sLay.bounds.width / CGFloat(userlevel * scale)
        let layout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
        layout.itemSize = CGSize(width: cellWidth, height: sLay.bounds.height)
        layout.minimumInteritemSpacing = 0
        
        sLay.collectionViewLayout = layout
        sLay.dataSource = self
        sLay.delegate = self
        sLay.registerClass(UICollectionViewCell.self, forCellWithReuseIdentifier: cellID)
        sLay.backgroundColor = UIColor.whiteColor()
        self.view.addSubview(sLay)
    }
    
    /*Scales the view via number of cells*/
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {return Int(userlevel * scale)}
    
    /* Decides colors of cells
    * Called by .reloadData()
    */
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let val = indexPath.row
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier(cellID, forIndexPath: indexPath) as UICollectionViewCell
        
        if(val >= Int(bot * scale) && val <= Int(top * scale))
        {cell.backgroundColor = UIColor.blueColor()}
        else
        {cell.backgroundColor = UIColor.purpleColor()}
        return cell
    }
    
    

}
