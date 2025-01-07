-- category table for category.csv
CREATE TABLE category (
    category_id VARCHAR(10) PRIMARY KEY,
    category VARCHAR NOT NULL
);
SELECT * FROM category

-- subcategory table for subcategory.csv
CREATE TABLE subcategory (
    subcategory_id VARCHAR(10) PRIMARY KEY,
    subcategory VARCHAR NOT NULL
);
SELECT * FROM subcategory

-- contacts table for contacts_option1.csv
CREATE TABLE contacts (
    contact_id INTEGER PRIMARY KEY,
    first_name VARCHAR NOT NULL,
    last_name VARCHAR NOT NULL,
    email VARCHAR NOT NULL
);
SELECT * FROM contacts

-- campaign table for campaign.csv
CREATE TABLE campaign (
    cf_id INTEGER PRIMARY KEY, 
    contact_id INTEGER NOT NULL, 
    company_name TEXT NOT NULL, 
    description TEXT NOT NULL, 
    goal NUMERIC(10, 2) NOT NULL, 
    pledged NUMERIC(10, 2) NOT NULL, 
    outcome VARCHAR(20) NOT NULL, 
    backers_count INTEGER NOT NULL, 
    country VARCHAR(5) NOT NULL, 
    currency VARCHAR(5) NOT NULL, 
    launched_date DATE NOT NULL, 
    end_date DATE NOT NULL, 
    category_id VARCHAR(10) NOT NULL, 
    subcategory_id VARCHAR(10) NOT NULL,
    FOREIGN KEY (category_id) REFERENCES category(category_id),
    FOREIGN KEY (subcategory_id) REFERENCES subcategory(subcategory_id),
    FOREIGN KEY (contact_id) REFERENCES contacts(contact_id)
);
SELECT * FROM campaign



