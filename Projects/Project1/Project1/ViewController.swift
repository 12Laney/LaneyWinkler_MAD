//
//  ViewController.swift
//  Project1
//
//  Created by Laney Winkler on 10/14/18.
//  Copyright © 2018 Laney Winkler. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var recipiPicture: UIImageView!
    @IBOutlet weak var recipiName: UILabel!
    @IBOutlet weak var recipiIngredientes: UILabel!
    @IBOutlet weak var recipiDirections: UILabel!
    @IBOutlet weak var fowardButton: UIButton!
    @IBOutlet weak var backButton: UIButton!
    
    @IBOutlet weak var TreatType: UISegmentedControl!
    
    var count=0;
    var snackImageArray=["mummyBrie.png","cheeseBallBats.png","monsterFruit.png", "mummyJalapenoPeppers.png","pizzaBagleGhosts.png"]
   var drinkImageArray=["blackMagicCocktail.png","CiderFloat.png","GraveDiggerCocktail.png","pumpkinPunch.png","SmokingBlackberrySageMarg.png"]
    var dessertImageArray=["graveYardCookies.png","marshmellowBroomsticks","mummyPops.png","reesesBat.png","strawberryGhosts.png"]
    var snackTitleArray=["Mummy Brie", "Cheese Ball Bats", "Monster Fruit", "Mummy Jalapeño Poppers", "Pizza Bagle Ghosts"]
    var drinkTitleArray=["Black Magic Cocktail", "Cider Float", "Gravedigger Cocktail", "Pumpkin Punch", "Smoking Blackberry-Sage Margarita"]
    var dessertTitleArray=["Gravyard Cookies", "Marshmellow Broomsticks", "Mummy Pops", "Reeces Bats", "Strawberry Ghosts"]
    var snackDirectionArray=["Preheat oven to 400°. On a floured work surface, unroll puff pastry and cut into 1” strips. Wrap strips around brie like a mummy. Whisk together egg and milk and brush over pastry. Transfer brie to a parchment-lined baking sheet. Bake until brie is warmed through and gooey and puff pastry is deeply golden, 20 minutes. For eyes, place two mini pepperonis into two sliced olives. Serve with crackers.","Heat oven to 375 degrees F. Cut the tortillas into 24 bat-shaped wings. Place on a large rimmed baking sheet and bake 15 minutes; let cool. Line a second large rimmed baking sheet with parchment paper. Place the Cheetos crumbs and seeds in separate small bowls. In a medium bowl, combine the cream cheese, goat cheese and pepper to taste. Using a 1-ounce cookie scoop, scoop balls of cheese and round out, gently molding with your hands. Coat the cheese balls in the crumbs or seeds. Transfer to the prepared baking sheet, then refrigerate until ready to serve. Add tortilla wings and olives.","Cut the middles out of each quarter of the apple to create a mouth. Don’t worry about perfection, you are filling this gap with sunbutter anyway so if you cut too deep, you can always just cover it up and no one will know. Coat the inside of the cut gap with a filling of sunflower butter. Place 4 sunflower seeds on the top of the “mouth” for the teeth. Place 1 sliced strawberry inside the mouth for the tongue. Add each eye above the mouth with a dab of sunbutter to stick. Serve with a smile.", "Heat oven to 375 degrees F. Line a large rimmed baking sheet with parchment paper. In a medium bowl, combine the cream cheese, Cheddar, scallion, and hot sauce. Spoon into a resealable plastic bag and snip off one corner. Cut the jalapeños in half lengthwise, then remove and discard the seeds. Pipe the cheese mixture into the pepper halves. Unroll the crescent dough and cut into 1⁄4 inch strips. Wrap 2 strips around each filled jalapeño half to create a mummy-like pattern. Bake until golden brown, 15 minutes. Let the mummies cool for 5 minutes.", "Preheat oven to 350 degrees F. Cut mozzarella slices into ghost shapes using a paring knife. Spread a thin layer of marinara over pizza bagel and top with ghost. Bake until cheese is melty, 10 minutes. Meanwhile, cut olives into little pieces for eyes. Dot the ghosts and serve."]
    

    var drinkDirectionArray=["Into a cocktail shaker add in your simple syrup, lime juice, and black vodka. Fill with ice until the liquid line. Give it a hard shake for 30 seconds. Add a dash of pearl dust to the bottom of a martini or coupe glass. Pour cocktail into your glass and serve. Add more pearl dust if it's not shimmery enough and stir it with a bar spoon to combine it.","Poor pumpkin cider into a chilled pint glass. Add 1-2 scoops gelato. Serve immediately and enjoy!","In a 12-16 ounce tumbler or high ball glass, combine the hard cider and whiskey. Fill the glass with crushed ice. Fill with ginger ale.", "In a large bowl, add the spiced rum, orange juice, lemon juice, spiced syrup and pumpkin puree. Pour the mixture through a fine mesh strainer into a large pitcher and chill until ready to serve.Next, use tongs to fill the bottom of the bowl with dry ice, and cover with a slightly smaller bowl. This bowl will hold your punch. Pour the mixture into the punchbowl. Add the sparkling water and stir to combine. Carefully pour hot water into the bottom bowl so that it contacts the dry ice, thus activating the vapors.","Muddle the blackberries and sage together in a cocktail shaker until broken down and fragrant. Pour in the tequila, lemon juice, bitters, and maple syrup. Give it a good shake and pour over either a cube of dry ice (if using) or regular ice if using the dried sage leaf."]
    
