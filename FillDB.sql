/* FILL TABLES */

SET NOCOUNT ON
  
PRINT 'Adding Customers...'
    EXEC dbo.AddCustomer @Name = 'Celina Johansen', @Email = 'celinajohansen@gmail.com', @PhoneNumber = '123456789', 
@Addres = 'Skarbowa 16', @PostalCode =  '30-056', @City = 'Krakow'
GO

EXEC dbo.AddCustomer @Name = 'Cyryl Jensen', @Email = 'cJensen@gmail.com', @PhoneNumber = '222333444', 
@Addres = 'Lipowa 18/2', @PostalCode = '12-819', @City = 'Warszawa'
GO

EXEC dbo.AddCustomer @Name = 'Cameron Moller', @Email = 'mollercameron@wp.pl', @PhoneNumber =  '367235980', 
@Addres = 'Lea 13', @PostalCode = '26-600', @City = 'Radom'
GO
EXEC dbo.AddCustomer @Name = 'Cyryl Andersen', @Email = 'candersen@wp.pl', @PhoneNumber =  '456789333', 
@Addres = 'Wesola 13', @PostalCode = '33-222', @City = 'Katowice'
GO

PRINT 'Done.'
GO


PRINT 'Confirming some Customers...'
EXEC dbo.[Confirm Account] 1
PRINT 'Done.'
GO


PRINT 'Adding Categories...'
INSERT INTO [dbo].[Categories] VALUES
  (1, 'Twarz')
, (2, 'Usta')
, (3, 'Oczy')
, (4, 'Brwi')
, (5, 'Paznokcie')
, (6, 'Akcesoria')
, (7, 'Dermokosmetyki')
, (8, 'Zestawy')
;
PRINT 'Done.
'
GO

PRINT 'Adding Subcategories...'
INSERT INTO [dbo].[Subcategories] VALUES
-- Twarz
  (1, 'Podkłady')
, (1, 'Pudry')
, (1, 'Korektory')
, (1, 'Rozświetlacze i bronzery')
, (1, 'Róże')
, (1, 'Kremy BB i CC')
, (1, 'Bazy pod makijaż')
, (1, 'Spraye utrwalające makijaż')
, (1, 'Pędzle do makijażu')
, (1, 'Akcesoria')
-- Usta
, (2, 'Błyszczyki')
, (2, 'Pomadki do ust')
, (2, 'Konturówki do ust')
, (2, 'Pędzle do ust')
-- Oczy
, (3, 'Tusze do rzęs')
, (3, 'Bazy i cienie do powiek')
, (3, 'Paletki cieni')
, (3, 'Kredki do oczu i eyelinery')
, (3, 'Sztuczne rzęsy')
, (3, 'Odżywki do rzęs')
, (3, 'Pędzle do oczu')
, (3, 'Akcesoria')
-- Brwi
, (4, 'Kredki do brwi')
, (4, 'Cienie')
, (4, 'Korektory do brwi')
, (4, 'Maskary, żele, woski, pomady, henna')
, (4, 'Pędzle do brwi')
, (4, 'Akcesoria')
-- Paznokcie
, (5, 'Lakiery do paznokci')
, (5, 'Lakiery hybrydowe')
, (5, 'Pielęgnacja')
, (5, 'Zmywacze')
, (5, 'Zdobienie paznokci')
, (5, 'Bazy i utwardzanie, top coat')
, (5, 'Sztuczne paznokcie')
, (5, 'Akcesoria')
-- Akcesoria
, (6, 'Do twarzy')
, (6, 'Do ust')
, (6, 'Do oczu')
, (6, 'Do paznokci')
, (6, 'Pędzle do makijażu')
, (6, 'Kosmetyczki')
-- Dermokosmetyki nie mają podkategorii
-- Zestawy też nie mają podkategorii
;
PRINT 'Done.
'
GO

PRINT 'Adding Brands...'
INSERT INTO [dbo].[Brands] VALUES
  ('Hello Kitty') -- test
PRINT 'Done.
'
GO

PRINT 'Adding Products...'
INSERT INTO [dbo].[New Products] VALUES
  ('Revlon', 'Colorstay', 'podkład z pompką do cery tłustej i mieszanej, 30 ml', 1, 1, 24, 48.99)
, ('Gosh', 'X-CEPTIONAL WEAR', 'kryjący podkład do twarzy w kremie do twarzy, 35 ml', 1, 1, 21, 41.99) 
, ('Anabelle Minerals', 'GOLDEN FAIREST', 'podkład matujący do twarzy, 4 g', 1, 1, 22, 44.99) 
, ('Catrice','HD LIQUID COVERAGE', 'podkład do twarzy, 30 ml', 1, 1, 10, 23.19) 
, ('Eveline', 'Matt Magic Lip Cream', ' pomadka w płynie do ust', 2, 2, 13, 19.99)
,('Revolution Makeup', 'Iconic Division', 'Paleta cieni do powiek', 3,3, 20, 29.99)
, ('Eveline', 'Eyebrow Pencil', 'kredka do brwi', 4,1,8, 11.50)
, ('Glov', 'On the go', 'rękawica do makijażu', 6,1,30, 39.99)
;
PRINT 'Done. 
'
GO

