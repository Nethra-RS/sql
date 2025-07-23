with duplicates as (select id, ROW_NUMBER() over(partition by email order by id) as rn from Person) 
delete from Person where id in (select id from duplicates where rn>1);
