PRAGMA foreign_keys = ON;

-- drop table Node;
-- drop table Edge;

create table Node (
    id integer primary key AUTOINCREMENT,
    front text not NULL,
    back text not NULL,
    updated_at datetime default CURRENT_TIMESTAMP
);

create table Edge (
    src integer not null,
    dst integer not null,
    front text not NULL,
    back text not NULL,
    updated_at datetime default CURRENT_TIMESTAMP,
    primary key (src, dst),
    FOREIGN key (src) REFERENCES Node(id),
    FOREIGN key (dst) REFERENCES Node(id)
);
