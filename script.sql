CREATE OR REPLACE TABLE user (
    id              int auto_increment,
    username        varchar(55)     not null,
    password        varchar(255)    not null,
    auth_key        varchar(255)    not null,
    access_token    varchar(255)    not null,
    PRIMARY KEY (id)
)

CREATE OR REPLACE TABLE article
(
    id              int auto_increment,
    title        varchar(255)     not null,
    slug        varchar(1024)    not null,
    body        LONGTEXT    not null,
    created_at    int,
    updated_at    int,
    created_by    int,
    PRIMARY KEY (id)
);
ALTER TABLE article
    add constraint article_user_created_by_fk
        foreign key (created_by) references user (id);
