require 'rails_helper'

RSpec.describe Cat, type: :model do
  it "should validate name exists in the entry" do
    cat = Cat.create(age:4, gender:'Female', enjoys:'Loves to knock over clear cups of water', image:'instaprofile.com')
    expect(cat.errors[:name]).to_not be_empty
  end

  it "should validate age exists in the entry" do
    cat = Cat.create(name: 'Shadow', gender:'Male', enjoys:'eating mole', image:'epicpics.com')
    expect(cat.errors[:age]).to_not be_empty
  end

  it "should validate enjoys exists" do
    cat = Cat.create(name: 'Shadow', age:4, gender:'Female', image:'epicpics.com')
    expect(cat.errors[:enjoys]).to_not be_empty
  end

  it "should validate gender exists" do
    cat = Cat.create(name: 'Shadow', age:4, enjoys:'sitting around doing nothing', image:'epicpics.com')
    expect(cat.errors[:gender]).to_not be_empty
  end

  it "should validate imgage exists" do
    cat = Cat.create(name: 'Shadow', age:4, gender:'Male', enjoys:'sitting around doing nothing')
    expect(cat.errors[:image]).to_not be_empty
  end

  it "should have an enjoys statement >= to 10" do
    cat = Cat.create(name: 'Shadow', age: 4, gender:'Female', enjoys:'nothing', image:'nothing.com')
    expect(cat.errors[:enjoys]).to_not be_empty
  end
end
