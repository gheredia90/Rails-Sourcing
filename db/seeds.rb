20.times do 
    user = User.create(name: Faker::Name.name, 
        email:  Faker::Internet.email)
    3.times do
    	product = Product.new(
    		title: Faker::Commerce.product_name, 
        	description:  Faker::Lorem.sentence,
        	deadline: Faker::Date.backward(14)
        	)
    	
        4.times do 
        	bid = Bid.new(amount: Faker::Number.between(1, 100)) 
        	bid.user = user       
    		product.bids << bid
        end	
        product.user = user
        product.save
    end	
end