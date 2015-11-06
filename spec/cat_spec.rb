require "rspec"
require_relative "../models/cat"

describe Cat do
  it "is an animal" do
    cat = Cat.new
    expect(cat).to be_a(Animal)
  end
  context "when rubbing belly" do
    it "feels happy" do
      cat = Cat.new
      cat.rub_belly
      expect(cat.feeling).to eq("happy")
    end
    it "says purr" do
      cat = Cat.new
      cat.rub_belly
      expect(cat.saying).to eq("purr")
    end
    describe "more than 3 times" do
      it "feels angry" do
        cat = Cat.new
        4.times do
          cat.rub_belly
        end
        expect(cat.feeling).to eq("angry")
      end
      it "says hiss" do
        cat = Cat.new
        4.times do
          cat.rub_belly
        end
        expect(cat.saying).to eq("hiss")
      end
    end
  end
  describe "when the time is" do
    context "4am" do
      it "is not asleep" do
        cat = Cat.new
        expect(cat.is_asleep_at 4).to be false
      end
      it "says meow" do
        cat = Cat.new
        cat.is_asleep_at 4
        expect(cat.saying).to eq "meow"
      end
    end
    context "not 4am" do
      it "is asleep" do
        cat = Cat.new
        expect(cat.is_asleep_at 12).to be true
      end
    end
  end
end
