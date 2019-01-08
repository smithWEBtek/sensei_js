

1. Seed file

2. Serializers with all columns and active model relationships

3. Set up some links for Ajax to listen to

4. Set up some divs for Ajax to append to

5. Show a list of things via Ajax
	- make ajax request
	- process the request by using a class constructor
	- add a function to that class, to display relevant HTML
	- append that HTML to DOM

6. Show the has_many details of one of those things via Ajax
	- make ajax request to /things/:id
	- request dataType of 'json'
	- process the request by using the same class constructor used above
	- add a function to that class, to display relevant HTML for the details
	- append that HTML to DOM
