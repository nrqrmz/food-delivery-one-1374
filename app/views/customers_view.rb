class CustomersView
  def ask_user_for(something)
    puts "What is the customer #{something}?"
    print '> '
    gets.chomp
  end

  def display(customers)
    customers.each do |customer|
      puts "#{customer.id}. #{customer.name} - #{customer.address}"
    end
  end
end
