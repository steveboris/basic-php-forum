CREATE OR REPLACE TABLE user (
    id              int auto_increment,
    username        varchar(55)     not null,
    password        varchar(255)    not null,
    auth_key        varchar(255)    not null,
    access_token    varchar(255)    not null,
    PRIMARY KEY (id)
)