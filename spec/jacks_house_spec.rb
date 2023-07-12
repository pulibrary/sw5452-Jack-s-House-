require "spec_helper"
require_relative "../jacks_house"

RSpec.describe JacksHouse do
    let(:jacks_house) { JacksHouse.new } 

  describe "#recite" do
    it "recites the poem" do
      poem = File.read("spec/fixtures/poem.txt")   
      expect(jacks_house.recite).to eq poem
    end 
  end

  describe "#random_recite" do
    it "recites the poem in random order" do
        recite1 =  jacks_house.random_recite
        recite2 = jacks_house.random_recite
        expect(recite1.split("\n").count).to eq 12
        expect(recite1 == recite2).to be false
    end
  end

  describe "#semi_recite" do
    it "recites the poem in semi random order" do
      recite1 =  jacks_house.semi_recite
      recite2 = jacks_house.semi_recite
      lines1 = recite1.split("\n")
      lines2 = recite2.split("\n")
      expect(lines1.count).to eq 12
      expect(recite1 == recite2).to be false
      lines1.each do |line|
        expect(line).to include ("the house that Jack built.")
      end
      
      lines2.each do |line|
        expect(line).to include ("the house that Jack built.")
      end
    end
  end
end

