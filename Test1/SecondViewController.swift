//
//  SecondViewController.swift
//  Test1
//
//  Created by WENDOLEK, CONNOR on 9/17/15.
//  Copyright © 2015 Josh. All rights reserved.
//
//  Poorly named ViewController for the GameUI
//

import UIKit

class SecondViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    var numberguessed = 0   //user in
    var guesses = 0         //Number of guesses since correct, used in economy
    var numberlabel = ""
    var adjustlabel = ""    //Labels used by @Connor
    var secretnumber = 0    //number for guess desire
    var userlevel = 0.0
    var shaqs = 0.0
    var kobes = 0.0
    var filler = 0.0
    var daStats = [Double](count: 100, repeatedValue: 0.0)
    var daChieves: [[String]] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
       /* storeDouble("Level", value: 1.0)
        storeDouble("Shaq", value: 0.0)
        storeDouble("Kobe", value: 0.0)*/
        userlevel = getAllDaLevels()
        shaqs = getAllDaShaqs()
        kobes = getAllDaKobes()
        secretnumber = generateNumber(UInt32(userlevel))
        SideLabel.text = ""
        PersonLevel.text = String(Int(userlevel))  //various assigning
        
        scale = (scaleVal / userlevel)
        top = userlevel
        configureCollectionView()  //setup custom progress bar (i.e. number of cells changed)
        top = userlevel
        
        PersonLevel.text = String(Int(userlevel))
        configureCollectionView()
        sLay.reloadData()  //refresh bar
        storeDouble("Level", value: userlevel)
        GuessTell.text = "1"
        Arrows.image = UIImage(named: "blank")
        imageView.image = UIImage(named:"Red_Circle")
        TheNumber.text = ""
        daStats = getStatsArrays()
        daChieves = getAcheiveArrays()
        _ = NSTimer.scheduledTimerWithTimeInterval(1.0, target: self, selector: "addTime", userInfo: nil, repeats: true)
    }
    
    func addTime()
    {
        daStats[3]++
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBOutlet weak var TheNumber: UILabel!
    @IBOutlet weak var SideLabel: UILabel!
    @IBOutlet weak var GuessTell: UILabel!
    @IBOutlet weak var PersonLevel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var Arrows: UIImageView!
    @IBOutlet weak var LevelSay: UILabel!
    
    @IBAction func ShopButton(sender: AnyObject) {
        storeDoubleArray("Stats", valArray: daStats)
    }
    
    /*
     * @Connor refused to use the native numberpad, so we must do this stuff
     */
    @IBAction func Add0(sender: AnyObject) {
        if guesses == 0
        {
            TheNumber.text = ""
        }
        numberlabel = numberlabel + "0"
        TheNumber.text = numberlabel
    }
    
    @IBAction func Add1(sender: AnyObject) {
        if guesses == 0
        {
            TheNumber.text = ""
        }
        numberlabel = numberlabel + "1"
        TheNumber.text = numberlabel
    }
    
    @IBAction func Add2(sender: AnyObject) {
        if guesses == 0
        {
            TheNumber.text = ""
        }
        numberlabel = numberlabel + "2"
        TheNumber.text = numberlabel
    }
    
    @IBAction func Add3(sender: AnyObject) {
        if guesses == 0
        {
            TheNumber.text = ""
        }
        numberlabel = numberlabel + "3"
        TheNumber.text = numberlabel
    }
    
    @IBAction func Add4(sender: AnyObject) {
        if guesses == 0
        {
            TheNumber.text = ""
        }
        numberlabel = numberlabel + "4"
        TheNumber.text = numberlabel
    }
    
    @IBAction func Add5(sender: AnyObject) {
        if guesses == 0
        {
            TheNumber.text = ""
        }
        numberlabel = numberlabel + "5"
        TheNumber.text = numberlabel
    }
    
    @IBAction func Add6(sender: AnyObject) {
        if guesses == 0
        {
            TheNumber.text = ""
        }
        numberlabel = numberlabel + "6"
        TheNumber.text = numberlabel
    }
    
    @IBAction func Add7(sender: AnyObject) {
        if guesses == 0
        {
            TheNumber.text = ""
        }
        numberlabel = numberlabel + "7"
        TheNumber.text = numberlabel
    }
    
    @IBAction func Add8(sender: AnyObject) {
        if guesses == 0
        {
            TheNumber.text = ""
        }
        numberlabel = numberlabel + "8"
        TheNumber.text = numberlabel
    }
    
    @IBAction func Add9(sender: AnyObject) {
        if guesses == 0
        {
            TheNumber.text = ""
        }
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
    
    //Evalutes user in
    @IBAction func EnterDaNumber(sender: AnyObject) {
        if numberlabel != ""
        {
            updateStats(0, updatevalue: 1)
            if daChieves[0][1] == "No"
            {
                if daStats[0] > 99
                {
                    daChieves[0][1] = "Yes"
                    storeObjectArray("Achievements", valArray: daChieves)
                }
            }
            if daChieves[1][1] == "No"
            {
                if daStats[0] > 499
                {
                    daChieves[1][1] = "Yes"
                    storeObjectArray("Achievements", valArray: daChieves)
                }
            }
            if daChieves[2][1] == "No"
            {
                if daStats[0] > 999
                {
                    daChieves[2][1] = "Yes"
                    storeObjectArray("Achievements", valArray: daChieves)
                }
            }
            numberguessed = Int(numberlabel)!
            guesses++
            adjustlabel = calculateGuess(secretnumber, guessnumber: numberguessed)
            SideLabel.text = adjustlabel
            numberlabel = ""
            if adjustlabel == "Correct!"
            {
                updateStats(1, updatevalue: 1)
                imageView.image = UIImage(named:"Green_Circle")
                Arrows.image = UIImage(named: "blank")
                filler = Double(calculateShaqs(guesses, level: Int(userlevel)))
                shaqs += filler
                SideLabel.text = "Got \(Int(filler)) Shaqs!"
                storeDouble("Shaq", value: shaqs)
                updateStats(2, updatevalue: filler)
                if guesses == 1
                {
                    SideLabel.text = "Level Up!"
                    userlevel++
                    storeDouble("Level", value: Double(userlevel))
                    if daChieves[3][1] == "No"
                    {
                        if userlevel > 4
                        {
                            daChieves[3][1] = "Yes"
                            storeObjectArray("Achievements", valArray: daChieves)
                        }
                    }
                    if daChieves[4][1] == "No"
                    {
                        if userlevel > 9
                        {
                            daChieves[4][1] = "Yes"
                            storeObjectArray("Achievements", valArray: daChieves)
                        }
                    }
                }
                secretnumber = generateNumber(UInt32(userlevel))
                guesses = 0
                //GuessTell.text = "Guess 1-\(userlevel)"
                PersonLevel.text = String(Int(userlevel))
            }
            else
            {
                imageView.image = UIImage(named:"Red_Circle")
            }
            daStats[6] = ((daStats[1] / daStats[0]) * 100)
            storeDoubleArray("Stats", valArray: daStats)
        }
        //Arrow and ProgressBar logic
        let guess = Double(numberguessed)
        if adjustlabel == "Lower"
        {
            Arrows.image = UIImage(named: "red_filled")
            if guess < top
                {top = guess}
        }
        if adjustlabel == "Higher"
        {
            Arrows.image = UIImage(named: "green_filled")
            if guess > bot
                {bot = guess}
        }
        if adjustlabel == "Correct!"
        {
            bot = 0.0
            top = userlevel
        }
        //print(bot, top) //debug
        configureCollectionView()
        sLay.reloadData()
    }
    
    func updateStats(arraylocation: Int, updatevalue: Double)
    {
        daStats = getStatsArrays()
        daStats[arraylocation] = daStats[arraylocation] + updatevalue
        storeDoubleArray("Stats", valArray: daStats)
    }
    
    let cellID = "CellIdentifier"
    let sWidth  = UIScreen.mainScreen().bounds.size.width
    let sHeight = UIScreen.mainScreen().bounds.size.height
    let scaleVal = 50.0 //dont change //realistically these could be one constant, but lazy
    var scale: Double = 0.0 //dont change
    var bot = 0.0
    var top = 3.0
    
    @IBOutlet weak var sLay: UICollectionView!
    //decides number of cells based on scale and userlevel
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
    
    @IBAction func BackTo(sender: AnyObject) {
        let viewController:UIViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewControllerWithIdentifier("ViewController") as UIViewController
        self.presentViewController(viewController, animated: false, completion: nil)
    }
    

}
