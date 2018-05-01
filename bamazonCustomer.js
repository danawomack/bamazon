var mysql = require('mysql');
var inquirer = require('inquirer');


var connection = mysql.createConnection({
    host: "localhost",
    port: 3306,
    user: "root",
    password: "passw0rd",
    database: "bamazon_db"
})


connection.connect(function(err) {
    if (err) throw err;
    showProducts();
})

//loops through the products and displays each of them with the various details
var showProducts = function() {
  var query = 'SELECT * FROM Products'
  connection.query(query, function(err, res) {
      for (var i = 0; i < res.length; i++) {
          console.log("Item ID: " + res[i].id + " || Product: " + res[i].product_name + " || Department: " + res[i].department_name + " || Price: " + res[i].price + " || Stock: " + res[i].stock_quantity);
      }
      shoppingCart();
    })
};

var shoppingCart = function() {
    inquirer.prompt([{
        name: "ProductID",
        type: "input",
        message: "What is the ID of the product you would like to buy?",
        //Validate: checks weather or not the user typed a response
        validate: function(value) {
            if (isNaN(value) == false) {
                return true;
            } else {
                return false;
            }
        }
    }, {
        name: "Quantity",
        type: "input",
        message: "How many would you like to buy?",
        validate: function(value) {
            if (isNaN(value) == false) {
                return true;
            } else {
                return false;
            }
        }
      
    }]) .then( function updateQuantity(answer, res) {
        var query = 'SELECT * FROM Products'
        connection.query(query, function(err, res) {
            if(answer < res.stock_quantity)
                {
                    console.log("your shopping car total is" + res.price)
                }
                
                else {console.log ("sorry we do not have that in stock")}})})}
