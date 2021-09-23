# Aptech E-Project Semester 2 - Bookstore

## Features

### Customer

- Sign Up (Form validation)
- Sign In (Form validation)
- Browse books (pagination) 
- Search books (by title, author, isbn13)
- View book detail information
- Add book to cart
- View cart
- Change order quantity
- Submit order (add address for shipment and payment method)
- Receive email notification on ordering successfully

### Manager

- Sign Up (Form validation)
- Sign In (Form validation)
- Browse books (pagination) 
- Search books (by title, author, isbn13)
- View book detail information
- Edit book information
- Delete book from database
- Add book to database
- View order list (new orders appear on top)
- Approve order to send email notification to customer
- Delete order to send email notification to customer
- View order detail information (receipt information)
- Export receipt information to pdf for printing
- Receipt has an QR code, which is the same with order Id in customer's email

## Database

### tbl_users (use for both customer and admin)

- user_id
- username
- password (encrypted)
- first_name
- last_name
- email
- phone
- role (customer or admin)

### tbl_books

- book_id
- cover_photo
- title
- author
- publisher
- published_date
- isbn_13
- price
- description

### tbl_receipts

- receipt_id
- user_id
- created_on
- sub_total
- tax (10%)
- total_price

### tbl_receipt_items

- receipt_item_id
- receipt_id
- book_id
- quantity
- item_price