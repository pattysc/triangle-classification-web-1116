class Triangle
  attr_reader :s1, :s2, :s3

  def initialize(s1, s2, s3)
    @s1 = s1
    @s2 = s2
    @s3 = s3
  end

  def kind
    if (s1 + s2)>s3 && (s2 + s3)>s1 && (s1 + s3) > s2 && s3 > 0
      if s1 == s2 && s2 == s3
        :equilateral
      elsif  s1 == s2 || s2 == s3 || s1 == s3
        :isosceles
      else
        :scalene
      end
    else
      raise TriangleError
    end
  end

end

class TriangleError < StandardError
  # def message
  #   "this isnt a triangle dummy"
  # end
end
