prompt='Enter Corridor (N/W/E/S) :';

        C = input(prompt,'s');

        switch(C)
            case 'N'
                    NRef = imread('D:\Program Files\Polyspace\R2019a\bin\North\NRef.png');
                    NRefG=rgb2gray(NRef);
                    figure(1);
                    imshow(NRefG);
                    title('Reference Image');
                    
                    disp('Select the current image:');

                    [filename,filepath]=uigetfile({'*.png'},'Select and image');
                    selectedImage = imread(strcat(filepath, filename));
                    I=rgb2gray(selectedImage);

                    X1=edge(NRefG,'canny');
                    X2=edge(I,'canny');

                    figure(2);
                    subplot(1,2,1);
                    imshow(X1);
                    title('Canny Edge Detection on Reference image');
                    subplot(1,2,2);
                    imshow(X2);
                    title('Canny Edge Detection on Current image');
                    now1=sum(sum(X1));
                    now2=sum(sum(X2));

                    result=(now1/now2)*100;

                    disp('Similarity: ');
                    disp(result);
                    
                    if((result>80)&&(result<100))
                        time=20;
                    else if(result>70)
                            time=40;
                        else time=60;
                        end
                    end
                    disp('Open time: ');
                    display(time);
            case 'W'
                    WRef = imread('D:\Program Files\Polyspace\R2019a\bin\West\WRef.jpg');
                    WRefG=rgb2gray(WRef);
                    figure(1);
                    imshow(WRefG);
                    title('Reference Image');
                    
                     disp('Select the current image:');

                    [filename,filepath]=uigetfile({'*.jpg'},'Select and image');
                    selectedImage = imread(strcat(filepath, filename));
                    I=rgb2gray(selectedImage);
                    
                    X1=edge(WRefG,'canny');
                    X2=edge(I,'canny');

                    figure(2);
                    subplot(1,2,1);
                    imshow(X1);
                    title('Canny Edge Detection on Reference image');
                    subplot(1,2,2);
                    imshow(X2);
                    title('Canny Edge Detection on Current image');
                    now1=sum(sum(X1));
                    now2=sum(sum(X2));

                    result=(now1/now2)*100;
                    disp('Similarity: ');
                    disp(result);
                    
                     if((result>80)&&(result<100))
                        time=20;
                    else if(result>70)
                            time=40;
                        else time=60;
                        end
                    end
                    disp('Open time: ');
                    display(time);
            case 'S'
                    SRef = imread('D:\Program Files\Polyspace\R2019a\bin\South\SRef.jpg');
                    SRefG=rgb2gray(SRef);
                    figure(1);
                    imshow(SRefG);
                    title('Reference Image');
                    
                     disp('Select the current image:');

                    [filename,filepath]=uigetfile({'*.jpg'},'Select and image');
                    selectedImage = imread(strcat(filepath, filename));
                    I=rgb2gray(selectedImage);
                   

                    X1=edge(SRefG,'canny');
                    X2=edge(I,'canny');

                    figure(2);
                    subplot(1,2,1);
                    imshow(X1);
                    title('Canny Edge Detection on Reference image');
                    subplot(1,2,2);
                    imshow(X2);
                    title('Canny Edge Detection on Current image');
                    now1=sum(sum(X1));
                    now2=sum(sum(X2));

                    result=(now1/now2)*100;
                    disp('Similarity: ');
                    disp(result);
                    
                     if((result>80)&&(result<100))
                        time=20;
                    else if(result>70)
                            time=40;
                        else time=60;
                        end
                    end
                    disp('Open time: ');
                    display(time);
            case 'E'
                    ERef = imread('D:\Program Files\Polyspace\R2019a\bin\East\ERef.jpg');
                    ERefG=rgb2gray(ERef);
                    figure(1);
                    imshow(ERefG);
                    title('Reference Image');
                    
                     disp('Select the current image:');

                    [filename,filepath]=uigetfile({'*.jpg'},'Select and image');
                    selectedImage = imread(strcat(filepath, filename));
                    I=rgb2gray(selectedImage);
                  

                    X1=edge(ERefG,'canny');
                    X2=edge(I,'canny');

                    figure(2);
                    subplot(1,2,1);
                    title('Canny Edge Detection on Reference image'); 
                    imshow(X1);
                    subplot(1,2,2);
                    imshow(X2);
                    title('Canny Edge Detection on Current image');
                    now1=sum(sum(X1));
                    now2=sum(sum(X2));

                    result=(now1/now2)*100;
                    disp('Similarity: ');
                    disp(result);
                    
                     if((result>80)&&(result<100))
                        time=20;
                    else if(result>70)
                            time=40;
                        else time=60;
                        end
                    end
                    disp('Open time: ');
                    display(time);
            otherwise
                disp('other value');
        end

       

