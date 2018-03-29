require_relative '../lib/concise_array.rb'

describe ConciseArray do

  before do
    @concise = ConciseArray.new
  end

  context "排序好的數字陣列" do

    it "Assignment Question [1, 2, 2, 3, 3, 3, 4, 10]" do
      @concise.add([1, 2, 2, 3, 3, 3, 4, 10])
      expect(@concise.removeDuplicates).to eq(5)
    end

    it "隨機考驗一 [1, 2, 2, 2, 3, 3, 3, 4, 5, 6, 7, 8, 9, 10]" do
      @concise.add([1, 2, 2, 2, 3, 3, 3, 4, 5, 6, 7, 8, 9, 10])
      expect(@concise.removeDuplicates).to eq(10)
    end

    it "隨機考驗二 [1, 3, 3, 3, 4, 4, 4, 10]" do
      @concise.add([1, 3, 3, 3, 4, 4, 4, 10])
      expect(@concise.removeDuplicates).to eq(4)
    end

    it "隨機考驗三 [1, 2, 2, 3, 3, 3, 4, 10, 11, 13, 15, 17, 18, 20]" do
      @concise.add([1, 2, 2, 3, 3, 3, 4, 10, 11, 13, 15, 17, 18, 20])
      expect(@concise.removeDuplicates).to eq(11)
    end

  end

  context "尚未排序的數字陣列" do

    it "隨機考驗一 [5, 2, 7, 2, 3, 6, 3, 4, 1, 6, 7, 8, 9, 10]" do
      @concise.add([5, 2, 7, 2, 3, 6, 3, 4, 1, 6, 7, 8, 9, 10])
      expect(@concise.removeDuplicates).to eq(10)
    end

    it "隨機考驗二 [5, 2, 2, 1, 5, 1, 3, 3, 3, 4, 4, 4, 10" do
      @concise.add([5, 2, 2, 1, 5, 1, 3, 3, 3, 4, 4, 4, 10])
      expect(@concise.removeDuplicates).to eq(6)
    end

    it "隨機考驗三 [17, 12, 12, 3, 133, 3, 54, 10, 11, 133, 15, 18, 18, 20, 21]" do
      @concise.add([17, 12, 12, 3, 133, 3, 54, 10, 11, 133, 15, 18, 18, 20, 21])
      expect(@concise.removeDuplicates).to eq(11)
    end

    it "隨機考驗三 [51, 32, 32, 73, 73, 83, 54, 110, 110, 130, 15, 15, 18, 20, 20, 30, 880]" do
      @concise.add([51, 32, 32, 73, 73, 83, 54, 110, 110, 130, 15, 15, 18, 20, 20, 30, 880])
      expect(@concise.removeDuplicates).to eq(12)
    end

  end

end