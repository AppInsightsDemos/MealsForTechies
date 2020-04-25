MERGE INTO Tags AS Target
USING (VALUES
    ('Cuisine', 'Italian'),
    ('Cuisine', 'French'),
    ('Cuisine', 'Mediterranean'),
    ('Cuisine', 'American'),
    ('Cuisine', 'Mexican'),
    ('Cuisine', 'Chinese'),
    ('Cuisine', 'Thai'),
    ('Cuisine', 'Korean'),
    ('Cuisine', 'Japanese'),
    ('Cuisine', 'Indian'),
    ('Cuisine', 'Vietnamese'),

    ('Dietary Needs', 'Vegetarian'),
    ('Dietary Needs', 'Vegan'),
    ('Dietary Needs', 'Gluten Free'),

    ('Course', 'Main Course'),

    ('Other', 'Chicken'),
    ('Other', 'Beef'),
    ('Other', 'Pork'),
    ('Other', 'Shrimp'),
    ('Other', 'Fish'),
    ('Other', 'Tofu'),

    ('Other', 'Pasta'),
    ('Other', 'Rice')
)
AS Source (TagCategory, TagName)
ON Target.TagName = Source.TagName
    WHEN MATCHED THEN
        UPDATE
		    SET
			TagCategory = Source.TagCategory
    WHEN NOT MATCHED BY TARGET THEN
        INSERT (TagName, TagCategory)
        VALUES (TagName, TagCategory);