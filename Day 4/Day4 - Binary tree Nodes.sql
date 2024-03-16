select B1.N, 
	(CASE when P is NULL then "Root" 
		  when (select count(*) from BST as B2 where B2.P = B1.N) > 0 then"Inner"                   
		  else "Leaf" END) 
	from BST as B1 order by B1.N;
                