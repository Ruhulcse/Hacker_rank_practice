select if(grade<8,NULL,Name),Grade,Marks from Students
inner join Grades
on Marks>=Min_Mark and Marks<=Max_Mark
group by 
Grade desc,Name,Marks asc
