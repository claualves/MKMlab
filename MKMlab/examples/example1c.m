filename = 'CO_oxidation.mkm';
T = 600;
gases = {'CO','O2','CO2'};
P_i = [0.33 0.67 1];
[sol rxn_struct] = run_mkm(filename,T,gases,P_i,'TOF_species',{'CO2','CO', 'O2'});
plot_coverages(sol);
% formatspec = 'TOF for %10s is %4.2f  g s^(-1)\n';
% fprintf(formatspec,["CO2"; "CO"; "O2"],sol.TOF)