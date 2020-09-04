class Account
  attr_accessor :name, :address, :email, :notes

  attr_reader :test_method

  def assign_values(values)
    values.each_key do |k|
      send("#{k}=", values[k])
    end
  end

  def test_method=(arg)
    puts 'I am inside a method'
    @test_method = arg
  end
end

user_info = {
  name: 'Tien',
  address: '24, 5th Street, 10th Ward, Tan Binh District, HCM, Vietnam',
  email: 'domanhtien2011@gmail.com',
  notes: 'I love my life',
  test_method: %w[astarst 123123]
}

account = Account.new
account.assign_values user_info

puts account.inspect
