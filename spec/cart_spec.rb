require_relative '../lib/cart.rb'

describe Cart do

  before do
    @cart = Cart.new
  end

  context "第一種情境︰不打折" do

    it "第一集買一本" do
      @cart.add({ "1st": 1, "2nd": 0, "3rd": 0, "4th": 0, "5th": 0 })
      expect(@cart.calculate).to eq(100)
    end

    it "第一集買三本" do
      @cart.add({ "1st": 3, "2nd": 0, "3rd": 0, "4th": 0, "5th": 0 })
      expect(@cart.calculate).to eq(300)
    end

  end

  context "第二種情境︰打 5% 折扣" do

    it "第一集買一本、第二集買一本" do
      @cart.add({ "1st": 1, "2nd": 1, "3rd": 0, "4th": 0, "5th": 0 })
      expect(@cart.calculate).to eq(190)
    end

    it "第一集買兩本、第二集買兩本" do
      @cart.add({ "1st": 2, "2nd": 2, "3rd": 0, "4th": 0, "5th": 0 })
      expect(@cart.calculate).to eq(380)
    end

    it "第一集買一本、第二集買兩本" do
      @cart.add({ "1st": 1, "2nd": 2, "3rd": 0, "4th": 0, "5th": 0 })
      expect(@cart.calculate).to eq(290)
    end

    it "第一集買兩本、第二集買三本" do
      @cart.add({ "1st": 2, "2nd": 3, "3rd": 0, "4th": 0, "5th": 0 })
      expect(@cart.calculate).to eq(480)
    end

  end

  context "第三種情境︰三本不同集的書打 10% 折扣" do

    it "第一集買一本、第二集買一本、第三集買一本" do
      @cart.add({ "1st": 1, "2nd": 1, "3rd": 1, "4th": 0, "5th": 0 })
      expect(@cart.calculate).to eq(270)
    end

    it "第一集買兩本、第二集買兩本、第三集買兩本" do
      @cart.add({ "1st": 2, "2nd": 2, "3rd": 2, "4th": 0, "5th": 0 })
      expect(@cart.calculate).to eq(540)
    end

    it "第一集買一本、第二集買兩本、第三集買兩本" do
      @cart.add({ "1st": 1, "2nd": 2, "3rd": 2, "4th": 0, "5th": 0 })
      expect(@cart.calculate).to eq(460)
    end

    it "第一集買一本、第二集買兩本、第三集買三本" do
      @cart.add({ "1st": 1, "2nd": 2, "3rd": 3, "4th": 0, "5th": 0 })
      expect(@cart.calculate).to eq(560)
    end

    it "第一集買兩本、第二集買三本、第三集買四本" do
      @cart.add({ "1st": 2, "2nd": 3, "3rd": 4, "4th": 0, "5th": 0 })
      expect(@cart.calculate).to eq(830)
    end

  end

  context "第四種情境︰四本不同集的書打 20% 折扣" do

    it "第一集買一本、第二集買一本、第三集買一本、第四集買一本" do
      @cart.add({ "1st": 1, "2nd": 1, "3rd": 1, "4th": 1, "5th": 0 })
      expect(@cart.calculate).to eq(320)
    end

    it "第一集買兩本、第二集買兩本、第三集買兩本、第四集買兩本" do
      @cart.add({ "1st": 2, "2nd": 2, "3rd": 2, "4th": 2, "5th": 0 })
      expect(@cart.calculate).to eq(640)
    end

    it "第一集買一本、第二集買兩本、第三集買一本、第四集買兩本" do
      @cart.add({ "1st": 1, "2nd": 2, "3rd": 1, "4th": 2, "5th": 0 })
      expect(@cart.calculate).to eq(510)
    end

    it "第一集買一本、第二集買兩本、第三集買三本、第四集買四本" do
      @cart.add({ "1st": 1, "2nd": 2, "3rd": 3, "4th": 4, "5th": 0 })
      expect(@cart.calculate).to eq(880)
    end

    it "第一集買兩本、第二集買三本、第三集買四本、第四集買五本" do
      @cart.add({ "1st": 2, "2nd": 3, "3rd": 4, "4th": 5, "5th": 0 })
      expect(@cart.calculate).to eq(1200)
    end

    it "第一集買兩本、第二集買三本、第三集買一本、第四集買六本" do
      @cart.add({ "1st": 2, "2nd": 3, "3rd": 1, "4th": 6, "5th": 0 })
      expect(@cart.calculate).to eq(1080)
    end

  end

  context "第五種情境︰五本不同集的書打 25% 折扣" do

    it "第一集買一本、第二集買一本、第三集買一本、第四集買一本、第五集買一本" do
      @cart.add({ "1st": 1, "2nd": 1, "3rd": 1, "4th": 1, "5th": 1 })
      expect(@cart.calculate).to eq(375)
    end

    it "第一集買兩本、第二集買兩本、第三集買兩本、第四集買兩本、第五集買兩本" do
      @cart.add({ "1st": 2, "2nd": 2, "3rd": 2, "4th": 2, "5th": 2 })
      expect(@cart.calculate).to eq(750)
    end

    it "第一集買一本、第二集買兩本、第三集買一本、第四集買兩本、第五集買一本" do
      @cart.add({ "1st": 1, "2nd": 2, "3rd": 1, "4th": 2, "5th": 1 })
      expect(@cart.calculate).to eq(565)
    end

    it "第一集買一本、第二集買兩本、第三集買三本、第四集買四本、第五集買五本" do
      @cart.add({ "1st": 1, "2nd": 2, "3rd": 3, "4th": 4, "5th": 5 })
      expect(@cart.calculate).to eq(1255)
    end

    it "第一集買兩本、第二集買三本、第三集買四本、第四集買五本、第五集買六本" do
      @cart.add({ "1st": 2, "2nd": 3, "3rd": 4, "4th": 5, "5th": 6 })
      expect(@cart.calculate).to eq(1630)
    end

    it "第一集買兩本、第二集買三本、第三集買一本、第四集買四本、第五集買三本" do
      @cart.add({ "1st": 2, "2nd": 3, "3rd": 1, "4th": 4, "5th": 3 })
      expect(@cart.calculate).to eq(1065)
    end

    it "第一集買三本、第二集買一本、第三集買一本、第四集買四本、第五集買六本" do
      @cart.add({ "1st": 3, "2nd": 1, "3rd": 1, "4th": 4, "5th": 6 })
      expect(@cart.calculate).to eq(1305)
    end

  end

end