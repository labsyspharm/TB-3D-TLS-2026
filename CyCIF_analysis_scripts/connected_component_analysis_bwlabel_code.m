% Load 3D Mask

%roiMask = tiffreadVolume('3DMASK_DS.tiff'); % Assuming binary mask
roiMask = tiffreadVolume('3DMASK_DS_cleaned_with_qupath_polygons.tif'); % Assuming binary mask
% Label connected components (3D TLS)
label = bwlabeln(roiMask, 26); % 26-connectivity for full 3D grouping

% Display sections
figure; imshow(label(:,:,20), []);
figure; imshow([label(:,:,20), label(:,:,25)]);

% Get TLS properties
TLS_Stats = regionprops3(label, 'Centroid', 'Volume');

% Display the number of TLS detected
numTLS = size(TLS_Stats,1);
fprintf('Total TLS regions detected: %d\n', numTLS);

% Visualize in 3D
volumeViewer(label);
volumeSegmenter(label);

%% 
% Save full label
%save('3Dlabel.mat', 'label');
%save('3Dlabel.mat', 'label');
%save('3Dlabel.tiff', 'label');
% Initialize segmented labels
label1 = label; label2 = label; label3 = label; label4 = label; label5 = label;

% Segment labels into chunks
label1(label1 > 200) = 0;

label2(label2 < 201 | label2 > 400) = 0;
%label2(label2 > 0) = label2(label2 > 0) - 200;

label3(label3 < 401 | label3 > 600) = 0;
%label3(label3 > 0) = label3(label3 > 0) - 400;

label4(label4 < 601 | label4 > 800) = 0;
%label4(label4 > 0) = label4(label4 > 0) - 600;

label5(label5 < 801 | label5 > 1000) = 0;
%label5(label5 > 0) = label5(label5 > 0) - 800;

%% Save segmented labels

save('label1.mat', 'label1');
save('label2.mat', 'label2');
save('label3.mat', 'label3');
save('label4.mat', 'label4');
save('label5.mat', 'label5');

% Save all labels together
save('all_labels.mat', 'label1', 'label2', 'label3', 'label4', 'label5');

%% Load the original label data

load('label2.mat', 'label2');  % Ensure label2 contains labels 201-400
unique(label2)

% Remap labels from 201-400 to 1-200
labels_ed2 = label2;  % Copy the original data
labels_ed2(labels_ed2 > 0) = labels_ed2(labels_ed2 > 0) - 200; % Shift labels down

% write CODE ACCORDINGLYFOR EACH LABEL
%label3(label3 < 401 | label3 > 600) = 0;
%label3(label3 > 0) = label3(label3 > 0) - 400;

% Save the remapped labels
%save('labels_ed2.mat', 'labels_ed2');
disp('✅ Created labels_ed2 where 201-400 → 1-200 and saved as labels_ed2.mat');


%% Load the new remapped label data

%load('labels_ed2.mat', 'labels_ed2');  % Ensure this is your 1-200 mapped label
uniqueNewLabels = unique(labels_ed2);
uniqueNewLabels(uniqueNewLabels == 0) = []; % Remove background (0)


%% Create the mapping from 1-200 → 201-400

originalLabels = uniqueNewLabels + 200;  % Convert 1-200 back to 201-400

% Create label names as "Label201", "Label202", ...
labelNames = arrayfun(@(x) sprintf('Label%d', x), originalLabels, 'UniformOutput', false);

% Create the mapping table in the workspace
mappingTable = table(uniqueNewLabels, originalLabels', labelNames', 'VariableNames', {'Label', 'OriginalLabel', 'LabelName'});

% Save as a CSV to import into Volume Segmenter
writetable(mappingTable, 'Label_Names.csv');

disp('✅ Mapping table created and saved as Label_Names.csv');


%open the new 0-200 mask in Volume Segmenter
% IMPORT LABEL NAMES FROM ARRAY IN WORKSPACE.
% (labelNames )