class Animal

  @@species = ['pig', 'cow', 'duck', 'dog', 'horse']
  @@total_animals = 0

  attr_accessor :noise, :color

  def initialize(options={})
    @noise = options[:noise] || 'Grrr!'
    @color = options[:color] || 'white'
    @@total_animals += 1
  end

  def self.species
    @@species
  end

  def self.species=(array)
    return unless array.is_a?(Array)
    @@species = array
  end

  def self.total_animals
    @@total_animals
  end

  def self.create_a_pig
    Animal.new(noise: 'Oink!', color: 'pink')
  end

  def sleep
    puts "The #{self.class.name} sleeps."
  end

end
