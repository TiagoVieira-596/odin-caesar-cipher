require_relative '../caesar'
describe 'caesar_cipher' do
  context 'small positve shift' do
    it "returns 'mjqqt' from 'hello' with shift 5" do
      expect(caesar_cipher('hello', 5)).to eq('mjqqt')
    end
  end
  context 'negative shift' do
    it "doesn't change the word with a negative shift" do
      expect(caesar_cipher('hello', -5)).to eq('hello')
    end
  end
  context 'large positive shift' do
    it "returns 'nkrru' from 'hello' with shift 32" do
      expect(caesar_cipher('hello', 32)).to eq('nkrru')
    end
  end
  context "doesn't affect punctuation" do
    it "returns 'hello, world!' from 'hello, world!' with shift 3" do
      expect(caesar_cipher('hello, world!', 3)).to eq('khoor, zruog!')
    end
  end
  context 'is case sensitive' do
    it "returns 'KhoOr' from 'HelLo' with shift 3" do
      expect(caesar_cipher('HelLo', 3)).to eq('KhoOr')
    end
  end
end
