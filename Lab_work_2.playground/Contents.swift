/*class BankAccount {
    static var uniqueAccountNumber = 0
    
    var accountNumber: Int
     var accountOwner: String
     var balance: Double
    
    init(accountOwner: String, initialBalance: Double) {
         BankAccount.uniqueAccountNumber += 1
         self.accountNumber = BankAccount.uniqueAccountNumber
         self.accountOwner = accountOwner
         self.balance = initialBalance
     }
    
     func deposit(amount: Double) {
         balance += amount
         print("Deposit successful. Current balance: \(balance)")
     }
    
     func withdraw(amount: Double) {
         if amount <= balance {
             balance -= amount
             print("Withdrawal successful. Current balance: \(balance)")
         } else {
             print("Insufficient funds. Withdrawal failed.")
         }
     }
    
     func getBalance() -> Double {
         return balance
     }
    
     func displayAccountInfo() {
         print("Account Number: \(accountNumber)")
         print("Account Owner: \(accountOwner)")
         print("Current Balance: \(balance)")
     }
 }

 let account = BankAccount(accountOwner: "Bota Ermek", initialBalance: 100000.0)
 account.displayAccountInfo()
 account.deposit(amount: 25000.0)
 account.withdraw(amount: 28000.0)
 account.displayAccountInfo()*/






class Book {
     var title: String
     var author: String
     var year: Int
     var pageCount: Int
    
     init(title: String, author: String, year: Int, pageCount: Int) {
         self.title = title
         self.author = author
         self.year = year
         self.pageCount = pageCount
     }
    
     func displayBookInfo() {
         print("Title: \(title)")
         print("Author: \(author)")
         print("Year: \(year)")
         print("Page Count: \(pageCount)")
     }
 }

 class Library {
     var books: [Book] = []
    
     func addBook(book: Book) {
         books.append(book)
         print("Book added to the library.")
     }
    
     func removeBook(title: String) {
         if let index = books.firstIndex(where: { $0.title == title }) {
             books.remove(at: index)
             print("Book removed from the library.")
         } else {
             print("Book not found in the library.")
         }
     }
    
     func displayLibraryInfo() {
         print("Library Books:")
         for book in books {
             book.displayBookInfo()
             print("--------------")
         }
     }
 }

 let book1 = Book(title: "The picture of Dorian Gray", author: "Oscar Wild", year: 1890, pageCount: 304)
let book2 = Book(title: "1984", author: "George Orwell", year: 1949, pageCount: 328)

 let library = Library()
 library.addBook(book: book1)
 library.addBook(book: book2)
 library.displayLibraryInfo()

 library.removeBook(title: "1984")
 library.displayLibraryInfo()




