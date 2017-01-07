# shopify_2017
# README

			Shopify Challenge Summer 2017
-----------------------------------------------
System Configuration
-----------------------------------------------
All the testing is done on a Linux Mint 18 x86_64 OS. The following programs must be installed along with the version mentioned in order to avoid any dependencies:
- Ruby (v2.3.1)
- Rails (v5.0.1)
- sqlite3
- gem (2.5.1)

-----------------------------------------------
Running the server
-----------------------------------------------
There are no database migrations that are required to be run, as the application uses sqlite. The schema of the used tables and the migrations that have been run are included in this package. Since sqlite does not use any authentication mechanism, no changes are required in the database.yml file.

The client can be started using the following command from the main directory:
/bin/rails server

The client will start in the default 3000 port and can be accessed using http://localhost:3000


-----------------------------------------------
Documentation
-----------------------------------------------
1. The startup page has a link titled 'Order Management', click on the same to view the list of orders currently in the database.
2. The orders list page is titled "Orders Summary", this page displays the total price and tax of all the orders. It also has two buttons with every order "Show" and "Delete" for displaying and deleting the order respectively.
3. Orders Summary page also has a link titled "New order/Upload from Shopify URL", clicking on the same redirects to a page where the below given options exists:
	3.1 Upload the orders from the Shopify URL
	3.2 Manually add the orders
	3.3 Truncate the contents of the current database
NOTE: There is not validation currently added in the form to check if a data type mismatch occurs in the form and the Order ID is not a unique key in the database 

