y_max=100;
x_max=25;
K=100;
y_ini=10;

N_deme=x_max*y_max;
N_ini=x_max*y_ini;
N_ind=N_deme*K; %250000;
N_ind_ini=N_ini*K; %25000

s_migr=0.5;
disp_rate=0.1;
disp_dist=2;
m_rate=10e-5;


repr_factor=0.8;            % reproduction factor at location y_max
rc_rl=(1-repr_factor)/y_max;    % slope of the location correction for reproduction

r_factor=0.4;               % reproduction factor at density=1
rc_rd=1-r_factor;            % slope of the density correction for reproduction

s_factor=0.6;               % survival factor at density=1
rc_s=1-s_factor;            % slope of the density correction for survival
% perc_std=0.0;               % percentage standard deviation of the local winter survival
std_surv=0;               % std dev of the local winter survival, independent of local winter survival
std_migr=0;             % std dev of the migration decision
std_s_migr=0;         % std dev of the migration survival

switchL=2;              % location: 1=compl, 2=migrants, 3=residents
switchG=2;              % genetic diversity: 1=zero, 2=full 
delta_surv=-0.2;            % change in survival: 0.2=increase, -0.2=decrease

%% check xlsx file scenario_schedule
year_tot=600;           % total number of generations: 300 600 1000 10000
year_change=301;           % the year of changing survival conditions: 1 301 year_max
yrs_output=[1 20 40 60 80 100 120 140 160 180 200 220 240 260 280 300 320 340 360 380 400 420 440 460 480 500 520 540 560 580 600];

