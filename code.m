clear all; 
close all; 
clc

faceRecognizer('testImage','jpg')

function faceRecognizer(arg1,arg2)

figure(1);

aamir_1 = imresize(double(rgb2gray(imread('aamir_1','jpeg'))),[60 40]);
aamir_2 = imresize(double(rgb2gray(imread('aamir_2','jpeg'))),[60 40]);
aamir_3 = imresize(double(rgb2gray(imread('aamir_3','jpeg'))),[60 40]);
aamir_4 = imresize(double(rgb2gray(imread('aamir_4','jpeg'))),[60 40]);

emma_1 = imresize(double(rgb2gray(imread('emma_1','jpeg'))),[60 40]);
emma_2 = imresize(double(rgb2gray(imread('emma_2','jpeg'))),[60 40]);
emma_3 = imresize(double(rgb2gray(imread('emma_3','jpeg'))),[60 40]);
emma_4 = imresize(double(rgb2gray(imread('emma_4','jpeg'))),[60 40]);

nawaz_1 = imresize(double(rgb2gray(imread('nawaz_1','jpeg'))),[60 40]);
nawaz_2 = imresize(double(rgb2gray(imread('nawaz_2','jpeg'))),[60 40]);
nawaz_3 = imresize(double(rgb2gray(imread('nawaz_3','jpeg'))),[60 40]);
nawaz_4 = imresize(double(rgb2gray(imread('nawaz_4','jpeg'))),[60 40]);


pc_1 = imresize(double(rgb2gray(imread('pc_1','jpeg'))),[60 40]);
pc_2 = imresize(double(rgb2gray(imread('pc_2','jpeg'))),[60 40]);
pc_3 = imresize(double(rgb2gray(imread('pc_3','jpeg'))),[60 40]);
pc_4 = imresize(double(rgb2gray(imread('pc_4','jpeg'))),[60 40]);

srk_1 = imresize(double(rgb2gray(imread('srk_1','jpeg'))),[60 40]);
srk_2 = imresize(double(rgb2gray(imread('srk_2','jpeg'))),[60 40]);
srk_3 = imresize(double(rgb2gray(imread('srk_3','jpeg'))),[60 40]);
srk_4 = imresize(double(rgb2gray(imread('srk_4','jpeg'))),[60 40]);



subplot(5,4,1), pcolor(flipud(aamir_1)), shading interp, colormap(gray), set(gca,'Xtick',[],'Ytick',[]);
subplot(5,4,2), pcolor(flipud(aamir_2)), shading interp, colormap(gray), set(gca,'Xtick',[],'Ytick',[]);
subplot(5,4,3), pcolor(flipud(aamir_3)), shading interp, colormap(gray), set(gca,'Xtick',[],'Ytick',[]);
subplot(5,4,4), pcolor(flipud(aamir_4)), shading interp, colormap(gray), set(gca,'Xtick',[],'Ytick',[]);

subplot(5,4,5), pcolor(flipud(emma_1)), shading interp, colormap(gray), set(gca,'Xtick',[],'Ytick',[]);
subplot(5,4,6), pcolor(flipud(emma_2)), shading interp, colormap(gray), set(gca,'Xtick',[],'Ytick',[]);
subplot(5,4,7), pcolor(flipud(emma_3)), shading interp, colormap(gray), set(gca,'Xtick',[],'Ytick',[]);
subplot(5,4,8), pcolor(flipud(emma_4)), shading interp, colormap(gray), set(gca,'Xtick',[],'Ytick',[]);

subplot(5,4,9), pcolor(flipud(srk_1)), shading interp, colormap(gray), set(gca,'Xtick',[],'Ytick',[]);
subplot(5,4,10), pcolor(flipud(srk_2)), shading interp, colormap(gray), set(gca,'Xtick',[],'Ytick',[]);
subplot(5,4,11), pcolor(flipud(srk_3)), shading interp, colormap(gray), set(gca,'Xtick',[],'Ytick',[]);
subplot(5,4,12), pcolor(flipud(srk_4)), shading interp, colormap(gray), set(gca,'Xtick',[],'Ytick',[]);

