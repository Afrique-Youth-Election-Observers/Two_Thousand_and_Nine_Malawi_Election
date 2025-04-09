% Program to determine the majority winner of an election.
% This software prompts the user to enter the total valid votes for each candidate.
% It calculates and compares the votes to determine the candidate with the highest vote count.
% The program is designed to handle multiple candidates and identifies the winner of the election.
%
% Developed by: Ian Carter Kulani
% Purpose: To calculate and display the winner of an election based on vote counts.
% Contact: iancarterkulani@gmail.com | Phone: +265988061969


% Declare the necessary variables
Total_Registered_Voters = input('Enter Total Number of Registered Voters:');
Total_Votes = input('Enter Total Votes:');
Total_Valid_Votes = input('Enter Total Number of Valid Votes:');
Total_Null_and_Void_Votes = input('Enter Total Number of Invalid/Blank Votes:');

% Input for each party's valid votes
Total_Valid_Votes_For_Democratic_Progressive_Party = input('Enter Total Valid Votes For Democratic Progressive Party (DPP):');
Total_Valid_Votes_For_Malawi_Congress_Party = input('Enter Total Valid Votes For Malawi Congress Party (MCP):');
Total_Valid_Votes_For_Peoples_Transformation_Party = input('Enter Total Valid Votes For Peoples Transformation Party (PTP):');
Total_Valid_Votes_For_Republican_Party = input('Enter Total Valid Votes For Republican Party (RP):');
Total_Valid_Votes_For_New_Rainbow_Coalition = input('Enter Total Valid Votes For New Rainbow Coalition (NRC):');
Total_Valid_Votes_For_Independent = input('Enter Total Valid Votes For Independent Party: ');
Total_Valid_Votes_For_Alliance_For_Democracy = input('Enter Total Valid Votes For Alliance For Democracy (AFD):');

% Calculate majority (more than half of total valid votes)
Majority = Total_Valid_Votes / 2 + 1;

% Calculate percentages for each party
Percentage_DPP = (Total_Valid_Votes_For_Democratic_Progressive_Party / Total_Valid_Votes) * 100;
Percentage_MCP = (Total_Valid_Votes_For_Malawi_Congress_Party / Total_Valid_Votes) * 100;
Percentage_PTP = (Total_Valid_Votes_For_Peoples_Transformation_Party / Total_Valid_Votes) * 100;
Percentage_RP = (Total_Valid_Votes_For_Republican_Party / Total_Valid_Votes) * 100;
Percentage_NRC = (Total_Valid_Votes_For_New_Rainbow_Coalition / Total_Valid_Votes) * 100;
Percentage_Independent = (Total_Valid_Votes_For_Independent / Total_Valid_Votes) * 100;
Percentage_AFD = (Total_Valid_Votes_For_Alliance_For_Democracy / Total_Valid_Votes) * 100;

% Display the percentages for each party
fprintf('\nPercentage of Votes for Each Party:\n');
fprintf('Democratic Progressive Party (DPP): %.2f%%\n', Percentage_DPP);
fprintf('Malawi Congress Party (MCP): %.2f%%\n', Percentage_MCP);
fprintf('Peoples Transformation Party (PTP): %.2f%%\n', Percentage_PTP);
fprintf('Republican Party (RP): %.2f%%\n', Percentage_RP);
fprintf('New Rainbow Coalition (NRC): %.2f%%\n', Percentage_NRC);
fprintf('Independent Party: %.2f%%\n', Percentage_Independent);
fprintf('Alliance For Democracy (AFD): %.2f%%\n', Percentage_AFD);

% Determine the winner based on majority
if Total_Valid_Votes_For_Democratic_Progressive_Party >= Majority
    disp('Democratic Progressive Party (DPP) is the Winner of the Election');
elseif Total_Valid_Votes_For_Malawi_Congress_Party >= Majority
    disp('Malawi Congress Party (MCP) is the Winner of the Election');
elseif Total_Valid_Votes_For_Peoples_Transformation_Party >= Majority
    disp('Peoples Transformation Party (PTP) is the Winner of the Election');
elseif Total_Valid_Votes_For_Republican_Party >= Majority
    disp('Republican Party (RP) is the Winner of the Election');
elseif Total_Valid_Votes_For_New_Rainbow_Coalition >= Majority
    disp('New Rainbow Coalition (NRC) is the Winner of the Election');
elseif Total_Valid_Votes_For_Independent >= Majority
    disp('Independent Party is the Winner of the Election');
elseif Total_Valid_Votes_For_Alliance_For_Democracy >= Majority
    disp('Alliance For Democracy (AFD) is the Winner of the Election');
else
    disp('No Political Party has a Majority Winner in the Election');
end

% Plot Pie Chart
figure;
party_names = {'DPP', 'MCP', 'PTP', 'RP', 'NRC', 'Independent', 'AFD'};
vote_percentages = [Percentage_DPP, Percentage_MCP, Percentage_PTP, Percentage_RP, Percentage_NRC, Percentage_Independent, Percentage_AFD];
colors = [0, 0, 1;       % Blue for DPP
          1, 0, 0;       % Red for MCP
          0.6, 0.3, 0;   % Brown for PTP
          0.5, 0.5, 0.5; % Grey for RP
          0.2, 0.2, 0.2; % Dark Grey for NRC
          0, 0, 0;       % Black for Independent
          0.53, 0.81, 0.98]; % Sky Blue for AFD

% Plot the pie chart with the custom colors
pie(vote_percentages, party_names);
colormap(colors); % Set the color of the pie chart sections
title('Election Results - Party Vote Percentages');

% Plot Bar Chart
figure;
bar(vote_percentages);
set(gca, 'XTickLabel', party_names);
ylabel('Percentage of Votes (%)');
title('Election Results - Party Vote Percentages');
ylim([0 100]); % Set y-axis limit to 100% for clarity
xtickangle(45); % Rotate x-axis labels for better visibility
grid on; % Add grid for better readability
