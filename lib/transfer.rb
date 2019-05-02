class Transfer
attr_reader :name, :sender, :amount
attr_accessor :sender, :receiver, :status, :bank_account, :transfer_count

      @transfer_count = 0

  def initialize(sender,receiver,status)
      @sender = sender
      @receiver = receiver
      @status = "pending"
      @amount = 50
  end

  def valid?
      @sender.valid? && @receiver.valid? ? true : false
  end

  def execute_transaction
      if @sender.balance > @amount && @status == "pending"
          @sender.balance -= @amount
          @receiver.balance += @amount
          @status = "complete"
        # @transfer_count = 1
      else
        @status = "rejected"
        return "Transaction rejected. Please check your account balance."
      end
  end

end
