DROP TABLE BOOK_T;
CREATE TABLE BOOK_T (
  BOOK_NO NUMBER             NOT NULL,
  TITLE   VARCHAR2(100 BYTE) NOT NULL,
  AUTHOR  VARCHAR2(100 BYTE),
  PRICE   NUMBER,
  PUBDATE DATE,
  CONSTRAINT PK_BOOK PRIMARY KEY(BOOK_NO)
);

DROP SEQUENCE BOOK_SEQ;
CREATE SEQUENCE BOOK_SEQ NOCACHE;
