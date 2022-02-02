--Listoni maksimumin e sasisë së produkteve
Select max(Sasia) as max_i_sasise
from Produkti

--Listoni Minimumin e sasise se produkteve te porositura 
Select min(Sasia) as min_i_sasise
from Produkti

--Shfaqeni vendbanimin e klienteve (pa perseritjen e tyre )
Select distinct Vendbanimi as vendbanimi
from Klienti

--Selektoni klientet sipas emrit dhe mbiemrit si dhe produktet qe ata kane porositur
Select  p.PorosiaID , k.Emri ,k.Mbiemri , pr.EmriProduktit
from Klienti k , Porosia p , Produkti pr 
where k.Id=p.Klienti  and p.Produkti=pr.ID

--5.Selektoni te gjitha pororsite e bera nga klienti Albin Krasniqi
Select k.Emri ,k.Mbiemri , pr.EmriProduktit ,P.Data
From Klienti k, Porosia p, Produkti pr
where  k.Id=p.Klienti  and p.Produkti=pr.ID and k.Emri='Albin' and k.Mbiemri='Krasniqi'

--6.Numeroni klientet ne baze  te vendbanimit 
Select k.Vendbanimi , count(*)[Klientet_Sipas_Vendbanimit]
From Klienti k
group by k.Vendbanimi
order by [Klientet_Sipas_Vendbanimit] desc

--7.Listoni mesataren e sasise se porosive te bera
Select avg(Sasia) as mesatarja_e_sasise
From Porosia

--8. Shfaqni shumen e sasive te porosive te bera per secilin klient 
Select  k.Emri,k.Mbiemri ,p.Klienti ,p.Sasia , count(*)[Shuma_e_porosive]
From Klienti k , Porosia p
group by p.Sasia
order by [Shuma_e_porosive] 

--9.Te tregoni  numrin e porosive te bera per secilin klient 
Select distinct k.Emrir ,k.Mbiemri ,k.ID ,p.Sasia
From Klienti k, Porosia p
where k.id =p.Klienti


--