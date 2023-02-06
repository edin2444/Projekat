use Autici
Create table Cars( 

Id int not null primary key identity(1,1), 

Manufacturer nvarchar(30), 

Model nvarchar(50), 

Heat_Level int, 

Top_Speed nvarchar(20), 

Acceleration_to_100kmh nvarchar(20), 

Acceleration_to_200kmh nvarchar(20), 

Handling nvarchar(20), 

Durability nvarchar(20), 

Strength nvarchar(20), 

) 

Insert into Cars values('Porsche','Cayman S',1,'283km/h','5.0s','10.0s','8.5','7.7','6.8') 

Insert into Cars values('BMW','M3 GTR',4,'245km/h','3.4s','6.8s','8.2','6.3','7.3') 

Insert into Cars values('Koenigsegg','One:1',4,'451km/h','UNKNOWN','UNKNOWN','7.4','5.2','6.3') 

Insert into Cars values('Nissan','GT-R (R34)',2,'315km/h','2.7s','5.4s','8.8','9.8','9.0') 

Insert into Cars values('Mercedes-Benz','Sl 65 AMG',2,'315km/h','3.6s','7.2s','6.2','6.8','7.7') 

Insert into Cars values('Lamborghini','Gallardo LP 570-4 Super Trofeo',2,'320km/h','3.4s','6.8s','7.8','5.4','6.5') 

Insert into Cars values('Lamborghini','Sesto Elemento',4,'348km/h','2.5s','5.0s','8.6','5.4','6.5') 

Insert into Cars values('McLaren','P1',4,'350km/h','2.7s','5.4s','9.0','5.2','6.3') 

Insert into Cars values('Mazda','RX-8(SE3P)',3,'241km/h','6.7s','13.4s','8.5','7.7','6.8') 

Insert into Cars values('SRT','Viper Time Attack',1,'311km/h','3.3s','6.6s','6.3','5.2','6.3') 

Insert into Cars values('Porsche','Carrera GT',2,'325km/h','3.6s','7.2s','8.9','7.8','7.2') 

Insert into Cars values('Porsche','918 Spyder',3,'340km/h','2.8s','5.6s','8.7','5.2','6.3') 

Insert into Cars values('McLaren','12C Spider',3,'328km/h','3.1s','6.2s','8.3','6.3','7.3') 

Insert into Cars values('McLaren','F1 LM',4,'362km/h','2.9s','5.8s','8.2','7.3','6.8') 

Insert into Cars values('Maserati','GranTurismo MC Stradale',1,'303km/h','4.3s','8.6s','6.4','5.7','6.7') 

Insert into Cars values('Lexus','LFA',3,'325km/h','3.7s','7.4s','7.7','7.3','6.8') 

Insert into Cars values('Lamborghini','Veneno',4,'356km/h','2.8s','4.6s','8.2','5.4','6.5') 

Insert into Cars values('Jaguar','C-X75 Prototype',4,'354km/h','3.4s','6.8s','8.8','5.2','6.3') 

Insert into Cars values('Ferrari','F12 Berlinetta',4,'340km/h','3.1s','6.2s','8.7','7.9','8.7') 

Insert into Cars values('Bugatti','Veyron 16.4 Super Sport',10,'415km/h','2.5s','5.0s','7.8','9.1','9.0') 
Select * from Cars

Create table Challenges(

ChallengeID int not null primary key identity(1,1),
ChallengeName nvarchar(30),
Description ntext,
Location nvarchar(30),
BountyReward nvarchar(30)
)

Insert into Challenges values('Tradin paint','Make contact with 10 cops during a chase','Rosewood Police Station','30.000')

Insert into Challenges values('Piggy bank','Achieve cost to state that is over than 40k','Point Candem','50.000')

Insert into Challenges values('Reckless guy','Get 4 infractions(extreme speeding,hit and run,cost to state...) during a chase','Gray Point','76.000')

Insert into Challenges values('Spiky target','Avoid 4 spike strips during a chase','Rosewood Country Clup','100.000')

Insert into Challenges values('Cop that!','Immobilise 25 cops during a single chase','Downtown Rocport','200.000')

Select * from Challenges
drop table Challenges
Create table RapSheet(
RapSheetId int not null primary key identity(1,1),
Name nvarchar(30),
CostToState nvarchar(40),
CarsImpounded int,
CarsMonitored int,
Bounty nvarchar(100),
FinesDue nvarchar(30),
PursuitsEvaded int,
TimesBusted varchar(5)
)
Insert into RapSheet values('Ed','500.000.000',0,20,'10.000.000','1.000.000.000',34,'1')

Insert into RapSheet values('Razor','250.000.000',1,15,'5.000.000','500.000.000',30,'0')

Insert into RapSheet values('MT','100.000.000',2,30,'4.000.000','300.000.000',20,'3')

Insert into RapSheet values('JR','200.000.000',3,40,'500.000','450.000.000',31,'3')

Insert into RapSheet values('Boom','300.000.000',0,50,'2.000.000','700.000.000',40,'0')

Insert into RapSheet values('LilWolf','500.000',4,30,'1.000.000','100.000',10,'2')

Insert into RapSheet values('Kaze','800.000.000',0,3,'3.000.000','300.000.000',100,'0')

Select * from RapSheet