class Transfer
attr_reader :name, :sender, :amount
attr_accessor :sender, :receiver, :status, :bank_account

  def initialize(sender,receiver,status)
      @sender = sender
      @receiver = receiver
      @status = "pending"
      @amount = 50
  end

  def valid?
      @receiver.valid? ? true :false
  end

end
