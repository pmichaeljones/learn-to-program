def testing(target, method)
  (0..10).each do |x|
    (0..12).each do |y|
     puts "#{x * y}, Current X: #{x} Current Y: #{y}"
     if x*y == target
       break if method == "break"
       return if method == "return"
     end
    end 
  end
end

testing(50, "break")
testing(14, "return")
