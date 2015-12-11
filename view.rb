class View
  def get_id
    puts "Please enter the Clever district id to find its average section size."
    gets.chomp()
  end
  def message message
    puts message
  end
  def goodbye
    puts "Hope that's helpful! Have a good day."
  end
end