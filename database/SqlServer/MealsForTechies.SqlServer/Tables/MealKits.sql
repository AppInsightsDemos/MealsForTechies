CREATE TABLE dbo.MealKits
(
	Sku                    INT            NOT NULL,
	Name                   VARCHAR(40)    NOT NULL,
	ShortDescription       VARCHAR(250)   NOT NULL,
	LongDescription        VARCHAR(2048)  NOT NULL,
	TotalPrepTimeMinutes   INT            NOT NULL,
	ActivePrepMinutes      INT            NOT NULL,
	Calories               INT            NOT NULL,


);
