figs = openfig('sh.fig');
for K = 1 : length(figs)
   filename = 'shrpe1.jpg';
   saveas(figs(K), filename);
end