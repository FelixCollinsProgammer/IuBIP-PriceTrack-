-- Обновление поля marketplace на основе URL
UPDATE "product" 
SET marketplace = 'Ozon' 
WHERE url LIKE '%ozon.ru%';

UPDATE "product" 
SET marketplace = 'Wildberries' 
WHERE url LIKE '%wildberries.ru%';

UPDATE "product" 
SET marketplace = 'AliExpress' 
WHERE url LIKE '%aliexpress%';

-- Для остальных URL устанавливаем "Other"
UPDATE "product" 
SET marketplace = 'Other' 
WHERE marketplace IS NULL; 