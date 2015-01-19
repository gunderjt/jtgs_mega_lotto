module JtgsMegaLotto
  class Drawing
    def draw
      #refactor begin
=begin
      arr = Array.new
      until arr.size === 6
        ele = single_draw
        unless arr.include? ele
          arr.push ele
        end
      end
      arr
=end
      #refactor end
      (0..59).to_a.sample(6)
    end

    def single_draw
      rand(0...60)
    end
  end
end