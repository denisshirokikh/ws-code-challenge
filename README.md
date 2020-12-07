# ws-code-challenge
# OneMain QA Automation Code Challenge
# Requirements
 Ruby, gem rspec, gem selenium-webdriver
# Features
 Page Objects
# Get Started
 Clone this repo, then run bundle install
# Execute test cases: 
 run rake
# Author
Denis Shirokikh

# Issues discovered: (see screenshots folder)
1. User see modal after click on subcategory "Salt & Pepper Mills", which is not match 
with provided acceptance criteria or technical details.
2. MobileWeb view - clicks on QUICKLOOK doesn't show product overlay
3. User able to add product in cart with invalid ZIPCODE (00000)

# Test strategy
1. Testing should be performed on different OS (Mac OS, Windows)
2. Testing should be performed on different devices 
    (Desktop, tablet(iOS, Android), mobile phone(iOS, Android))
3. Testing should be performed with different types of products  
4. Add to cart feature should be validated with several scenarios:
    by clicking on the product title, clicking on the product image,
    adding to cart 0 items, adding to cart with invalid ZIPCODE
 
    
