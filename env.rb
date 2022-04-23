# OTEGAMI_MESSAGE='hello this is otegami' ruby env.rb 
puts ENV['OTEGAMI_MESSAGE']
puts ENV['EDITOR']
puts ENV.has_key?('PATH')
puts ENV.is_a?(Hash)
puts ENV.class
