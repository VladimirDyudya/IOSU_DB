--4. Из таблицы Production.ProductPhoto показать ID фотографии товара (ProductPhotoID) и название файла
--с полноразмерной фотографией (LargePhotoFileName). Показать только те товары, миниатюрные фото
--(ThumbnailPhotoFileName) которых содержать в названии «зеленый» ('green').
SELECT ProductPhotoID, LargePhotoFileName
FROM Production.ProductPhoto
WHERE ThumbnailPhotoFileName LIKE '%green%'