%Lab 2 - Intro to MATLAB Plotting
%Alan Tieng
%CS 109, Spring 2020, Reckinger

clear all;
close all;
clc;

%Data to plot
x=[167,173,166,167,105,141,142,166,144,29,137,162,125,151,167,177,179,102,126,131,143,119,152,158,150,170,154,152,110,157,151,128,165,168,134,103,177,176,140,177,120,137,80,103,159,120,177,161,158,170,173,96,160,157,126,166,117,110,111,128,125,109,43];
y=[163.370717056762,132.477513476602,164.878704228353,204.146888007224,74.7814879506811,120.752182438789,125.336347109310,166.242724181452,97.4278108628663,21.8931824556363,107.926822100228,113.307791151318,60.7077510396427,149.418904459176,176.213461936471,243.210053615330,235.735309718951,36.2643740219188,40.8711232323966,80.2556481702678,80.7637823932130,53.4282329756538,149.436819263482,189.370154738494,137.566833442917,225.054613571372,62.3994972174306,228.234251653008,95.5776365239718,164.764613767545,122.109039702233,137.481826776140,147.146841238838,149.129090384695,83.3267125566767,93.3402294785530,88.1374643085091,227.473698325393,59.5377080544153,202.503762937975,113.267362242421,72.9284809777704,61.5887671405565,60.8171626977904,162.259502311880,36.4686791790962,131.817777905292,161.717870496342,128.156378280985,197.491581060223,126.573904563765,85.7559807730357,146.777130257558,182.543622912173,109.389419501183,142.511949563070,58.9160278038217,71.8315176002180,64.6366916864456,100.266482275343,43.8241069281697,45.6649310890225,54.2932986290100;175.352748703578,130.956462656437,186.646604792927,203.842036744465,79.8284313500328,135.122582787634,120.545285966122,145.626333708031,86.6221371968548,24.9323347322575,110.693600605112,120.510856848449,67.4307327442661,150.909563163784,172.017167148625,252.230440745333,233.059125752348,37.2988096978172,58.6030620114604,82.1996543716937,72.9323374732180,52.4518162628240,157.700939000797,200.137298249894,136.653922367315,230.697274276971,64.9466748227080,243.059307428648,100.758400952530,170.133178624731,127.254646382038,133.213586324738,159.816487211094,148.799040170277,85.4168691166084,95.3999621123519,91.8440501410224,240.475302345623,57.4598563321826,224.532781582820,106.265840201110,90.9726208690185,57.3263152293158,68.2623106973647,157.117607976076,30.7884316620637,138.371931449942,176.337724717516,140.054854798821,195.992149676444,135.702270156039,108.361457992203,145.383003973747,169.195232554885,97.6843026093983,150.459272367682,63.2679526415465,80.0389659907077,60.0918877979523,94.3653629008779,60.9820028857805,42.3208036068553,50.2906011725914;159.779321932170,160.400526401634,162.836652739503,184.973727711655,57.0122107112958,106.806032039787,126.777406247649,185.939417640732,111.191922857007,27.3495103132281,104.257166144799,135.057453761588,50.0264303491066,143.392623559244,187.675790126036,198.588488918986,205.296277305819,19.6135501545222,16.4376691322763,51.3899304987945,76.5678741418111,112.651957607082,120.684120587949,177.268044312476,142.061741235757,194.071409541780,73.0719261938341,179.162590864915,114.388670996752,149.100990751451,99.6950959440593,152.696565848309,166.894421288490,173.997746828871,105.363572438659,85.5595179721354,22.1919142338265,192.275430065327,81.2317422535506,174.429755096302,77.7619391361439,42.1090565170334,21.9036701780229,49.6889979822208,167.281938189831,16.2980825123526,118.540327203041,119.948663723339,51.0403136807833,177.682263484874,142.362313022170,77.2131921573830,129.147494709924,160.370009026677,144.366803956618,161.676274568523,62.1133037902008,71.0286017542662,75.9615472283792,71.6302961184356,42.3929712323367,39.6910714653356,63.3510848837363];

%{
y1 = y(1,:);  %row 1 of data
y2 = y(2,:);  %row 2 of data
y3 = y(3,:);  %row 3 of data
%}

plot(x,y(1,:), 'mo');
hold all;
plot(x,y(2,:), 'g+');
plot(x,y(3,:), 'bd');
legend('Stress', 'Sammon Mapping', 'Squared Stress',...
    'Location', 'northwest');
title('Morse Signal Analysis');
xlabel('Dissimilarities');
ylabel('Distances');

%label max location
[y_max, y_max_ind] = max(y(:));
[y_max_row, y_max_col] = ind2sub(size(y),y_max_ind);
text(x(y_max_col), y_max, '<--Max');

%data points < 80 cut off but written to match example
xlim([80, 180]);