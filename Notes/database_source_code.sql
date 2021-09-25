-- Create table tbl_books

-- DROP TABLE public.tbl_books;

CREATE TABLE public.tbl_books (
	book_id varchar(3) NOT NULL,
	title varchar(300) NOT NULL,
	author varchar(100) NOT NULL,
	publisher varchar(50) NOT NULL,
	price numeric(8,2) NOT NULL,
	cover_photo bytea NULL,
	CONSTRAINT tbl_books_pk PRIMARY KEY (book_id)
);

-- Create table tbl_users

-- DROP TABLE public.tbl_users;

CREATE TABLE public.tbl_users (
	user_id varchar(3) NOT NULL,
	username varchar(20) NOT NULL,
	"password" varchar(200) NOT NULL,
	first_name varchar(50) NOT NULL,
	last_name varchar(50) NOT NULL,
	email varchar(50) NOT NULL,
	phone varchar(10) NOT NULL,
	"role" varchar(10) NOT NULL,
	CONSTRAINT tbl_users_pk PRIMARY KEY (user_id)
);

-- Create table tbl_receipts

-- DROP TABLE public.tbl_receipts;

CREATE TABLE public.tbl_receipts (
	receipt_id varchar(3) NOT NULL,
	user_id varchar(3) NOT NULL,
	created_on timestamp(0) NOT NULL,
	total_price numeric(2) NOT NULL,
	received_money numeric(2) NOT NULL,
	exchange numeric(2) NOT NULL,
	CONSTRAINT tbl_receipts_pk PRIMARY KEY (receipt_id)
);

-- Create table tbl_receipt_items

-- DROP TABLE public.tbl_receipt_items;

CREATE TABLE public.tbl_receipt_items (
	receipt_item_id varchar(3) NOT NULL,
	receipt_id varchar(3) NOT NULL,
	book_id varchar(3) NOT NULL,
	quantity int NOT NULL,
	item_price numeric(2) NOT NULL,
	CONSTRAINT tbl_receipt_items_pk PRIMARY KEY (receipt_item_id)
);

-- Create relationships

ALTER TABLE public.tbl_receipts ADD CONSTRAINT tbl_receipts_fk FOREIGN KEY (user_id) REFERENCES public.tbl_users(user_id) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE public.tbl_receipt_items ADD CONSTRAINT tbl_receipt_items_fk FOREIGN KEY (receipt_id) REFERENCES public.tbl_receipts(receipt_id) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE public.tbl_receipt_items ADD CONSTRAINT tbl_receipt_items_fk_1 FOREIGN KEY (book_id) REFERENCES public.tbl_books(book_id) ON DELETE CASCADE ON UPDATE CASCADE;


