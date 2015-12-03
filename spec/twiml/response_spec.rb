describe Twilio::TwiML::Response do
  context 'given multiple plays' do
    it 'does not use loop' do
      xml = described_class.new do |r|
        r.Play  "the same thing"
        r.Play  "the same thing"
      end

      expect(xml.text).to_not include 'loop'
    end
  end
end
