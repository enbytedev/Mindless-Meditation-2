//
//  InterfaceController.swift
//  mmwatch Extension
//
//  Created by Tommy Juhl on 1/25/20.
//  Copyright © 2020 Tommy Juhl. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {


    @IBOutlet weak var text: WKInterfaceLabel!
    @IBAction func tapIt() {

        
        var firstArray = ["To reduce the amount of bullshit in one's life, one must first reduce one's number of bulls."]
        firstArray += ["Since when in sports do you not get to hurt people?"]
        firstArray += ["Don't judge anybody's mental skills. We're all different."]
        firstArray += ["Just fool them into tricking them!"]
        firstArray += ["Go to time-out, you did a bad job. Welcome to the real world."]
        firstArray += ["Did you really think I could help you get over it? No, screw you."]
        firstArray += ["Remember, the only time you should think about frowning is when the situation calls for it."]
        firstArray += ["It is... what is is."]
        firstArray += ["What did you say you were high on?"]
        firstArray += ["Will anything ever fill that hole in your life?"]
        firstArray += ["Sometimes the only thing one can say is 'poopsticks.'"]
        firstArray += ["Be the ball."]
        firstArray += ["Oh... Well, atleast you didn't die."]
        firstArray += ["Just fool them into tricking them!"]
        firstArray += ["Gotta love cow farts. It contributes to global warming. But only if you believe in it."]
        firstArray += ["Remember, life is a mirror. You are who you are. Wait, what?"]
        firstArray += ["Be the cloud, and let the cloud be you."]
        firstArray += ["Whenever you want to complain, remember, nobody gives a damn..."]
        firstArray += ["The student never fully becomes the teacher."]
        firstArray += ["Don't you love the smell of fear? Oh wait. That's you."]
        firstArray += ["Renewable energy is the future. What about renewable life? That might also be a solution."]
        firstArray += ["Have you ever been scared to die? Then you're scared to live."]
        firstArray += ["Why do you like what you like? HMMM! This is a good question."]
        firstArray += ["You probably know this, but we're all slowly dying."]
        firstArray += ["What were you thinking when you did that? You certainly were being mindless."]
        firstArray += ["People do the wrong thing all the time... Why can't you call a toddler an asshole?"]
        firstArray += ["If you can't see the sky, you're probably dying from air pollution"]
        firstArray += ["Keep your head high, but always make sure you can see the ground!"]
        firstArray += ["Sometimes, you just gotta Obi-Wan the shit outta stuff..."]
        firstArray += ["Why are you so quiet? Is it a secret you're keeping?"]
        firstArray += ["Peace is not violence."]
        firstArray += ["Be one with the world, and let it be one with you."]
        firstArray += ["Don't try to be so cool. You are just too warm."]
        firstArray += ["Spitfire does not literally mean spitting fire. How does that apply to your life?"]
        firstArray += ["What do you think you are?"]
        firstArray += ["Have you ever prayed for someone else?"]
        firstArray += ["How many hours does it take to get enough licks to get to the center of a tootsie pop?"]
        firstArray += ["Are you a good liar? No, because lies are never good. So nobody is a good liar."]
        firstArray += ["How many nights have you spent crying about that?"]
        firstArray += ["We all need a light in our lives."]
        firstArray += ["To rest the soul, one must lay it down on a bed for the soul..."]
        firstArray += ["Have you ever tasted the fruit of your work?"]
        firstArray += ["How much time have you wasted doing that..."]
        firstArray += ["We all need a bit of authentic yodeling juice every so often."]
        firstArray += ["Has anybody ebver left you behind?"]
        firstArray += ["Why did they do that? Hmm?"]
        firstArray += ["Wishing, but not winning my friend."]
        firstArray += ["Winds will change, just to fool them into tricking them."]
        firstArray += ["What would you do with a billion pennies?"]
        
        
                    print(firstArray)
                    let randomItem = Int(arc4random() % UInt32(firstArray.count))
                    text.setText(firstArray[randomItem])

}
}