subplot(5,4,13), pcolor(flipud(nawaz_1)), shading interp, colormap(gray), set(gca,'Xtick',[],'Ytick',[]);
subplot(5,4,14), pcolor(flipud(nawaz_2)), shading interp, colormap(gray), set(gca,'Xtick',[],'Ytick',[]);
subplot(5,4,15), pcolor(flipud(nawaz_3)), shading interp, colormap(gray), set(gca,'Xtick',[],'Ytick',[]);
subplot(5,4,16), pcolor(flipud(nawaz_4)), shading interp, colormap(gray), set(gca,'Xtick',[],'Ytick',[]);

subplot(5,4,17), pcolor(flipud(pc_1)), shading interp, colormap(gray), set(gca,'Xtick',[],'Ytick',[]);
subplot(5,4,18), pcolor(flipud(pc_2)), shading interp, colormap(gray), set(gca,'Xtick',[],'Ytick',[]);
subplot(5,4,19), pcolor(flipud(pc_3)), shading interp, colormap(gray), set(gca,'Xtick',[],'Ytick',[]);
subplot(5,4,20), pcolor(flipud(pc_4)), shading interp, colormap(gray), set(gca,'Xtick',[],'Ytick',[]);


figure(2); %Average Faces

Averageaamir = (aamir_1+aamir_2+aamir_3+aamir_4)/4;
Averageemma = (emma_1+emma_2+emma_3+emma_4)/4;
Averagesrk = (srk_1+srk_2+srk_3+srk_4)/4;
Averagenawaz = (nawaz_1+nawaz_2+nawaz_3+nawaz_4)/4;
Averagepc = (pc_1+pc_2+pc_3+pc_4)/4;


subplot(1,5,1), pcolor(flipud(Averageaamir)), shading interp, colormap(gray), set(gca,'Xtick',[],'Ytick',[]);
subplot(1,5,2), pcolor(flipud(Averageemma)), shading interp, colormap(gray), set(gca,'Xtick',[],'Ytick',[]);
subplot(1,5,3), pcolor(flipud(Averagesrk)), shading interp, colormap(gray), set(gca,'Xtick',[],'Ytick',[]);
subplot(1,5,4), pcolor(flipud(Averagenawaz)), shading interp, colormap(gray), set(gca,'Xtick',[],'Ytick',[]);
subplot(1,5,5), pcolor(flipud(Averagepc)), shading interp, colormap(gray), set(gca,'Xtick',[],'Ytick',[]);

%D is the Data matrix
D = [reshape(aamir_1,1,60*40)
    reshape(aamir_2,1,60*40)
    reshape(aamir_3,1,60*40)
    reshape(aamir_4,1,60*40)
    reshape(emma_1,1,60*40)
    reshape(emma_2,1,60*40)
    reshape(emma_3,1,60*40)
    reshape(emma_4,1,60*40)
    reshape(srk_1,1,60*40)
    reshape(srk_2,1,60*40)
    reshape(srk_3,1,60*40)
    reshape(srk_4,1,60*40)
    reshape(nawaz_1,1,60*40)
    reshape(nawaz_2,1,60*40)
    reshape(nawaz_3,1,60*40)
    reshape(nawaz_4,1,60*40)
    reshape(pc_1,1,60*40)
    reshape(pc_2,1,60*40)
    reshape(pc_3,1,60*40)
    reshape(pc_4,1,60*40)];

