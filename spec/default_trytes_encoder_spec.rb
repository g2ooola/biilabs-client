require './lib/biilabs/default_trytes_encoder.rb'

describe Biilabs::DefaultTrytesEncoder do
  STRING_GENERAL = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ abcdefghijklmnopqrstuvwxyz 1234567890 !@#$%^&*()-=_+[]{}|;:"\'\\,./<>?\n'
  STRING_TRYTES  = 'KBLBMBNBOBPBQBRBSBTBUBVBWBXBYBZB9CACBCCCDCECFCGCHCICEAPCQCRCSCTCUCVCWCXCYCZC9DADBDCDDDEDFDGDHDIDJDKDLDMDNDEAVAWAXAYAZA9BABBBCBUAEAFAJBHAIAJAMCKAOAMANARAGBNCPAJCLCODQDPDEBDBGALAKCQASATAFBHBIBKCBD'
  
  before do
    @encoder = Biilabs::DefaultTrytesEncoder.new
  end

  describe ".to_trytes" do
    it 'much result' do
      result = @encoder.to_trytes(STRING_GENERAL)
      expect(result).to eq(STRING_TRYTES)
    end

    it 'should be a trytes' do
      encode_result = @encoder.to_trytes(STRING_GENERAL)
      expect(
        @encoder.is_trytes(encode_result)
      ).to be true
    end
  end

  describe ".from_trytes" do
    it 'much result' do
      result = @encoder.from_trytes(STRING_TRYTES)
      expect(result).to eq(STRING_GENERAL)
    end
  end
end