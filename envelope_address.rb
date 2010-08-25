class EnvelopeAddress
  attr_accessor :name, :company, :address, :postal_address
  def initialize(args)
    [:name, :company, :address, :postal_address].each do |attr|
      self.send("#{attr}=", args[attr])
    end
  end
  
  def to_s
    "#{name}\n\n#{company}\n\n#{address}\n\n#{postal_address}\n"
  end
end