A = (D')*(D); %A is the correlation matrix
size(A)

[V,D] = eigs(A,20,'lm');  % 20 largest values have been taken

figure(3);
subplot(2,3,1), face1=reshape(V(:,1),60,40); pcolor(flipud(face1)), shading interp, colormap(gray), set(gca,'Xtick',[],'Ytick',[]);
subplot(2,3,2), face1=reshape(V(:,2),60,40); pcolor(flipud(face1)), shading interp, colormap(gray), set(gca,'Xtick',[],'Ytick',[]);
subplot(2,3,3), face1=reshape(V(:,3),60,40); pcolor(flipud(face1)), shading interp, colormap(gray), set(gca,'Xtick',[],'Ytick',[]);
subplot(2,3,4), face1=reshape(V(:,4),60,40); pcolor(flipud(face1)), shading interp, colormap(gray), set(gca,'Xtick',[],'Ytick',[]);
subplot(2,3,5), face1=reshape(V(:,5),60,40); pcolor(flipud(face1)), shading interp, colormap(gray), set(gca,'Xtick',[],'Ytick',[]);


figure(4);
subplot(1,1,1), semilogy(diag(D), 'ko', 'Linewidth',[2])
set(gca,'Fontsize',[14])

figure(5);
vecaamir = reshape(Averageaamir,1,60*40);
vecemma = reshape(Averageemma,1,60*40);
vecsrk = reshape(Averagesrk,1,60*40);
vecnawaz = reshape(Averagenawaz,1,60*40);
vecpc = reshape(Averagepc,1,60*40);

projaamir = vecaamir*V;
projemma = vecemma*V;
projsrk = vecsrk*V; 
projnawaz = vecnawaz*V;
projpc = vecpc*V;

 subplot(2,3,1), bar(projaamir(2:20)), set(gca, 'Xlim',[0,20],'Ylim',[-2000,2000],'Xtick',[],'Ytick',[])
 text(12,-1700, 'aamir','Fontsize',[15])
 subplot(2,3,2), bar(projemma(2:20)), set(gca, 'Xlim',[0,20],'Ylim',[-2000,2000],'Xtick',[],'Ytick',[])
 text(12,-1700, 'emma','Fontsize',[15])
 subplot(2,3,3), bar(projnawaz(2:20)), set(gca, 'Xlim',[0,20],'Ylim',[-2000,2000],'Xtick',[],'Ytick',[])
 text(12,-1700, 'nawaz','Fontsize',[15])
 subplot(2,3,4), bar(projpc(2:20)), set(gca, 'Xlim',[0,20],'Ylim',[-2000,2000],'Xtick',[],'Ytick',[])
 text(12,-1700, 'pc','Fontsize',[15])
 subplot(2,3,5), bar(projsrk(2:20)), set(gca, 'Xlim',[0,20],'Ylim',[-2000,2000],'Xtick',[],'Ytick',[])
 text(12,-1700, 'srk','Fontsize',[15])
 

%testing
 
   extension = arg2;
   if (extension == 'jpg')
       T1 = imresize( double( rgb2gray( imread(arg1,'jpg'))),[60 40]);
   elseif (extension == 'bmp')
       T1 = imresize( double(( imread(arg1,'bmp'))),[60 40]);
   else
        disp('Wrong file extension: should be jpg or bmp')
        return
   end

 vec1 = reshape(T1,1,60*40);
 projTest = vec1*V;
 recon1 = V*projTest' ; 
 rec1=reshape(recon1,60,40);

 figure(6)
 subplot(1,2,1), pcolor(flipud(rec1)), shading interp, colormap(gray), set(gca,'Xtick',[],'Ytick',[]);
 subplot(1,2,2), bar(projTest(2:20)), set(gca, 'Xlim',[0,20],'Ylim',[-2000,2000],'Xtick',[],'Ytick',[])
 text(12,-1700, arg1,'Fontsize',[15])


 winneraamir = sum(abs(projaamir - projTest));
 winneremma = sum(abs(projemma - projTest));
 winnernawaz = sum(abs(projnawaz - projTest));
 winnerpc = sum(abs(projpc - projTest));
 winnersrk = sum(abs(projsrk - projTest));

 winnersVector = [winneraamir winneremma winnernawaz winnerpc winnersrk];
 
 figure(7);
 subplot(1,1,1), bar(winnersVector), set(gca,'xticklabel',{'aamir','emma','nawaz','pc','srk'});
 winnerOfTest = min(winnersVector);

if (winnerOfTest == winneraamir)
    disp('Winner is aamir');
elseif (winnerOfTest == winneremma)
    disp('Winner is emma');
elseif (winnerOfTest == winnernawaz)
    disp('Winner is nawaz');
elseif (winnerOfTest == winnerpc)
    disp('Winner is pc');
else
    disp('Winner is srk');
end

end
