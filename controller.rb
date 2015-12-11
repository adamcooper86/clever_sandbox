require_relative 'district'
require_relative 'view'

class Controller
  def initialize district_id
    @view = View.new
    if district_id
      id = district_id
    else
      id = @view.get_id
    end
    puts "The district_id id you entered is: " + id
    @district = District.new id
    @view.message(@district.average_section_size)
    @view.goodbye
  end
end

district_id = ARGV[0]

start = Time.now
Controller.new district_id
finish = Time.now

puts "Time for this run: "
puts finish - start