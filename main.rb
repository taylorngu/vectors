class Student
  #Getter methods for lastName, firstName, and studentID.
  attr_accessor :lastName, :firstName, :studentID

  #Constructor method that assigns each.
  def initialize(lastName, firstName, studentID)
    @lastName = lastName
    @firstName = firstName
    @studentID = studentID
  end

  #to_s, ==
  def to_s
    return('%s, %s: %d' % [self.lastName, self.firstName, self.studentID])
  end

  #Include a comment for your justification for how to test for equality.
  def ==(other)
    return true if self.studentID == other.studentID
    return false
  end

  #Each student gets an unique studentID number, so if the studentID numbers are not equal, the instance student and the other student can't be the same person

end

puts("Testing Student: \n\n")

puts("Creating students: \nj = Student.new('Driver', 'Walker', 9184829)\ni = Student.new('Billy', 'Bob', 9192849) \nk = Student.new('Driver', 'Walker', 9184829)")

puts("\nto_s:")
 j = Student.new('Driver', 'Walker', 9184829)
 puts(j)
 i = Student.new('Billy', 'Bob', 9192849)
 puts(i)
 k = Student.new('Driver', 'Walker', 9184829)
 puts(k)

puts("\n==:")
  puts("Case j == i: #{j == i}")
  puts("Case k == j: #{j == k}")

class Vector3D 
  include Comparable

  attr_accessor :x, :y, :z

  def initialize(x = 1, y = 1, z = 1)
    @x = x 
    @y = y
    @z = z
  end

  def to_s
    return '<%d, %d, %d>' % [self.x, self.y, self.z]
  end

  def magnitude
    return Math.sqrt(self.x**2 + self.y**2 + self.z**2)
  end

  def +(other)
    return Vector3D.new(self.x + other.x, self.y + other.y, self.z + other.z)
  end

  def -(other)
    return Vector3D.new(self.x - other.x, self.y - other.y, self.z - other.z)
  end

  def dot(other)
    return (self.x * other.x) + (self.y * other.y) + (self.z * other.z)
  end

  def *(other)
    return Vector3D.new(self.x * other, self.y * other, self.z * other)
  end

  def -@
    return Vector.new(-self.x, -self.y, -self.z)
  end

  def ==(other)
    return true if self.x == other.x && self.y = other.y && self.z == other.z
    return false
  end

  def coerce(other)
    return Vector3D.new(self.x, self.y, self.z), other
  end
end

puts("\n\nTesting Vector:\n\n")
puts("Creating vectors & to_s: \nj = Vector3D.new()")
j = Vector3D.new()
puts(j)
puts("i = Vector3D.new(2, 3, 4)")
i = Vector3D.new(2, 3, 4)
puts(i)
puts("k = Vector3D.new(4.3, 8.5, 2.0)")
k = Vector3D.new(4.3, 8.5, 2.0)
puts(k)

puts("\nmagnitude:")
puts("Case j: #{j.magnitude}: #{j.magnitude == 1.7320508075688772}")
puts("Case k: #{k.magnitude}: #{k.magnitude == 9.73344748791506}")

puts("\n-(other) & +(other):")
puts("Case j + k: #{j + k}")
puts("Case j + i: #{j + i}")
puts("Case j - k: #{j - k}")
puts("Case j - i: #{j - i}")

puts("\n*(other) and right multiplication:")
puts("Case j * 7: #{j * 7}")
puts("Case k * 8: #{k * 8}")
puts("Case 7 * j: #{7 * j}")
puts("Case 8 * k: #{8 * k}")

puts("\ndot(other):")
puts("Case j.dot(i): #{j.dot(i)}")
puts("Case i.dot(k): #{i.dot(k)}")

puts("\n== & negation:")
puts("Case j == Vector3D.new(): #{j == Vector3D.new()}")
puts("Case j == i: #{j == i}")