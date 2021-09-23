# Aptech E-Project Semester 2 - Library Management System

## Features

### User

- Sign In
- View account info
- Edit account info
- Delete account
- View borrowed books
- Search books (by title, by author, by year, by isbn 13)
- View book detail info
- Borrow books
- Return books

### Library manager

- Sign In
- Sign Up User
- Search books
- Add new books
- View (include total quantity, borrowed quantity, remaining quantity) and **Edit** detail info of a book 
- Delete books (only if nobody borrowing them)
- View list of user
- Search user (by title, by author, by year, by isbn 13)
- View user information (books borrowing status)
- Delete user (only if this user is not borrowing any book)
- Accept borrowed books
- Accept returned books
- Export user card
- Export book qr code
- Create bar plot comparing the number of books borrowed between weekdays in a week
- Create bar plot showing top 5 most proactive user in a week (sum of the number of borrowed and returned books)
- Export statistics report (filetype: pdf) including these 2 plots 

### UI

- Alternate default UI of Java Swing
- Use tabbed pane

## Data Tables

### books_tbl

- id_book
- title
- author
- publisher
- publish_date
- isbn13
- detail_description
- cover_img
- qrcode (based on isbn13)

### users_tbl

- id_user
- role
- username
- first_name
- last_name
- id_card_number
- email
- mobile
- qrcode (based on email address)

### borrow_ticket

- id_borrow_ticket
- id_user
- id_book
- borrow_date
- return_date
- borrow_status

## Development

- Develop new features and test on **development** branch
- If a new feature can pass all the tests, merge into **main** branch
- Report development status on Mon, Wed, Fri (done, doing, troubles) into chat channel
- Meeting on Tue, Thu, Sat [Google Meet](https://meet.google.com/idt-iezv-gvv)
- Create an Excel table, so that developers can pick up their task