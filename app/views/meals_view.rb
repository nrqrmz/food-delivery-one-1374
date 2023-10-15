class MealsView
  def ask_user_for(something)
    puts "What is the meal #{something}?"
    print '> '
    gets.chomp
  end

  def display(meals)
    meals.each do |meal|
      puts "#{meal.id}. #{meal.name} $#{meal.price}"
    end
  end
end
