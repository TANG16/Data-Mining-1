%%precision and recall

testLabel1_output= xlsread('5th.xlsx');
testLabel1=testLabel5;
[s1 s2]=size(testLabel1);
tp0=0;fp0=0;fn0=0; tp1=0;fp1=0;fn1=0; tp2=0;fp2=0;fn2=0; tp3=0;fp3=0;fn3=0; tp4=0;fp4=0;fn4=0;
tp5=0;fp5=0;fn5=0; tp6=0;fp6=0;fn6=0; tp7=0;fp7=0;fn7=0; tp8=0;fp8=0;fn8=0; tp9=0;fp9=0;fn9=0;
for i = 1:s1
    
    if(testLabel1(i) == 0)
        if(testLabel1_output(i)==0)
           tp0=tp0+1; 
        elseif(testLabel1_output(i)~=0)
           fn0=fn0+1; 
           switch(testLabel1_output(i))
               case 1
                   fp1=fp1+1;
               case 2
                   fp2=fp2+1;
               case 3
                   fp3=fp3+1;
               case 4
                   fp4=fp4+1;
               case 5
                   fp5=fp5+1;
               case 6
                   fp6=fp6+1;
               case 7
                   fp7=fp7+1;
               case 8
                   fp8=fp8+1;
               case 9
                   fp9=fp9+1;
           end              
        end        
    end 
    
    if(testLabel1(i) == 1)
        if(testLabel1_output(i)==1)
            tp1=tp1+1; 
        elseif(testLabel1_output(i)~=1)
            fn1=fn1+1; 
            switch(testLabel1_output(i))
                case 0
                    fp0=fp0+1;
                case 2
                    fp2=fp2+1;
                case 3
                    fp3=fp3+1;
                case 4
                    fp4=fp4+1;
                case 5
                    fp5=fp5+1;
                case 6
                    fp6=fp6+1;
                case 7
                    fp7=fp7+1;
                case 8
                    fp8=fp8+1;
                case 9
                    fp9=fp9+1;
           end              
        end        
    end
    
    if(testLabel1(i) == 2)
        if(testLabel1_output(i)==2)
            tp2=tp2+1; 
        elseif(testLabel1_output(i)~=2)
            fn2=fn2+1; 
            switch(testLabel1_output(i))
                case 0
                    fp0=fp0+1;
                case 1
                    fp1=fp1+1;
                case 3
                    fp3=fp3+1;
                case 4
                    fp4=fp4+1;
                case 5
                    fp5=fp5+1;
                case 6
                    fp6=fp6+1;
                case 7
                    fp7=fp7+1;
                case 8
                    fp8=fp8+1;
                case 9
                    fp9=fp9+1;
           end              
        end        
    end
    
    if(testLabel1(i) == 3)
        if(testLabel1_output(i)==3)
            tp3=tp3+1; 
        elseif(testLabel1_output(i)~=3)
            fn3=fn3+1; 
            switch(testLabel1_output(i))
                case 0
                    fp0=fp0+1;
                case 1
                    fp1=fp1+1;
                case 2
                    fp2=fp2+1;
                case 4
                    fp4=fp4+1;
                case 5
                    fp5=fp5+1;
                case 6
                    fp6=fp6+1;
                case 7
                    fp7=fp7+1;
                case 8
                    fp8=fp8+1;
                case 9
                    fp9=fp9+1;
           end              
        end        
    end
    
    if(testLabel1(i) == 4)
        if(testLabel1_output(i)==4)
            tp4=tp4+1; 
        elseif(testLabel1_output(i)~=4)
            fn4=fn4+1; 
            switch(testLabel1_output(i))
                case 0
                    fp0=fp0+1;
                case 1
                    fp1=fp1+1;
                case 2
                    fp2=fp2+1;
                case 3
                    fp3=fp3+1;
                case 5
                    fp5=fp5+1;
                case 6
                    fp6=fp6+1;
                case 7
                    fp7=fp7+1;
                case 8
                    fp8=fp8+1;
                case 9
                    fp9=fp9+1;
           end              
        end        
    end
    
    if(testLabel1(i) == 5)
        if(testLabel1_output(i)==5)
            tp5=tp5+1; 
        elseif(testLabel1_output(i)~=5)
            fn5=fn5+1; 
            switch(testLabel1_output(i))
                case 0
                    fp0=fp0+1;
                case 1
                    fp1=fp1+1;
                case 2
                    fp2=fp2+1;
                case 3
                    fp3=fp3+1;
                case 4
                    fp4=fp4+1;
                case 6
                    fp6=fp6+1;
                case 7
                    fp7=fp7+1;
                case 8
                    fp8=fp8+1;
                case 9
                    fp9=fp9+1;
           end              
        end        
    end
    
    if(testLabel1(i) == 6)
        if(testLabel1_output(i)==6)
            tp6=tp6+1; 
        elseif(testLabel1_output(i)~=6)
            fn6=fn6+1; 
            switch(testLabel1_output(i))
                case 0
                    fp0=fp0+1;
                case 1
                    fp1=fp1+1;
                case 2
                    fp2=fp2+1;
                case 3
                    fp3=fp3+1;
                case 4
                    fp4=fp4+1;
                case 5
                    fp5=fp5+1;
                case 7
                    fp7=fp7+1;
                case 8
                    fp8=fp8+1;
                case 9
                    fp9=fp9+1;
           end              
        end        
    end
    
    if(testLabel1(i) == 7)
        if(testLabel1_output(i)==7)
            tp7=tp7+1; 
        elseif(testLabel1_output(i)~=7)
            fn7=fn7+1; 
            switch(testLabel1_output(i))
                case 0
                    fp0=fp0+1;
                case 1
                    fp1=fp1+1;
                case 2
                    fp2=fp2+1;
                case 3
                    fp3=fp3+1;
                case 4
                    fp4=fp4+1;
                case 5
                    fp5=fp5+1;
                case 6
                    fp6=fp6+1;
                case 8
                    fp8=fp8+1;
                case 9
                    fp9=fp9+1;
           end              
        end        
    end
    
    if(testLabel1(i) == 8)
        if(testLabel1_output(i)==8)
            tp8=tp8+1; 
        elseif(testLabel1_output(i)~=8)
            fn8=fn8+1; 
            switch(testLabel1_output(i))
                case 0
                    fp0=fp0+1;
                case 1
                    fp1=fp1+1;
                case 2
                    fp2=fp2+1;
                case 3
                    fp3=fp3+1;
                case 4
                    fp4=fp4+1;
                case 5
                    fp5=fp5+1;
                case 6
                    fp6=fp6+1;
                case 7
                    fp7=fp7+1;
                case 9
                    fp9=fp9+1;
           end              
        end        
    end
    
    if(testLabel1(i) == 9)
        if(testLabel1_output(i)==9)
            tp9=tp9+1; 
        elseif(testLabel1_output(i)~=9)
            fn9=fn9+1; 
            switch(testLabel1_output(i))
                case 0
                    fp0=fp0+1;
                case 1
                    fp1=fp1+1;
                case 2
                    fp2=fp2+1;
                case 3
                    fp3=fp3+1;
                case 4
                    fp4=fp4+1;
                case 5
                    fp5=fp5+1;
                case 6
                    fp6=fp6+1;
                case 7
                    fp7=fp7+1;
                case 8
                    fp8=fp8+1;
           end              
        end        
    end
    
