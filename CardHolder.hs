--file : ch03 - moved to own file
type CardHolder = String
type CardNumber = String
type Address = [String]
type CustomerId = Integer

-- the | can be read as 'OR'
data BillingInfo = CreditCard CardNumber CardHolder Address
                   | CashOnDelivery
                   | Invoice CustomerId
                     deriving (Show)