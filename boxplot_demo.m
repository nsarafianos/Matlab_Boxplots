load('fisheriris.mat');
figure();
boxplot(meas) % intial boxplot
Labels = {'Sepal length', 'Sepal width', 'Petal length', 'Petal width'};
LineWidth = 2.4;
MarkerSize = 12;
FontSize = 30;
figure();
h1 = boxplot(meas,'labels',Labels); % final boxplot; maximize the window
for ih = 1: 7
    set(h1(ih,:),'LineWidth',LineWidth,'markers',MarkerSize);
end
for i = 1 : size(meas,2)
    hold on
    plot(i,mean(meas(:,i)),'b*','markers',MarkerSize);
end
ylabel('Centimetres')
set(gca,'fontsize',FontSize)
