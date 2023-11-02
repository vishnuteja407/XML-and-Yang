(: doc("Books.xml")/books/book[price<40]/title 


for $x in doc("Books.xml")/books/book
where $x/price<40
order by $x/title
return $x/title  



<ul>
{
for $x in doc("Books.xml")/books/book/title
order by $x
return <li>{data($x)}</li>
}
</ul>
 :)
 
 for $x in doc("Books.xml")/books/book
 return if($x/@category="XML") then <XMLBOOK>{upper-case($x/title)}</XMLBOOK>
 else <NONXML>{substring($x/title,1,4)}</NONXML>