//
//  LabelPopOverViewController.swift
//  Band-Audition-App
//
//  Created by ECCLES, JUSTIN on 1/11/17.
//  Copyright © 2017 Copy Pasta Coding. All rights reserved.
//

import UIKit

//MARK: Global Properties related to this class
var desiredLabel: String = "Error"

class LabelPopOverViewController: UIViewController
{
    //MARK: Properties
    @IBOutlet weak var descriptionLabel: UILabel!
    
    //MARK: Library of Label Texts
    //Descriptions for Percussion Forms
    let rhythmicAccuracy: String = "Rhythmic Accuracy is scored on the amount of rhythmic errors made while playing any of the etudes or sight reading. Rhythms include accurate playing and lengths of rolls. Each rhythmic error will reduce the score by 1 point."
    let pitchAccuracy: String = "Pitch Accuracy is scored on the amount of individually melodic errors made while playing any of the etudes or sight reading. Each missed pitch will reduce the score by 1 point."
    let tempoAccuracy: String = "Tempo Accuracy is scored on the amount of measures played accurately to the marked tempo for the etude or sight reading. For every 5 beats-per-minute off of the written tempo, 1 point will be deducted (5 bpm off = 1, 10 bpm off = 2, etc.).  For every bar that is played with a tempo fluctuation or inconsistency, 2 points will be deducted. "
    let dynamicAccuracy: String = "Dynamic Accuracy is scored on the amount of dynamic mistakes made during any of the etudes or sight reading.  Score is determined based on how many dynamic markings exist in the excerpt.  If there are only two separate dynamics, then each one is worth 10 points.  If there are three, each dynamic is worth 7 points (7+7+6).  That pattern continues on to fluctuate for each excerpt."
    let soundProduction: String = "Sound Production is scored on the quality of sound produced on the appropriate instrument. Snare head playing positions and where mallets are striking the timpani and marimba bars are the focal point. For every measure that includes an error or inconsistent sound production, 1-2 points will be deducted."
    //Descriptions for Jazz Forms
    let supportOfWinds: String = "50 = accurate, precise, no hesitation\n40-49 = hesitations, 1-2 errors or corrections\n30-39 = 3 or more errors or corrections\n20-29 = frequent or repeated errors\n10-19 = seldom performs rhythms accurately"
    let pitchProduction: String = "50 = accurate, precise, no hesitation\n40-49 = hesitations, 1-2 errors or corrections\n30-39 = 3 or more errors or corrections\n20-29 = frequent or repeated errors\n10-19 = seldom performs rhythms accurately"
    let timeStability: String = "50 = accurate, precise, no instability\n40-49 = slight instability, 1-2 errors\n30-39 = 3 or more errors or corrections\n20-29 = frequent or repeated instability\n10-19 = seldom keeps stable time"
    let rhythmicAccuracyJazz: String = "50 = accurate, precise, no hesitation\n40-49 = hesitations, 1-2 errors or corrections\n30-39 = 3 or more errors or corrections\n20-29 = frequent or repeated errors\n10-19 = seldom performs rhythms accurately"
    let articulationsJazzFeel: String = "50-40 = plays with great sensitivity & balance\n30-39 = plays with good sensitivity & balance\n20-29 = plays the style but sounds mechanical\n10-19 = very mechanical & poor balance\n0-9 = ohmigosh"
    let improvisation: String = "(drums, 1x through)\n50-40 = great notes & rhythm, swings doing it\n30-39 = good notes/rhythm, style diminishes\n20-29 = some OK note/rhythm choices\n10-19 = gave it a shot, but it's not happening\n10 = chose NOT to improvise, repeated melody"
    let leftHandIndependence: String = "50 = accurate, precise, no hesitation\n40-49 = hesitations, 1-2 errors or corrections\n30-39 = 3 or more errors or corrections\n20-29 = frequent or repeated errors\n10-19 = seldom performs rhythms accurately"
    //Descriptions for Wind form
    let knowledgePerformance: String = "4.0-5.0 = NO errors, very secure pitches & rhythms.\nRange of score is determined by tempo\n3.0-3.9 = Less than perfect; a few errors or corrections.\n2.0-2.9 = several errors; less than 80% accuracy\n1.0-1.9 = Repeated or frequent errors (40%-60%)\n0-.9 = seldom performs pitches accurately. (0%-40%)"
    let pitchProductionWinds: String = "(Most conservative scoring)\n5.0 = Virtually no errors and very securely played.\n4.0-4.9 = Accurate, but with hesitations or corrections\n3.0-3.9 = Isolated errors that have not been corrected\n2.0-2.9 = Frequent or repeated errors\n1.0-1.9 = Seldom performs pitches accurately"
    let rhythmProduction: String = "(Most conservative scoring)\n5.0 = Rhythmically accurate and secure pulse.\n4.0-4.9 = Accurate, but w/ hesitation or few corrections\n3.0-3.9 = Performs w/ a few duration errors (ties, dots)\n2.0-2.9 = Performs w/ repeated erros or erratic pulse\n1.0-1.9 = Seldom rhythmically accurate or steady"
    let articulation: String = "(Most conservative scoring)\n4.0-5.0 = Accurate to written articulations with good pedagogical responses to legato/staccato/marcato\n3.0-3.9 = SOMETIMES accurate or with inconsistant pedagogical responses to legato/staccato/marcato\n2.0-2.9 = OCCASIONALLY accurate, or accurate with fair pedagogical responses to legato/staccato/marcato;\nrandom at times\n1.0-1.9 = Seldom accurate to written articulations"
    let dynamics: String = "(Highest Instance)\n4.0-5.0 = ALWAYS performs musically with dynamics as indicated, as well as with personal phrase shaping.\n3.0-3.9 = OFTEN performs with dynamics as indicated\n2.0-2.9 = Limited response to indicated dynamics\n1.0-1.9 = Performs with LITTLE OR NO ATTENTION to dynamics"
    let tone: String = "(Highest Instance)\n4.0-5.0 = Plays with a full, resonant, mature sound (includes vibrato on flutes/saxophones\n3.0-3.9 = General command of tonal concept; NO DISTRACTING TONAL MANNERISMS (airy, spitty, etc.)\n2.0-2.9 = Produces a less acceptable tone, not focused, centered, or supported.\n1.0-1.9 = Seldom produces a quality tone."
    let superiorExpessionStyle: String = "(Highest instance, indicative of truly superior performances.)\n4.0-5.0 = Consistant. Performs with superior nuance/style.\n3.0-3.9 = Occasional perf. w/ superior nuance/style.\n1.0-2.9 = A few indications of personal nuance/style."
  
