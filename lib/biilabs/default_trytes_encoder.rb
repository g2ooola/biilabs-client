# You can write other function to map string to TRYTE_VALUES
#
# !!!!!!! Waring !!!!!!
# for this map-function
# all input chars must be a "ASCII character"

module Biilabs
  class DefaultTrytesEncoder
    TRYTE_VALUES = '9ABCDEFGHIJKLMNOPQRSTUVWXYZ'
    TRYTE_REGEX = /^[9A-Z]*$/

    def is_string(input)
      input.kind_of? String
    end

    def is_trytes(input)
      is_string(input) && TRYTE_REGEX.match?(input)
    end

    # ==== biilabs format example ====
    # raw message                      : 'p'
    # message after method "to_trytes" : 'PC'
    # message store on BiiLabs         : 'PC9999...999' (2187 chars)
    #
    # 
    # 1. ignore 99 in method "from_trytes"
    # 2. "output of mehtod to_trytes" is a string (even-length)
    #    "message store on BiiLabs"   is a string (odd-length)
    # ================================

    # input must be a "ASCII character"
    def to_trytes(input)
      return nil if !is_string(input)
      trytes = ''

      (0...input.length).step(1) do |i|
        char = input[i]
        asciiValue = char.bytes.sum

        # If not recognizable ASCII character, return null
        return nil if asciiValue > 255

        firstValue = asciiValue % 27
        secondValue = (asciiValue - firstValue) / 27

        trytesValue = TRYTE_VALUES[firstValue] + TRYTE_VALUES[secondValue]

        trytes += trytesValue
      end

      trytes
    end

    def from_trytes(input)
      return nil if !is_trytes(input)

      outputString = ''

      # "length - 1" to avoid odd-length-input
      (0...(input.length - 1)).step(2) do |i|
          trytes = input[i] + input[i + 1]
          break if trytes == '99'

          firstValue = TRYTE_VALUES.index(trytes[0])
          secondValue = TRYTE_VALUES.index(trytes[1])

          decimalValue = firstValue + secondValue * 27

          outputString += decimalValue.chr
      end

      outputString
    end
  end
end