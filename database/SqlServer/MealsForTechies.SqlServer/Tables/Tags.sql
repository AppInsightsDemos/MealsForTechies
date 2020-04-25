CREATE TABLE [dbo].[Tags]
(
	TagName       VARCHAR(30)   NOT NULL,
	TagCategory   VARCHAR(30)   NOT NULL,
	CONSTRAINT PK_Tags
	    PRIMARY KEY (TagName),
	CONSTRAINT FK_Tags_TagCategory
	    FOREIGN KEY (TagCategory) REFERENCES TagCategories (TagCategory)
);