    override func viewDidLoad()
    {
        
        super.viewDidLoad()
        //Modifying the label
        descriptionLabel.textAlignment = .center
        descriptionLabel.text! = setDescription()//Sets the text
        descriptionLabel.sizeToFit()//Resizes the label to fit horizontally
        //let labelHeight = descriptionLabel.frame.size.height
        preferredContentSize = CGSize(width: 200, height: 250)
        
        
    }
    
    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func setDescription() -> String
    {
        //Uses the "library" of label texts that are class variables.
        switch desiredLabel {
        case "Rhythmic Accuracy":
            return rhythmicAccuracy
        case "Pitch Accuracy":
            return pitchAccuracy
        case "Tempo Accuracy":
            return tempoAccuracy
        case "Dynamic Accuracy":
            return dynamicAccuracy
        case "Sound Production":
            return soundProduction
        case "Support of Wind":
            return supportOfWinds
        case "Pitch Production":
            return pitchProduction
        case "Time Stability":
            return timeStability
        case "Rhythmic Accuracy ": //Jazz needs a space after accuracy to differentiate it from the freshmen and varsity variation of Rhythmic Accuracy
            return rhythmicAccuracyJazz
        case "Articulations and Jazz Feel":
            return articulationsJazzFeel
        case "Improvisation":
            return improvisation
        case "Left Hand Independence":
            return leftHandIndependence
        //Space for concert winds descriptions
        case "Scale 1":
            return knowledgePerformance
        case "Scale 2":
            return knowledgePerformance
        case "Scale 3":
            return knowledgePerformance
        case "Scale 4":
            return knowledgePerformance
        case "Scale 5":
            return knowledgePerformance
        case "Chromatic Scale":
            return knowledgePerformance
        case "Pitch Production "://Space necessary to differentiate percussion and winds
            return pitchProductionWinds
        case "Rhythm Production":
            return rhythmProduction
        case "Articulation":
            return articulation
        case "Dynamics":
            return dynamics
        case "Tone":
            return tone
        case "Superior Expression & Style":
            return superiorExpessionStyle
        default:
            Swift.print("setDescription Default case called. desiredLabel: \(desiredLabel)")
            return "Default Called"
        }
        
    }
}
