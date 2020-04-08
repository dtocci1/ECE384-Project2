%% ECE 384 - Project 5.2
%% Tyler Botelho, Lewis Brum, Matt LaVoie, Dylan Tocci
clear;clc;


% 1. Generate sequences, at least 10000 points long, of the following two
% random variables:

% (a) A uniform random variable X1 in the range of [0 3]

    X1 = unifrnd(0,3,[1 10000]);
    X1TP = unifpdf(0:3,0,3); % Calculate X1 Theoretical PDF
    
% (b) A uniform random variable X2 in the range of [0 5].
    
    X2 = unifrnd(0,5,[1 10000]);
    X2TP = unifpdf(0:5,0,5); % Calculate X2 Theoretical PDF
    
% 2. Obtain a new random variable as a sum: Y = X1 + X2.

    Y = X1+X2; 

% 3. Measure the PDFs of X1, X2 and Y .

    [PDX1,CDX1,pX1Range, cX1Range] = PdfCdf(X1); % Calculate X1 PDF
    [PDX2,CDX2,pX2Range, cX2Range] = PdfCdf(X2); % Calculate X2 PDF
    [PDY,CDY,pYRange, cYRange] = PdfCdf(Y); % Calculate Y PDF
    YTP = conv(X1TP,X2TP); % Calculate Y Theoretical PDF
    
    ylim([0 1]);
    figure(1) % X1 PDF and Theoretical PDF
    subplot(2,1,1)
    plot(PDX1);
    ylim([0 1]);
    subplot(2,1,2)
    plot(X1TP);
    ylim([0 1]);
    
    figure(2) % X2 PDF and Theoretical PDF
    subplot(2,1,1)
    plot(PDX2);
    ylim([0 1]);
    subplot(2,1,2)
    plot(X2TP);
    ylim([0 1]);
    
    figure(3) % Y PDF and Theoretical PDF
    subplot(2,1,1)
    ylim([0 1]);
    plot(PDY);
    subplot(2,1,2)
    plot(YTP);
    ylim([0 1]);
    
% 4. Plot the measured PDFs along with the corresponding theoretical PDFs.
% Compare and comment on the results.


% OLD MATLAB CODE 
% rangeA = -2;
% rangeB = 5;
% XU = -2:1:5;
% ConURV = unifrnd(rangeA,rangeB,size);
% [UniPDF,UniCDF,UpRange,UcRange] = PdfCdf(ConURV);
% yup = unifpdf(XU,rangeA,rangeB);
% yuc = unifcdf(XU,rangeA,rangeB);
% 
% figure(4);
% sgtitle('Uniform Distribution');
% subplot(2,2,1)
% plot(UpRange, UniPDF);
% title('Random Uniform PDF')
% xlabel('n');
% ylabel('p');
% ylim([-1 1.5]);
% subplot(2,2,2);
% plot(XU,yup);
% title('Theoretical Uniform PDF')
% xlabel('n');
% ylabel('p');
% subplot(2,2,3);
% plot(UcRange, UniCDF);
% title('Random Uniform CDF')
% xlabel('n');
% ylabel('p');
% subplot(2,2,4);
% plot(XU,yuc);
% title('Theoretical Uniform CDF')
% xlabel('n');
% ylabel('p');