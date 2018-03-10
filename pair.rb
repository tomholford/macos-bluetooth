require 'bluetooth'

class Pair
  def initialize(address:, autoconfirm: true)
    @address = address
    @autoconfirm = autoconfirm
  end

  def pair
    device = Bluetooth::Device.new @address

    device.pair_confirmation do |number|
      puts "The device should say %06d" % number
      @autoconfirm
    end

    paired = device.pair ? "paired" : "didn't pair"
    puts paired + " with #{@address}"
  end
end
