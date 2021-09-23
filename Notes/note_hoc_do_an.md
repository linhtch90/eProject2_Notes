# Note Lop Hoc Do An

> 23-Sep-2021

## Link lop hoc
	
https://meet.google.com/tqv-tmej-nua?fbclid=IwAR1ydkolAA7ZV-gHg2kwH7veFo7ABhGnEWGMaYSfrwdbmWhsdZCUNanK_yU

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

- View list of books
- Edit book information
- Add new book
- View list of receipts
- Check total revenue
- Check revenue of the last 7 days
- Check top 5 selling books

### Cashier

- Check books selected by customer and equivalent quantities
- Calculate the total price
- Received money from customer and exchange
- Export receipt 

## Database

### tbl_users (use for both customer and admin)

- user_id
- username
- password (encrypted -> salt and hash)
- first_name
- last_name
- email
- phone
- role (manager or cashier)

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