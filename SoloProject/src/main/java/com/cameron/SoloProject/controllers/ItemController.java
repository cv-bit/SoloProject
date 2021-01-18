package com.cameron.SoloProject.controllers;

import com.cameron.SoloProject.models.Items;

public class ItemController {
	Items lunch = new Items("lunch", "lunch special", 9.99);
	
	Items specialty = new Items("specialty pizza", "specialty pizza", 9.99);
	
	Items family = new Items("family meal", "family meal", 34.99);
	
	Items pepperoni = new Items("pepperoni pizza", "pepperoni pizza", 7.99);
	
	Items cheese = new Items("cheese pizza", "cheese pizza", 7.99);
	
	Items caesar = new Items("caesar salad", "side salad", 4.99);
	
	Items cobb = new Items("cobb salad", "side salad", 4.99);
	
	Items cheeseStick = new Items("cheese sticks", "cheese sticks", 4.99);
	
	Items cookie = new Items("cookie", "desert", 2.99);
	
	Items brownie = new Items("brownie", "desert", 2.99);
	
	Items soda = new Items("drink", "soda", 1.89);
	
	Items tea = new Items("drink", "tea", 1.89);
}
