# TODO: implement the router of your app.

class Router
  def initialize(meals_controller, customers_controller)
    @meals_controller = meals_controller
    @customers_controller = customers_controller
    @running = true
  end

  def run
    print_welcome
    while @running
      action = display_many_and_get_choice
      print `clear`
      dispatch(action)
    end
  end

  private

  def print_welcome
    puts '-' * 30
    puts "Welcome to Food Delivery [1.0]"
    puts '-' * 30
  end

  def display_many_and_get_choice
    puts ''
    puts 'What do you want to do?'
    puts '1 - List all meals'
    puts '2 - Add a new meal'
    puts '3 - List all customers'
    puts '4 - Add a new customer'
    puts '5 - Quit'
    print '> '
    gets.chomp
  end

  def dispatch(action)
    case action
    when '1' then @meals_controller.list
    when '2' then @meals_controller.add
    when '3' then @customers_controller.list
    when '4' then @customers_controller.add
    when '5' then stop
    else
      puts 'Type a valid option'
    end
  end

  def stop
    @running = false
  end
end
