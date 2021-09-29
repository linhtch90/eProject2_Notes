# Note Lop Hoc Do An

> 23-Sep-2021

## Link lop hoc

https://meet.google.com/tqv-tmej-nua?fbclid=IwAR1ydkolAA7ZV-gHg2kwH7veFo7ABhGnEWGMaYSfrwdbmWhsdZCUNanK_yU

## Team

### Link team meeting

https://meet.google.com/idt-iezv-gvv

### Link task assignment

https://docs.google.com/spreadsheets/d/1tfqoSTfFs00nWIdsX9b5Hb3oZTdg47P8/edit?usp=sharing&ouid=116386488472863860558&rtpof=true&sd=true

## Youtube

https://www.youtube.com/watch?v=JYoQ1fdW2VY&list=PLn9lhDYvf_3FeKNOgPMupRocnRDt5cIJs&index=1

https://www.youtube.com/watch?v=qOFeYI1W2i8&list=PLn9lhDYvf_3FeKNOgPMupRocnRDt5cIJs&index=6

https://www.youtube.com/watch?v=zzo7MIUiUSM&list=PLn9lhDYvf_3FeKNOgPMupRocnRDt5cIJs&index=2

https://www.youtube.com/watch?v=Lf9MkEf-n80&list=PLn9lhDYvf_3FeKNOgPMupRocnRDt5cIJs&index=3

- Thiet ke chuong trinh dang Tab

https://www.youtube.com/watch?v=vb3EY3sv1dU&list=PLn9lhDYvf_3Fag5Od5qpaswwYWOeX5bno

## Noi dung

- Chon topic: **Bookstore management**
- Mo ta
- Use case diagram
- Entity relationship diagram
- Code
- Test
- Packaging

## Use case

### Bookstore Manager

- View list of books (Tab 1) -> Linh
- Edit book information (Tab 1)
- Add new book (Tab 1)
- Remove book (Tab 1)
- View list of receipts (Tab 2) -> Huu
- View receipt detail (Tab 2)
- Check total revenue (as a label) (Tab 3) -> Toan
- Check revenue of the last 7 days (as a plot) (Tab 3)
- Check top 5 selling books (table/list) (Tab 3)

### Cashier

- Check books selected by customer and equivalent quantities (Tab 1)
- Calculate the total price (Tab 1)
- Received money from customer and exchange (Tab 1)
- Press button -> Export receipt (search library to export qr code, export data as pdf)
- **Note:** Shift

## Database

### tbl_users (use for both manager and cashier)

- user_id
- username
- password (encrypted -> salt and hash) (library: bcrypt)
- first_name
- last_name
- email
- phone
- role (manager or cashier)

### tbl_books

- book_id
- cover_photo (optional)
- title
- author
- publisher
- published_date (remove)
- isbn_13 (remove)
- price

### tbl_receipts

- receipt_id
- user_id (cashier)
- created_on
- sub_total (remove)
- tax (10%) (remove)
- total_price
- received_money (remove)
- exchange (remove)
- status

### tbl_receipt_items

- receipt_item_id
- receipt_id
- book_id
- quantity
- item_price
  
## PostgreSQL JDBC

### Storing Binary Data

https://jdbc.postgresql.org/documentation/head/binary-data.html

### Using Java 8 Date and Time classes

https://jdbc.postgresql.org/documentation/head/8-date-time.html