//  var dessertTitleArray=["Gravyard Cookies", "Marshmellow Broomsticks", "Mummy Pops", "Reeses Bats", "Strawberry Ghosts"]
    
    var dessertDirectionArray=["Spread crushed chocolate cookies over the top of dip to form dirt. With decorating icing, write RIP on vanilla wafer cookies, then stand upright in dip to form tombstones.","Line a baking sheet with parchment paper or a silicone baking mat. Insert a lollipop stick into each Campfire® Giant Roaster. Melt candy melts  according to  package directions. Working with one marshmallow at a time, spoon the melted candy over the sides of a marshmallow and allow the excess to drip back into the bowl. Immediately coat with festive sprinkles. Place marshmallow on prepared baking sheet until the candy coating is set. Repeat with remaining marshmallows.", "Line a baking sheet with parchment paper. Lightly dip straws or lollipop sticks into chocolate before topping on open Nutter Butter. Press cookie back together, then dip into melted chocolate until completely coated. Place dipped cookie onto prepared baking sheet to set, about 25 minutes. Fill a pastry bag fitted with a straight flat tip with buttercream and pipe from side to side. Fill another bag with chocolate, lightly cover backside of M&M's minis, and press onto cookie pops. Dot each M&M with chocolate to finish eyes. Set aside at least 1 hour to fully set", "Cut all Oreo cookies in half and gently remove the cream. Cut each half in half to create the wings. Using a toothpick or a small spoon, apply a small dab of peanut butter to one end of each Oreo. Press onto the Reese's cup to make wings. Next, place a small dab of peanut butter onto the back of two candy eyes and place on top of the edge of the wings. Serve.","Line a small baking sheet with parchment paper. In a large bowl, combine melted white chocolate and coconut oil and stir until combined. Dip strawberries into white chocolate and place two mini chocolate chips on the top half of the strawberries for eyes. Place strawberries on prepared baking sheet and place in the refrigerator to harden, about 10 minutes. Place melted chocolate chips in a ziploc bag and pipe mouths on the strawberries. Let cool again in the refrigerator, 5 minutes." ]
    
    
    
    
    
    //Array of Arrays to hold ingredient values:
    
    var snackIngredientsArray=[["1 sheet puff pastry","1 round brie","1 large egg","1 tbs milk","2 mini pepperoni","2 sliced black olives"], ["4 large tortillas","2 c. crushed Cheetos","2 tbs black sesame seeds","2 tbs poppy seeds", "8 oz cream cheese", "4 oz goat cheese","black pepper","black and green olives"], ["2 green apples", "sunflower butter","32 sunflower seeds", "3 sliced strawberries"],["4 oz cream cheese","2 oz extra sharp cheddar","1 chopped schallion","6 small jalapenos","1 sheet crescent roll dough"],["8 slices mozzarella","8 mini bagels","1/2 c marinara","4 black olives"]]
    
    
    
    
    
    @IBAction func changeTreatType(_ sender: Any) {
            self.changeImage()
    }
    
    
    
    
    
    
    
    @IBAction func nextButton(_ sender: Any) {
        count+=1
        self.changeImage()
    }
    
    @IBAction func previousButton(_ sender: Any) {
        count-=1
        self.changeImage()
    }
    func changeIngre(){
        if (count<0){
            count=4
        }
        if (count>4){
            count=0
        }
        var snackIngredients = (snackIngredientsArray[count])
        for value in snackIngredients{
            recipiIngredientes.text = recipiIngredientes.text!+"•" + value + "\n"
        }
        snackIngredients.removeAll()
//        snackIngredientsArray.removeAll()
        //If the line above is added, the app crashes, and I believe this is because I erase everything in the multidimensional array, so I get the error "Fatal Error:Index out of range" because the array count is being used in is made empty
    }
    func changeImage(){
        if (count<0){
            count=4
        }
        if (count>4){
            count=0
        }
        if TreatType.selectedSegmentIndex==0{
            recipiPicture.image=UIImage(named: snackImageArray[count])
            recipiName.text=String(snackTitleArray[count])
            recipiDirections.text=String(snackDirectionArray[count])
            changeIngre()
            
        }
        if TreatType.selectedSegmentIndex==1{
            recipiPicture.image=UIImage(named: drinkImageArray[count])
            recipiName.text=String(drinkTitleArray[count])
            recipiDirections.text=String(drinkDirectionArray[count])
        }
        if TreatType.selectedSegmentIndex==2{
            recipiPicture.image=UIImage(named: dessertImageArray[count])
            recipiName.text=String(dessertTitleArray[count])
            recipiDirections.text=String(dessertDirectionArray[count])
        }
    }
        
        
    
    override func viewDidLoad() {
        super.viewDidLoad()
        count=0
        let ingredientArray=["1 sheet puff pastry","1 round brie", "1 large egg", "1 tbs milk", "2 mini pepperoni", "2 sliced black olives"]
        for value in ingredientArray{
            recipiIngredientes.text = recipiIngredientes.text! + "•" + value + "\n"
        }

        recipiIngredientes.layer.borderWidth=5.0
        recipiDirections.layer.borderWidth=5.0
        recipiPicture.layer.borderWidth=5.0
        TreatType.layer.borderWidth=2.0
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

