-- 1. film tablosunda bulunan filmleri rating değerlerine göre gruplayınız.
SELECT rating,count(*) rating FROM film GROUP BY rating



-- 2. film tablosunda bulunan filmleri replacement_cost sütununa göre grupladığımızda film sayısı 50 den fazla olan replacement_cost değerini ve karşılık gelen film sayısını sıralayınız.
select count(film), film.replacement_cost from film group by replacement_cost having count(film) > 50



-- 3. customer tablosunda bulunan store_id değerlerine karşılık gelen müşteri sayılarını nelerdir?
select count(*), store_id from customer group by store_id



-- 4. city tablosunda bulunan şehir verilerini country_id sütununa göre gruplandırdıktan sonra en fazla şehir sayısı barındıran country_id bilgisini ve şehir sayısını paylaşınız.
select count(country_id), max(country_id) from city group by country_id order by max(city)