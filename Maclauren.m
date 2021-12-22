% Maclauren
n=9;
x=0.1;
expvalue=1.0;
curr=1.0;
for i=1:n
    curr= curr * x/i;
    expvalue(i+1)= expvalue(i)+curr;
end

truevalue= exp(0.1);
error= abs(truevalue-expvalue);
