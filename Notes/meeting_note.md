# Meeting Notes for eProject Semester 2

## Meeting 1: 20-Sep-2021

### Content

- Discuss about project topics
- Specify features of the application
- Discuss about database, probably use database hosted on cloud
- Creating Excel file for tasks management
- Discuss about chat channel. How about using Google Chat -> Ok

### Detail

- Find ideas:
  - Bakery
  - Warehouse Management
  - Library management
  - Digital medical notebook

- UI: Flatlaf
- Database: Clever Cloud, PostgreSQL. Try connecting with Java and DBeaver
  - If difficult -> Local Microsoft SQL

- Next meeting: 23-Sep-2021
  
## Meeting 2: 23-Sep-2021

- Draw wire frame:
  - Sign In (manager + cashier)
    - Username/email
    - Password
    - Role
  - Sign Up (manager + cashier)
    - As in database tbl_users
  - Separated windows for manager and cashier
  - Functions belong separated tabs
- Design Database + Add books data
- List functions to work assignment Excel table 

## Meeting 3: 25-Sep-2021

### Content

- Discuss wire-frame
- 1 Manager, many cashiers
  - Adding Cashier Sign Up (user: manager)
  - Cashier management: Manager can view, create, edit, delete cashiers
- Show database, how to connect with DBeaver
- Instruct how to use properties variables for database connection in Java
- Introduce test package
- Task assignment: Start building GUI
- Documentation

### Detail

- Wire-frame is okay
- Add human resource tab for wire-frame manager (similar to book management tab) -> Toan 

## Meeting 4: 27-Sep-2021

### Content

- Demo GUI, introduce role of MainClass, Flatlaf
- Examples of adding tab to tabbed pane
- Human resource management
  - Manager and cashier: 1 manager account (created by Java code), many cashier accounts (created by manager)
    - Manager: CRUD for cashier
    - Cashier: RU for themselves
  - Cashier profile management: Read and update their own profile data
- Icons should have the same theme
- Understand data type in database to develop models and DAO
  - tbl_books:
    - ID: B1 -> B20 (B99)
    - Price: 000000.00
  - tbl_users:
    - ID: U1 -> U99 (U1: Manager)
    - Password: salt + hash
  - tbl_receipts:
    - ID: R1 -> R99
  - tbl_receipt_items:
    - ID: I1 -> I99
- Increase toolbar height to 75 -> Linh

## Meeting 5: 29-Sep-2021

### Content

- Check functions for books management (Create, Update, Delete, Reset) prepared by Huu
  - Cover Photo: target.com -> Search google -> Size: 488x488
  - Cover photo: label on panel -> add mouse event
  - Fields: Not null -> Form validation
  - Data is remote -> Need time to fetch -> Waiting cursor
- Check functions done by Toan
- Demo books management functions and help Huu understand what should be done next
- Cashier Profile management screen size problem and tab name is wrong
  - Fix height of panel (Huu + Toan)
  - Fix name of tab Profile Management (Huu)
- Discuss ideas from teacher
- If Users management need photo, update database, model, Dao
- Salt and hash
  - Change password: 
    - Old password -> salt and hash -> hash2 -> compare -> hash1 -> same -> validate
    - New password -> salt and hash -> store into database -> hash3 -> replace hash1
  
- Manager: View all accounts, create cashier accounts, delete cashier accounts, change passwords for all accounts
- User photo: Wait for Huu -> Copy
- UI
  - Finish with current size -> Dev functions -> Finish functions -> Ajust UI for both small and fullscreen
  - Receipts manager: Add column Status, Add button Cancel Receipt
  - User manager: Add button to list all users, add password and confirm password

## Meeting 6: 30-Sep-2021

- Linh takes over Users management features from Toan

## Meeting 7: 1-Oct-2021

- Users management
  - Validate patterns for email
  - Validate patterns for phone numbers
  - Successful dialogs for Add, Update, Delete buttons

## Meeting 8: 5-Oct-2021

- Cashier management
  - Export: create into database, mark as paid, export to pdf
- Status: Paid and Cancel
- User management: If manager update info of himself -> do not change role to cashier
- User Dao: Update for profile photo

## Meeting 9: 6-Oct-2021

- Toan: GUI icons and logo
- Huu: Create Receipt -> List books and search books (Reuse similar part in books management)
  
## Meeting 10: 7-Oct-2021

- Export Receipt -> Insert Receipt (Receipt Dao) (Store Receipt ID) -> Loop through all items in table -> Create receipt items (Receipt Item Dao) (Reuse Receipt ID)

```
Store receiptId
insertReceipt();
for item: itemList
  Reuse receiptId
  insertReceiptItem
```

- UUID -> Create ID for Receipt, Receipt Item

## Meeting 11: 9-Oct-2021

- Automation tool for creating receipts:
  - Datetime: 7 days (excluding today) (Today 9-10 -> 2 - 8-Oct)
  - receiptItems: 1-10: Random
  - quantity: 1-10: Random
  - books: B01 - B20: Random
  - Cashier: C03 - Vicky Blue
  - Quantity receipts: 10-20 receipts
  - Delete all data in a table
  
```SQL
DELETE FROM tbl_receipts;

select book_id, sum(quantity) as sold_copies from tbl_receipt_items group by book_id order by sold_copies desc limit 5;

select date(created_on) as last_seven_days, sum(total_price) as total_revenue from tbl_receipts group by last_seven_days order by last_seven_days desc limit 7;

```

## Meeting 12: 19-Oct-2021

- Theme switching button
- Internationalization
- Help menu