# location: spec/unit/unit_spec.rb
require 'rails_helper'

# Book
RSpec.describe Book, type: :model do
  subject do
    described_class.new(title: 'harry potter', author: "J K Rowling", price: 12, date: Date.today)
  end

  it 'is valid with valid attributes' do
    expect(subject).to be_valid
  end

  it 'is not valid without a name' do
    subject.title = nil
    expect(subject).not_to be_valid
  end

  it 'is not valid without a author' do
    subject.title = nil
    expect(subject).not_to be_valid
  end

  it 'is not valid without a price' do
    subject.title = nil
    expect(subject).not_to be_valid
  end

  it 'is not valid without a date' do
    subject.title = nil
    expect(subject).not_to be_valid
  end
end