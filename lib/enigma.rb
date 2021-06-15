require 'time'
require 'helper_methods'

class Enigma
  include HelperMethods
  #Responsibilities:

    # Accepting and verifying arguments passed in.

    # Encrypt will always need a message,
    # key and date are optional.
    # Edgecase: handling invalid input, key & date input format?
    # =>  returns hash of encrypted message (in string),
    # =>  key or generated key (in string) if not given,
    # =>  date of transmission or todays date (in string)
    # =>  if not given.

    # Decrypt will always need both a ciphertext and key (in strings)
    # date is optional.
    # Edgecase: handling invalid input, key & date input format?
    # =>  returns hash of decrypted message (in string),
    # =>  key or generated key (in string) if not given,
    # =>  date of transmission or todays date (in string)
    # =>  if not given.


  def initialize(message, key = nil, date = nil)
    @message = message
    @key = @key
    @date = @date
  end


  def encrypt(message, key = nil, date = nil)
    #encryption machine give me a letter back from this letter
    # here's a date, doesn't need to get sent a new date each time it gets sents a letter...gets
    # passed into initialize in EncryptionMachine

    #lowercase msg before passing, edgecase ignore foreign char?
    #ask if key fits format of 5 digits in a string
    #ask if date fits format of 6 digits in a string

  end

  def decrypt(ciphertext, key, *date)
  end

end
