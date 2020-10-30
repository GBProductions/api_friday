class Seed

  def self.begin
    seed = Seed.new
    seed.generate_animals
  end

  def generate_animals
    20.times do |i|
      animal= Animal.create!(
        creature: Faker::Creature.animal,
        name: Faker::Name.name
      )
      puts "Animal #{i}: Animal is a #{animal.creature} and their name is '#{animal.name}'."
    end
  end
end

Seed.begin