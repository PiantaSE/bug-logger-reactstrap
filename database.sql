CREATE EXTENSION IF NOT EXISTS "uuid-ossp";


CREATE TABLE users (
    id varchar(36) PRIMARY KEY DEFAULT UUID_GENERATE_V4(),
    first_name varchar(255),
    last_name varchar(255),
    phone varchar(255),
    email varchar(255),
    password_hash varchar(255),
    user_authority varchar(255)
);

CREATE TABLE user_projects (
    project_id varchar(36) PRIMARY KEY DEFAULT UUID_GENERATE_V4(),
    user_id varchar(255)
);

CREATE TABLE comments (
    id varchar(36) PRIMARY KEY DEFAULT UUID_GENERATE_V4(),
    ticket_id varchar(255),
    author_id varchar(255),
    comment varchar(255),
    created_at varchar(255)
);

CREATE TABLE dev_assignments (
    user_id varchar(255),
    ticket_id varchar(255)
);

CREATE TABLE projects (
    id varchar(36) PRIMARY KEY DEFAULT UUID_GENERATE_V4(),
    name varchar(255),
    description varchar(255)
);

CREATE TABLE tickets (
    id varchar(36) PRIMARY KEY DEFAULT UUID_GENERATE_V4(),
    title varchar(255),
    project_id varchar(255),
    description varchar(255),
    author_id varchar(255),
    priority varchar(255),
    type varchar(255),
    status varchar(255),
    time_estimate varchar(255),
    created_at varchar(255)
);

CREATE TABLE ticket_history (
    ticket_id varchar(255)
);

