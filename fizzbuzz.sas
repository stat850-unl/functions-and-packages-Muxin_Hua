proc iml;

start fizzbuzz(x);
/* FizzBuzz code goes here */
     if mod(x,15)=0 then;
		do;
			return('FizzBuzz');
		end;
	else if mod(x,5)=0 then;
		do;
			return('Buzz');
		end;
	else if mod(x,3)=0 then;
		do;
			return('Fizz');
		end;
	else;
		do;
			temp=char(x,2,1);
			y=temp[1,1];
			return(y);
		end;
finish;

x1 = repeat(0, 20); /* initialize x1 */
fb1 = repeat("        ", 20);
do i = 1 to 20;
  x1[i] = i;
  fb1[i] = fizzbuzz(x1[i]);
end;

x2 = repeat(0, 10); /* initialize x2 */
fb2 = repeat("xxxxxxxx", 10); /* initialize fb2 */
do i = 1 to 10;
  x2[i] = rand("Integer", 1, 100);
  fb2[i] = fizzbuzz(x2[i]);
end;

print x1 fb1, x2 fb2;

quit;
