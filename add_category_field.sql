-- Добавление поля category
ALTER TABLE "product" ADD COLUMN "category" character varying DEFAULT 'Прочее';

-- Добавление поля marketplace 
ALTER TABLE "product" ADD COLUMN "marketplace" character varying; 