PRINT 'Adding Departments...'
INSERT INTO [dbo].[Departments] VALUES
  (1, 'Management')
, (2, 'IT')
, (3, 'Sales')
, (4, 'Packaging')
;
PRINT 'Done.
'
GO

PRINT 'Adding Employees...'
INSERT INTO [dbo].[Employees] VALUES
  ('Eryk Sorensen', 4)
, ('Elif Jensen', 3)
, ('Eliza Moller', 2)
, ('Elisabeth Christiansen', 1)
, ('Edward Larsen', 1)
, ('Emanuel Poulsen', 3)
, ('Eugeniusz Johansen', 3)
, ('Eryk Pedersen', 4)
, ('Elif Olsen', 4)
, ('Elzna Jorgensen', 4)
;
PRINT 'Done.
'
GO

PRINT 'Adding Storage...'
INSERT INTO [dbo].[Storage] VALUES
  (1, 1000, 100)
, (2, 1000, 500)
, (3, 1000, 200)
, (4, 1000, 300)
, (5, 1000, 500)
, (6, 500, 100)
, (7, 1000, 600)
, (8, 1000, 200)
;
PRINT 'Done.
'
GO


PRINT 'Adding some products to carts'

EXEC dbo.AddToCart @CustomerID = 1, @ProductID = 1, @Quantity = 2
GO

EXEC dbo.AddToCart @CustomerID = 1, @ProductID = 2, @Quantity = 3
GO

EXEC dbo.AddToCart @CustomerID = 3, @ProductID = 6, @Quantity = 5
GO

EXEC dbo.AddToCart @CustomerID = 2, @ProductID = 2, @Quantity = 1
GO

EXEC dbo.AddToCart @CustomerID = 1, @ProductID = 3, @Quantity = 2
GO

EXEC dbo.AddToCart @CustomerID = 2, @ProductID = 5, @Quantity = 3
GO

EXEC dbo.AddToCart @CustomerID = 4, @ProductID = 6, @Quantity = 4
GO

EXEC dbo.AddToCart @CustomerID = 3, @ProductID = 1, @Quantity = 1
GO

EXEC dbo.AddToCart @CustomerID = 3, @ProductID = 3, @Quantity = 3
GO

EXEC dbo.AddToCart @CustomerID = 4, @ProductID = 5, @Quantity = 1
GO

EXEC dbo.AddToCart @CustomerID = 4, @ProductID = 2, @Quantity = 3
GO


PRINT 'Done.'


PRINT 'Buying products...'
EXEC dbo.Buy @CustomerID = 1
GO
EXEC dbo.Buy @CustomerID = 2
GO
/*EXEC dbo.Buy @CustomerID = 3
GO*/

PRINT 'Done.'

EXEC dbo.AddToCart @CustomerID = 1, @ProductID = 5, @Quantity = 2
GO

PRINT 'Adding Reviews ...'
EXEC dbo.AddReview @CustomerID = 2, @ProductID = 1, @Content = 'Super, Polecam!', @Rating = 5
GO
EXEC dbo.AddReview @CustomerID = 3, @ProductID = 2, @Content = 'Może być.', @Rating = 3
GO
EXEC dbo.AddReview @CustomerID = 3, @ProductID = 1, @Content = 'Nawet, nawet', @Rating = 3
GO

PRINT 'Done.'

PRINT 'Adding Reviews Ratings ...'
EXEC dbo.AddReviewRating @CustomerID = 1, @ReviewID = 1, @PlusMinus = '+'
GO
EXEC dbo.AddReviewRating @CustomerID = 3, @ReviewID = 1, @PlusMinus = '-'

PRINT 'Done.'

PRINT 'Adding some Suppliers ...'
INSERT INTO dbo.Suppliers VALUES
('BestCosmetics', 'Polska', 'Warszawa', 'ul. Wesoła 25','05-077', 'bestcosmetics@gmail.com', '561321673' )
,('MakeUp for you','USA', 'Nowy York', 'Kings Avenue 33', '11-222', 'makeupforyou@mufy.com', '222333444')
,('Look good','Wielka Brytania', 'Londyn', 'Baker Street 29', '33-123', 'LookingGood@gmail.com', '321765089' )
;
PRINT 'Done.'

PRINT 'Adding some Resupplies ...'
INSERT INTO dbo.Resupplies VALUES
(3)
,(2)
;
PRINT 'Done.'

PRINT 'Adding some Resupplies Details ...'
INSERT INTO dbo.[Resupply Details] VALUES 
(1, 5, 100)
,(1, 2, 150)
,(1, 3, 50)
,(1, 8, 100)
,(2, 4, 50)
,(2, 1, 100)
,(2, 5, 120)
,(2, 6, 70)
;

PRINT 'Done.'

SET NOCOUNT OFF


GO
/* /FILL TABLES */
--------------------------------------------------------------------
