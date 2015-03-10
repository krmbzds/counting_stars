require 'spec_helper'

describe CountingStars do
  it 'has a version number' do
    expect(CountingStars::VERSION).not_to be nil
  end

  context 'Generic function on Booking.com' do
    subject { CountingStars::count("Marriott's Grande Ocean", 'booking.com') }

    it 'returns a list of two items' do
      subject.length.should eq(2)
    end

    it 'contains a rating' do
      subject.first.should match(/Rating: \d\.\d\/\d\d/) # Rating: 9.5/10
    end

    it 'contains x amount of reviews' do
      subject.last.should match(/\d+ reviews/) # "25 reviews"
    end

  end

  context 'Generic function on TripAdvisor' do
    subject { CountingStars::count("Marriott's Grande Ocean", 'tripadvisor.com') }

    it 'returns a list of three items' do
      subject.length.should eq(3)
    end

    it 'contains a rating' do
      subject.first.should match(/Rating: \d+.\d+/) # Rating: 4.5
    end

    it 'contains x amount of reviews' do
      subject[1].should match(/\d+ reviews/) # "501 reviews"
    end

    it 'should contain a price range' do
      subject.last.should match(/Price range: \$+/) # Price range: $$$
    end

  end


  context 'booking.com' do
    subject { CountingStars::booking("Marriott's Grande Ocean") }

    it { should_not include nil }
    it { should be_kind_of(Hash) }

    it 'should have a rating' do
      subject[:rating].should match(CountingStars::DECIMAL)
    end

    it 'should have reviews' do
      subject[:reviews].should match(CountingStars::INTEGER)
    end
  end

  context 'tripadvisor.com' do
    subject { CountingStars::tripadvisor("Marriott's Grande Ocean") }

    it { should_not include nil }
    it { should be_kind_of(Hash) }

    it 'should have a rating' do
      subject[:rating].should match(CountingStars::INTEGER)
    end

    it 'should have reviews' do
      subject[:reviews].should match(CountingStars::INTEGER)
    end

    it 'should have a price range' do
      subject[:price_range].should match(CountingStars::DOLLARS)
    end
  end

end