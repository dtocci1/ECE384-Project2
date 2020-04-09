%% ECE 384 - Project 5.2
%% Tyler Botelho, Lewis Brum, Matt LaVoie, Dylan Tocci
clear;clc;


% 1. Generate sequences, at least 10000 points long, of the following two
% random variables:

% (a) A uniform random variable X1 in the range of [0 3]
    xu1=0:1:3;
    X1 = unifrnd(0,3,[1 10000]); % Generate random uniform distribution with 10000 points
    X1TP = unifpdf(xu1,0,3); % Calculate X1 Theoretical PDF

% (b) A uniform random variable X2 in the range of [0 5].
    xu2=0:1:5;
    X2 = unifrnd(0,5,[1 10000]); % Generate random uniform distribution with 10000 points
    X2TP = unifpdf(xu2,0,5); % Calculate X2 Theoretical PDF
    
% 2. Obtain a new random variable as a sum: Y = X1 + X2.

    Y = X1+X2; % Y generated with random distributions

% 3. Measure the PDFs of X1, X2 and Y .

    [PDX1,CDX1,pX1Range, cX1Range] = PdfCdf(X1,25); % Calculate X1 PDF
    [PDX2,CDX2,pX2Range, cX2Range] = PdfCdf(X2); % Calculate X2 PDF
    [PDY,CDY,pYRange, cYRange] = PdfCdf(Y); % Calculate Y PDF
    YTP = conv(X1TP,X2TP); % Calculate Y Theoretical PDF
    YTP=YTP-0.0667; % Remove offset generated
    
    
% 4. Plot the measured PDFs along with the corresponding theoretical PDFs.
% Compare and comment on the results.

    figure(1) % X1 PDF and Theoretical PDF
    sgtitle("Measured vs Theoretical PDF for X1");
    % Graph measured PDF
    subplot(2,1,1)
    plot(linspace(0,3,25),PDX1); 
    ylim([0 1]);
    title("Measured PDF for X1");
    xlabel("x");
    ylabel("X1");
    % Graph theoretical PDF
    subplot(2,1,2)
    plot(linspace(0,3,4),X1TP);
    ylim([0 1]);
    title("Theoretical PDF for X1");
    xlabel("x");
    ylabel("X1");
    
    
    figure(2) % X2 PDF and Theoretical PDF
    sgtitle("Measured vs Theoretical PDF for X2");
    % Graph measured PDF
    subplot(2,1,1)
    plot(linspace(0,5,25),PDX2);
    ylim([0 1]);
    title("Measured PDF for X2");
    xlabel("x");
    ylabel("X2");
    % Graph theoretical PDF
    subplot(2,1,2)
    plot(linspace(0,5,6),X2TP);
    ylim([0 1]);
    title("Theoretical PDF for X2");
    xlabel("x");
    ylabel("X2");
    
    
    figure(3) % Y PDF and Theoretical PDF
    sgtitle("Measured vs Theoretical PDF for Y");
    % Graph measured PDF
    subplot(2,1,1)
    plot(linspace(0,9,25),PDY);
    ylim([0 1]);
    title("Measured PDF for Y");
    xlabel("y");
    ylabel("Y");
    % Graph theoretical PDF
    subplot(2,1,2)
    plot(linspace(0,9,9),YTP);
    ylim([0 1]);
    title("Actual PDF for Y");
    xlabel("y");
    ylabel("Y");