clear all
close all
clc

load('Km_110_750_1400_raw_data.mat')
 
%% V_DC_1
figure('Name','V_DC_1');
plot(V_DC_1_ref, 'k', 'LineWidth',2);
hold on
plot(V_DC_1_Km_110, 'g', 'LineWidth',2);
hold on
plot(V_DC_1_Km_750, 'r', 'LineWidth',2);
hold on
plot(V_DC_1_Km_1400, 'b', 'LineWidth',2);
hold off
legend({'Reference','Km 110','Km 750','Km 1400'},'fontsize',30);
set(gca,'FontSize',30); %set axes font size
grid on

ylabel('V$$_{DC1}$$(V)','interpreter','latex','fontsize',30,'fontweight','bold');
xlabel('Time(s)','interpreter','latex','fontsize',30,'fontweight','bold');

%% Q_1
figure('Name','Q_1');
plot(Q_1_ref, 'k', 'LineWidth',2);
hold on
plot(Q_1_Km_110, 'g', 'LineWidth',2);
hold on
plot(Q_1_Km_750, 'r', 'LineWidth',2);
hold on
plot(Q_1_Km_1400, 'b', 'LineWidth',2);
hold off
legend({'Reference','Km 110','Km 750','Km 1400'},'fontsize',30);
set(gca,'FontSize',30); %set axes font size
grid on

ylabel('Q$$_{1}$$(var)','interpreter','latex','fontsize',30,'fontweight','bold');
xlabel('Time(s)','interpreter','latex','fontsize',30,'fontweight','bold');


ah = gca; 
% location of the plot to be zoomed in.  
s_pos =[0.099 -3.96745e6 0.5 -3.96715e6];
% location of the zoom-in plot  
t_pos = [0.13 -3e6 0.42 -0.1e6];    

% generate a zoom-in plot.  
az = zoomPlot(ah, s_pos, t_pos); 

% add a box to indicate where to zoom:
pos = [0.085 -4e6 (0.13 - 0.085) (-3.65e6 + 4e6)];
rectangle('Position',pos,'Linestyle','-.','Linewidth',2,'EdgeColor','k');

% add an arrow to indicate the zoom action from point [x(1),y(1]] to point [x(2),y(2]]
x = [0.34 0.4];
y = [0.15 0.28];
arrow = annotation('arrow',x,y)
arrow.Color = 'black';
arrow.LineWidth = 10;
arrow.HeadLength = 40;
arrow.HeadWidth = 40;

%% P_2
figure('Name','P_2');
plot(P_2_ref, 'k', 'LineWidth',2);
hold on
plot(P_2_Km_110, 'g', 'LineWidth',2);
hold on
plot(P_2_Km_750, 'r', 'LineWidth',2);
hold on
plot(P_2_Km_1400, 'b', 'LineWidth',2);
hold off
legend({'Reference','Km 110','Km 750','Km 1400'},'fontsize',30);
set(gca,'FontSize',30); %set axes font size
grid on

ylabel('P$$_{2}$$(W)','interpreter','latex','fontsize',30,'fontweight','bold');
xlabel('Time(s)','interpreter','latex','fontsize',30,'fontweight','bold');

ah = gca; 
% location of the plot to be zoomed in.  
s_pos =[0.099 2.60015e6 0.5 2.6004e6];
% location of the zoom-in plot  
t_pos = [0.15 0 0.42 2.3e6];    

% generate a zoom-in plot.  
az = zoomPlot(ah, s_pos, t_pos); 

% add a box to indicate where to zoom:
pos = [0.085 2.4e6 (0.13 - 0.085) (2.8e6 - 2.4e6)];
rectangle('Position',pos,'Linestyle','-.','Linewidth',2,'EdgeColor','k');

% add an arrow to indicate the zoom action from point [x(1),y(1]] to point [x(2),y(2]]
x = [0.3 0.34];
y = [0.75 0.6];
arrow = annotation('arrow',x,y)
arrow.Color = 'black';
arrow.LineWidth = 10;
arrow.HeadLength = 40;
arrow.HeadWidth = 40;

%% Q_2
figure('Name','Q_2');
plot(Q_2_ref, 'k', 'LineWidth',2);
hold on
plot(Q_2_Km_110, 'g', 'LineWidth',2);
hold on
plot(Q_2_Km_750, 'r', 'LineWidth',2);
hold on
plot(Q_2_Km_1400, 'b', 'LineWidth',2);
hold off
legend({'Reference','Km 110','Km 750','Km 1400'},'fontsize',30);
set(gca,'FontSize',30); %set axes font size
grid on

ylabel('Q$$_{2}$$(var)','interpreter','latex','fontsize',30,'fontweight','bold');
xlabel('Time(s)','interpreter','latex','fontsize',30,'fontweight','bold');

ah = gca; 
% location of the plot to be zoomed in: point to point  
s_pos =[0.099 -9.4232e5 0.5 -9.422e5];
% location of the zoom-in plot  
t_pos = [0.13 -8e5 0.42 -0.1e5];    

% generate a zoom-in plot.  
az = zoomPlot(ah, s_pos, t_pos); 

% add a box to indicate where to zoom:
pos = [0.085 -9.8e5 (0.13 - 0.085) (-8.5e5 + 9.5e5)];
rectangle('Position',pos,'Linestyle','-.','Linewidth',2,'EdgeColor','k');

% add an arrow to indicate the zoom action from point [x(1),y(1]] to point [x(2),y(2]]
x = [0.34 0.43];
y = [0.18 0.25];
arrow = annotation('arrow',x,y)
arrow.Color = 'black';
arrow.LineWidth = 10;
arrow.HeadLength = 40;
arrow.HeadWidth = 40;
