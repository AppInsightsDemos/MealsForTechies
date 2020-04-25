MERGE INTO TagCategories AS Target
USING (VALUES
    ('Cuisine'),
    ('Dietary Needs'),
    ('Course'),
    ('Other')
)
AS Source (TagCategory)
ON Target.TagCategory = Source.TagCategory
    WHEN NOT MATCHED BY TARGET THEN
        INSERT (TagCategory)
        VALUES (TagCategory);