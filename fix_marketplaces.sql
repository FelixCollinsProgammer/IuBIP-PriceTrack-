-- Обновляем маркетплейсы для существующих товаров
-- Ozon
UPDATE product
SET marketplace = 'Ozon'
WHERE url LIKE '%ozon.ru%' AND (marketplace IS NULL OR marketplace = 'Unknown' OR marketplace = 'Other');

-- Wildberries
UPDATE product
SET marketplace = 'Wildberries'
WHERE (url LIKE '%wildberries.ru%' OR url LIKE '%wb.ru%') AND (marketplace IS NULL OR marketplace = 'Unknown' OR marketplace = 'Other');

-- AliExpress
UPDATE product
SET marketplace = 'AliExpress'
WHERE (url LIKE '%aliexpress.ru%' OR url LIKE '%aliexpress.com%') AND (marketplace IS NULL OR marketplace = 'Unknown' OR marketplace = 'Other');

-- Amazon
UPDATE product
SET marketplace = 'Amazon'
WHERE (url LIKE '%amazon.%' OR url LIKE '%amzn.%') AND (marketplace IS NULL OR marketplace = 'Unknown' OR marketplace = 'Other');

-- Yandex Market
UPDATE product
SET marketplace = 'Yandex Market'
WHERE (url LIKE '%market.yandex%' OR url LIKE '%yandex.market%') AND (marketplace IS NULL OR marketplace = 'Unknown' OR marketplace = 'Other');

-- Устанавливаем категорию "Прочее" для товаров без категории
UPDATE product
SET category = 'Прочее'
WHERE category IS NULL OR category = '';

-- Выводим обновленные товары для проверки
SELECT id, name, url, marketplace, category FROM product; 