
class User
  attr_accessor :email
  attr_accessor :age
  @@users_all = []

  def initialize(email, age)
    @email = email.to_s
    @age = age.to_i
    @@users_all << self
  end

  def self.all
    return @@users_all
  end

end
