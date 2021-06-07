%Funcion para leer B en español
clear all
clc
a=280+1;%valor inical +1  
b=300+1;%valor final +1
palabras=b-a; %cuantas palabras serán      %verbo     sustantivo   adverbio     adjetivo
errores=zeros(1,palabras);
%guardar=zeros(1,70);%errores guardar
i=1;
%m=1;

while i<=palabras 
    num=floor(a+(b-a).*rand(1));
    x=1;
     while x<=palabras 
         if  num==errores(x)
             num=floor(a+(b-a).*rand(1));
             x=1;
         else
             x=x+1;
         end
         
     end 
 errores(i)=num;

    [raw]=B(num)
    [raw]=A(num);
    out=char(raw);
    variable=input('write in english:  ');
    tf = strcmp(variable,out);
    
    if tf ~= 1
        display('    repasalo :/')
        display(out)
        errores(i)=0;
        i=i;
        %guardar(m)=num;
        %m=m+1;
    elseif tf == 1
        display('    exelente :)')
        i=i+1;
    else
        display('    algo salio mal, corre de nuevo')
        i=i+1;
        display(out)
    end
    
end
%%
%for meaning in english 
clear all
clc
a=265+1;%valor inical +1  
b=280+1;%valor final +1
palabras=b-a; %cuantas palabras serán      %verbo     sustantivo   adverbio     adjetivo
errores=zeros(1,palabras);
%guardar=zeros(1,70);%errores guardar
i=1;
%m=1;

while i<=palabras 
    num=floor(a+(b-a).*rand(1));
    x=1;
     while x<=palabras 
         if  num==errores(x)
             num=floor(a+(b-a).*rand(1));
             x=1;
         else
             x=x+1;
         end
         
     end 
 errores(i)=num;

    [raw]=A(num)
    [raw]=B(num);
    out=char(raw);
    variable=input('write in SPANISH:  ');
    tf = strcmp(variable,out);
    
    if tf ~= 1
        display('    repasalo :/')
        display(out)
        errores(i)=0;
        i=i;
        %guardar(m)=num;
        %m=m+1;
    elseif tf == 1
        display('    exelente :)')
        i=i+1;
    else
        display('    algo salio mal, corre de nuevo')
        i=i+1;
        display(out)
    end
    
end

%%
%repaso de todo C de español

clc
errores=zeros(1,150);%%si se borra el for
i=43;%%si se borra el for
for num=1:1:150 %%si se borra el for
    [raw]=B(num)%%repasando de español a ingles
    [raw]=A(num);
    out=char(raw);
    variable=input('write in english:  ');
    tf = strcmp(variable,out);
    
    if tf ~= 1
        display('    repasalo :/')
        display(out)
        errores(i)=num;
        i=i+1;
    elseif tf == 1
        display('    exelente :)')
    else
        display('    algo salio mal, corre de nuevo')
        display(out)
    end
end