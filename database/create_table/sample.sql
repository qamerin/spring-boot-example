CREATE TABLE test.example (
    id  SERIAL,
    title VARCHAR(64),
    content VARCHAR(128),
    CONSTRAINT example_pk PRIMARY KEY ( id ) 
);