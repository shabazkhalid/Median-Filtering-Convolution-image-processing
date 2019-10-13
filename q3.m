





A=imread('cman_small','pgm');
k=[1/9 1/9 1/9;1/9 1/9 1/9;1/9 1/9 1/9];
u=uint8(ans);



A=imread('cman_small','pgm');
k=[1 1 1;1 1 1;1 1 1];





//   convole 3x3 images and also sobel robert if we merge it into 3x3 mask


function nw = convee(A,k)
B=A;
for i=1 :size(A,1)
for j=1 :size(A,2)
    
    if i==1&&j==1
        A(i,j)=B(i,j)*k(2,2)+ B(i,j+1)*k(2,3)+ B(i+1,j)*k(3,2)+B(i+1,j+1)*k(3,3);
        
    else
        if i==1&&j>1&&j<128
        A(i,j)=B(i,j-1)*k(2,1)+B(i+1,j)*k(3,1)+B(i,j)*k(2,2)+ B(i,j+1)*k(2,3)+ B(i+1,j)*k(3,2)+B(i+1,j+1)*k(3,3) ;

        else
            if j==1&&i>1&&i<128
                A(i,j)= B(i-1,j+1)*k(1,3)+B(i-1,j)*k(1,2)+B(i,j)*k(2,2)+ B(i,j+1)*k(2,3)+ B(i+1,j)*k(3,2)+B(i+1,j+1)*k(3,3);
                
            else
                if i==128&&j>1&&j<128
                    A(i,j)=B(i-1,j-1)*k(1,1)+B(i,j-1)*k(2,1)+B(i,j)*k(2,2)+ B(i,j+1)*k(2,3)+ B(i-1,j)*k(1,2)+B(i-1,j+1)*k(1,3);
                else
                    if j==128&&i>1&&i<128
                        A(i,j)=B(i+1,j)*k(3,2)+B(i+1,j-1)*k(3,1)+B(i,j)*k(2,2)+ B(i-1,j)*k(1,2)+ B(i-1,j-1)*k(1,1)+B(i,j-1)*k(2,1);
                        
                    else
                        if i>1&&j>1&&i<128&&j<128
                        A(i,j)=B(i+1,j+1)*k(3,3)+B(i,j+1)*k(2,3)+B(i-1,j+1)*k(1,3)+B(i+1,j)*k(3,2)+B(i+1,j-1)*k(3,1)+B(i,j)*k(2,2)+ B(i-1,j)*k(1,2)+ B(i-1,j-1)*k(1,1)+B(i,j-1)*k(2,1);
                    
                        
                        end
                    end
                   
                
                
                end
                
                
            end
            
        end
    end

















//convole any type of mask with image .












                             function nw = convoleee(A, k)
							 

                                   [row, colum] = size(A);
    [m1, n1] = size(k);
	
    hhh = rot90(k, 2);
                         cntr = floor((size(hhh)+1)/2);
	
	
	 lft = cntr(2) - 1;
                          rght = n1 - cntr(2);
	
    top = cntr(1) - 1;
	
    btom = m1 - cntr(1);
	
                           Rep = zeros(row + top + btom, colum + lft + rght);
	
	
    for x = 1 + top : row + top
       
                                	for y = 1 + lft : colum + lft
         
 Rep(x,y) = A(x - top, y - lft);
       end
            end
    nw = zeros(row , colum);
    for x = 1 : row
    for y = 1 : colum
	
    for i = 1 : m1
    for j = 1 : n1
               ff = x - 1;
  gg = y -1;
    nw(x, y) = nw(x, y) + (Rep(i + ff, j + gg) * hhh(i, j));
          end
     




     end
   end
   end
    
    
   
    