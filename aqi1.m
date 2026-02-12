clc;
clear;
close all;

% ------------------------------------
% AIR QUALITY INDEX (AQI) MONITORING
% TOOLBOX FREE VERSION
% ------------------------------------

% Time duration (minutes)
time = 1:60;

% Simulated sensor data (Base MATLAB only)
CO   = 0.5 + 0.4*sin(0.1*time) + 0.1*randn(size(time));   % ppm
NO2  = 40  + 15*sin(0.08*time) + 5*randn(size(time));    % µg/m3
PM25 = 30  + 20*sin(0.06*time) + 8*randn(size(time));    % µg/m3

% Remove negative values
for i = 1:length(time)
    if CO(i) < 0, CO(i) = 0; end
    if NO2(i) < 0, NO2(i) = 0; end
    if PM25(i) < 0, PM25(i) = 0; end
end

% ------------------------------------
% AQI Calculation (Simplified)
% ------------------------------------
AQI_CO   = CO * 100;
AQI_NO2  = NO2;
AQI_PM25 = PM25 * 2;

AQI = zeros(1,length(time));
for i = 1:length(time)
    AQI(i) = max([AQI_CO(i), AQI_NO2(i), AQI_PM25(i)]);
end

% ------------------------------------
% AQI Category (No strings datatype)
% ------------------------------------
category = cell(1,length(AQI));

for i = 1:length(AQI)
    if AQI(i) <= 50
        category{i} = 'Good';
    elseif AQI(i) <= 100
        category{i} = 'Moderate';
    elseif AQI(i) <= 200
        category{i} = 'Poor';
    elseif AQI(i) <= 300
        category{i} = 'Very Poor';
    else
        category{i} = 'Severe';
    end
end

% ------------------------------------
% Display AQI (Real-Time)
% ------------------------------------
fprintf('AIR QUALITY MONITORING SYSTEM\n');
fprintf('------------------------------\n');

for i = 1:length(time)
    fprintf('Time: %02d min | AQI: %.1f | Status: %s\n', ...
        time(i), AQI(i), category{i});
    pause(0.1);
end

% ------------------------------------
% Plot Results (Base MATLAB)
% ------------------------------------
figure;

subplot(4,1,1)
plot(time, CO,'LineWidth',1.5)
grid on
ylabel('CO (ppm)')
title('Carbon Monoxide')

subplot(4,1,2)
plot(time, NO2,'LineWidth',1.5)
grid on
ylabel('NO2 (\mug/m^3)')
title('Nitrogen Dioxide')

subplot(4,1,3)
plot(time, PM25,'LineWidth',1.5)
grid on
ylabel('PM2.5 (\mug/m^3)')
title('Particulate Matter')

subplot(4,1,4)
plot(time, AQI,'LineWidth',1.5)
grid on
xlabel('Time (minutes)')
ylabel('AQI')
title('Air Quality Index')

% ------------------------------------
% Data Logging (CSV without toolbox)
% ------------------------------------
fid = fopen('AQI_Data_Log.csv','w');
fprintf(fid,'Time,CO,NO2,PM25,AQI,Status\n');

for i = 1:length(time)
    fprintf(fid,'%d,%.2f,%.2f,%.2f,%.2f,%s\n', ...
        time(i), CO(i), NO2(i), PM25(i), AQI(i), category{i});
end
fclose(fid);

disp('AQI data saved to AQI_Data_Log.csv');

% ------------------------------------
% Analysis
% ------------------------------------
avgAQI = sum(AQI)/length(AQI);
[maxAQI, idx] = max(AQI);

fprintf('\nAverage AQI: %.2f\n', avgAQI);
fprintf('Maximum AQI: %.2f (%s)\n', maxAQI, category{idx});