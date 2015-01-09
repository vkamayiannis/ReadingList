Book.destroy_all
Book.create!([{title: "Seven Languages in Seven Weeks", 
			   author: "Bruce A. Tate",
			   description: "You should learn a programming language every year, as recommended by The Pragmatic Programmer. 
			   				 But if one per year is good, how about Seven Languages in Seven Weeks? In this book you'll get a hands-on tour of Clojure, Haskell, Io, Prolog, Scala, Erlang, and Ruby.",
			   amazon_id: "193435659X",
			   rating: 5,
			   finished_on: 2.months.ago},
			   {title: "Seven Databases in Seven Weeks", 
			   author: "Bruce A. Tate",
			   description: "Data is getting bigger and more complex by the day, and so are the choices in handling that data. As a modern application developer you need to understand the emerging field of data management, both RDBMS and NoSQL",
			   amazon_id: "1934356921",
			   rating: 3,
			   finished_on: nil}])
puts "Created #{Book.count} books"

