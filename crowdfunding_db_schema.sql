DROP TABLE "campaign"
DROP TABLE "category"
DROP TABLE "subcategory"
DROP TABLE "contact_info"

CREATE TABLE "campaign" (
    "cf_id" int  NOT NULL PRIMARY KEY,
    "contact_id" int   NOT NULL,
    "company_name" varchar   NOT NULL,
    "description" varchar   NOT NULL,
    "goal" float   NOT NULL,
    "pledged" float   NOT NULL,
    "outcome" varchar   NOT NULL,
    "backers_count" int   NOT NULL,
    "country" varchar   NOT NULL,
    "currency" varchar   NOT NULL,
    "launched_date" date   NOT NULL,
    "end_date" date   NOT NULL,
    "category_id" varchar   NOT NULL,
    "subcategory_id" varchar   NOT NULL,
	FOREIGN KEY("contact_id") REFERENCES "contact_info" ("contact_id"),
	FOREIGN KEY("category_id") REFERENCES "category" ("category_id"),
	FOREIGN KEY("subcategory_id") REFERENCES "subcategory" ("subcategory_id")
     );


CREATE TABLE "category" (
    "category_id" varchar NOT NULL PRIMARY KEY,
    "category" varchar NOT NULL
);

CREATE TABLE "subcategory" (
    "subcategory_id" varchar   NOT NULL PRIMARY KEY,
    "subcategory" varchar   NOT NULL
);

CREATE TABLE "contact_info" (
    "contact_id" int   NOT NULL PRIMARY KEY,
    "first_name" varchar   NOT NULL,
    "last_name" varchar   NOT NULL,
    "email" varchar NOT NULL
);

SELECT * FROM campaign
SELECT * FROM category
SELECT * FROM subcategory
SELECT * FROM contact_info
