close;
clear all;
data=load('in_print_press_vel_225p_v4_onedoor3_6m_100.txt');
data2=load('in_print_press_vel_225p_v4_onedoor3.6m_40.txt');

index= find (data(:,1)<20);
t=0.05*[1:length(index)]-0.05;
t2=0.05*[1:length(data2(:,1))]-0.05;

pv=data(index,3);
pv(1:33)=[];
speed=data(index,4);
speed(1:33)=[];
plot(pv,speed,'o','LineWidth',2)
yl=ylabel('speed (m/s)'); 
set(yl,'FontSize',16);
xl=xlabel('PV'); 
set(xl,'FontSize',16);


%subplot(2,1,1), plot(t,data(index,3),'r','LineWidth',2)
%xl=xlabel('time (s)'); 
%set(xl,'FontSize',16);
%yl=ylabel('PV'); 
%set(yl,'FontSize',16);
%hold on
%grid on
%subplot(2,1,2), plot(t,data(index,4),'r','LineWidth',2)
%xl=xlabel('time (s)'); 
%set(xl,'FontSize',16);
%yl=ylabel('speed (m/s)'); 
%set(yl,'FontSize',16);
%hold on
%grid on



%subplot(3,1,1), plot(t,data(:,3),'r','LineWidth',2)
%hold on
%grid on
%subplot(3,1,1), plot(t2,data2(:,3),'k','LineWidth',2)
%hold on
%grid on
%subplot(3,1,2),plot(t,data(:,4),'r','LineWidth',2)
%hold on
%grid on
%subplot(3,1,2),plot(t2,data2(:,4),'k','LineWidth',2)
%subplot(3,1,3),plot(t,data(:,1),'r','LineWidth',2)
%hold on
%grid on
%subplot(3,1,3),plot(t2,data2(:,1),'k','LineWidth',2)
%grid on






