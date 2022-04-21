class BankAccount
    @@no_of_users = 0
    attr_reader :checking, :savings
    def initialize
        @account_number = 0
        @checking = 0
        @savings = 0
        @total = 0
        @account_number = acc_num
        @interest = 0.01
        @@no_of_users +=1
        puts "Number of users: #{@@no_of_users}"
        self
    end

    private
    def acc_num
        acc_num = (0..10).map {rand(0..9)}.join("")
        @acc_num
    end

    public
    def checking_balance
        @checking  
    end

    def savings_balance
        @savings
    end

    def deposit(choice, amount)
        if choice == "checking"
            @checking += amount
            self
        elsif choice == "savings"
            @savings += amount
            self
        end
    end

    def withdraw(choice, amount)
        if choice == "checking"
            if amount > @checking
                puts "Error: Insufficient funds."
                self
            else
                @checking -= amount
                self
            end
        elsif choice == "savings"
            if amount > @savings
                puts "Error: Insufficient  funds."
            else
                @savings -= amount
                self
            end
        end
    end

    def total
        total = @savings + @checking
        puts total
        self
    end

    def get_accNum
        puts accNum
        self
    end

    def account_info
        puts "Account Number: #{get_accNum} \n Total Amount: #{total} \n Checking Account Balance: #{@checking} \n Savings Account Balance: #{@savings} \n Interest Rate: #{@interest}"
    end

    private
        def accNum
            @account_number = rand(1..1000)
        end
end

# puts BankAccount.account_num
account0 = BankAccount.new
account0.deposit("savings", 3500).deposit("checking", 3500)
account1 = BankAccount.new
account1.deposit("checking", 200).deposit("savings", 400)

account1.account_info