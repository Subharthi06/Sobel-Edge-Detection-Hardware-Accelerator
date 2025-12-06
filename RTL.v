module sobel_filter();
    integer fd,code,i,j,k,l;
  	reg [31:0] MEM[0:99][0:87];
    reg [31:0] G1[0:2][0:2];
    reg [31:0] G2[0:2][0:2];
    reg signed[31:0] Gx[0:97][0:85];
    reg signed[31:0] Gy[0:97][0:85];
    reg signed[31:0] G[0:97][0:85];
  	reg [31:0] s;
    initial 
        begin
            //G1
            G1[0][0] = 1;
            G1[0][1] = 0;
            G1[0][2] = -1;
            
            G1[1][0] = 2;
            G1[1][1] = 0;
            G1[1][2] = -2;
            
            G1[2][0] = 1;
            G1[2][1] = 0;
            G1[2][2] = -1;
            
            //G2
            G2[0][0] = 1;
            G2[0][1] = 2;
            G2[0][2] = 1;
            
            G2[1][0] = 0;
            G2[1][1] = 0;
            G2[1][2] = 0;
            
            G2[2][0] = -1;
            G2[2][1] = -2;
            G2[2][2] = -1;
          
            //reading the grayscale matrix text
             fd = $fopen("grayscale_matrix.txt", "r");
                for(i=0; i<100; i++)
                  begin
                    for(j=0; j<88; j++)
                      begin
                        code = $fscanf(fd, "%d", s);
                        MEM[i][j] = s;
                      end
                  end
          
          		//displaying the grayscale matrix
              //for(i=0; i<100; i++)
                //begin
                  //for(j=0; j<88; j++)
                    //$write("%d ",MEM[i][j]); 
                  //$display(" ");
                //end
            
            	//Convolution for Gx & Gy
                for(i=0; i<98; i=i+1)
                      begin
                        for(j=0; j<86; j=j+1)
                          begin
                              Gx[i][j] = 0;
                              Gy[i][j] = 0;
                              for(k=0; k<3; k=k+1)
                                  begin
                                  for(l=0; l<3; l=l+1)
                                      begin
                                        Gx[i][j] = Gx[i][j] + (MEM[k+i][l+j]*G1[k][l]);
                                        Gy[i][j] = Gy[i][j] + (MEM[k+i][l+j]*G2[k][l]);
                                      end
                                  end 
                          end
                      end

            	//Sobel Matrix G
                for(i=0; i<98; i=i+1)
                      begin
                        for(j=0; j<86; j=j+1)
                              G[i][j] = $sqrt((Gx[i][j]*Gx[i][j]) + (Gy[i][j]*Gy[i][j]));
                      end

            	//Display Sobel Matrix
                for(i=0; i<98; i=i+1)
                      begin
                        for(j=0; j<86; j=j+1)
                          $write("%d ",G[i][j]);
                          $display(" ");
                      end 
                      $finish; 
                  end                   
endmodule
