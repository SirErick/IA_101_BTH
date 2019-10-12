x_size= 50;
y_size= 50;
m=60;
X=zeros(m,x_size*y_size);
for i=1:1:m
path=strcat(int2str(i),'.jpg');
im=imread(path);
im=rgb2gray(im);
im=imresize(im,[x_size y_size]);
X(i,:)=im(:)'; %se convierte en vector columna y se transpone
    
end

%Y= [1 0 0; 1 0 0; 0 1 0; 0 1 0; 0 0 1; 0 0 1];

Y(1:20,:)=repmat([1 0 0], 20,1);
Y(21:40,:)=repmat([0 1 0], 20,1);
Y(41:60,:)=repmat([0 0 1], 20,1);


path=strcat(int2str(uint8 (double (rand()*60))),'.jpg');
im2= imread(path);
figure(1)
imshow(im2)
im2= rgb2gray(im2);
im2=imresize(im2,[x_size y_size]);
im2=im2(:)';

pred=nn_pista4(double(im2))