end

precision0=tp0/(tp0+fp0);
precision1=tp1/(tp1+fp1);
precision2=tp2/(tp2+fp2);
precision3=tp3/(tp3+fp3);
precision4=tp4/(tp4+fp4);
precision5=tp5/(tp5+fp5);
precision6=tp6/(tp6+fp6);
precision7=tp7/(tp7+fp7);
precision8=tp8/(tp8+fp8);
precision9=tp9/(tp9+fp9);


recall0=tp0/(tp0+fn0);
recall1=tp1/(tp1+fn1);
recall2=tp2/(tp2+fn2);
recall3=tp3/(tp3+fn3);
recall4=tp4/(tp4+fn4);
recall5=tp5/(tp5+fn5);
recall6=tp6/(tp6+fn6);
recall7=tp7/(tp7+fn7);
recall8=tp8/(tp8+fn8);
recall9=tp9/(tp9+fn9);

f0=2*(precision0 * recall0)/(precision0+recall0);
f1=2*(precision1 * recall1)/(precision1+recall1);
f2=2*(precision2 * recall2)/(precision2+recall2);
f3=2*(precision3 * recall3)/(precision3+recall3);
f4=2*(precision4 * recall4)/(precision4+recall4);
f5=2*(precision5 * recall5)/(precision5+recall5);
f6=2*(precision6 * recall6)/(precision6+recall6);
f7=2*(precision7 * recall7)/(precision7+recall7);
f8=2*(precision8 * recall8)/(precision8+recall8);
f9=2*(precision9 * recall9)/(precision9+recall9);
