%% ModelFactory
% Licensed under the zlib license. See LICENSE for more details.

function humanModel = fnc_createHumanModel (humanModelDescription, ...
    scalingAlgorithm, humanAnthropometry, addMarkers,...
    functionHandleAddMarkersToSegment)

% Read dictionary items
dict_definitions;

nSegments_Human = length(humanModelDescription{1});
for segmentID = 1:nSegments_Human
    humanModel{segmentID} = class_modelSegment;
    modelSegment_typeName = humanModelDescription{2}{segmentID};
    modelJoint_typeName   = humanModelDescription{3}{segmentID};
    segmentIDXMatch       = strmatch (modelSegment_typeName, ...
        scalingAlgorithm.segmentTypeNames, 'exact');
    
    humanModel{segmentID}.name = humanModelDescription{1}{segmentID};
    humanModel{segmentID}.parent = humanModelDescription{4}{segmentID};
    segment_names{segmentID} = humanModel{segmentID}.name;
    humanModel{segmentID}.parentID = strmatch ...
        (humanModel{segmentID}.parent, segment_names, 'exact');    
    if isempty(humanModel{segmentID}.parentID)
        if isempty(strmatch (humanModel{segmentID}.parent, 'ROOT','exact'))
            error ([' - Cannot find parent body ', ...
                humanModel{segmentID}.parent, ' for segment ',...
                humanModel{segmentID}.name]);
        end
    end    
    humanModel{segmentID}.mass = ...
        scalingAlgorithm.segmentTypeMass(segmentIDXMatch);
    humanModel{segmentID}.com = ...
        scalingAlgorithm.segmentTypeCom(segmentIDXMatch,:);
    humanModel{segmentID}.inertia = ...
        squeeze(scalingAlgorithm.segmentTypeInertia(segmentIDXMatch,:,:));
    humanModel{segmentID}.mesh_dimension = ...
        squeeze(scalingAlgorithm.mesh_dimension(segmentIDXMatch,:,:));
    humanModel{segmentID}.mesh_center = ...
        scalingAlgorithm.mesh_center(segmentIDXMatch,:);
    humanModel{segmentID}.mesh_color = ...
        scalingAlgorithm.mesh_color(segmentIDXMatch,:);
    humanModel{segmentID}.mesh_obj = ...
        scalingAlgorithm.mesh_obj{segmentIDXMatch};
    humanModel{segmentID}.length = ...
        scalingAlgorithm.segmentTypeLength(segmentIDXMatch);
    
    % Add joint information
    [humanModel{segmentID}.joint, humanModel{segmentID}.joint_r,...
        humanModel{segmentID}.joint_E] = ...
        fnc_getJointConfiguration (humanModel, modelJoint_typeName,...
        modelSegment_typeName, humanAnthropometry, segmentID);
        
    % Add points information
    if ~isempty(humanModelDescription{5}{segmentID})
        disp ([' - Found points, ',...
            humanModelDescription{5}{segmentID},', in segment, ',...
            humanModelDescription{1}{segmentID}]);
        if strmatch (humanModelDescription{5}{segmentID}, ...
                {PointsTypesDictionary(:).name}, 'exact')
            humanModel{segmentID} = fnc_getPoints ...
                (humanModel{segmentID}, ...
                humanModelDescription{5}{segmentID}, humanAnthropometry);
        else
            error ([' - Point type "',...
                humanModelDescription{5}{segmentID},...
                '" not found in dictionary']);
        end
    end
    
    % Add constraint set information
    if ~isempty(humanModelDescription{6}{segmentID})
        disp ([' - Found constraint set, ', ...
            humanModelDescription{6}{segmentID},', in segment, ',...
            humanModelDescription{1}{segmentID}]);
        if strmatch (humanModelDescription{6}{segmentID}, ...
                {ConstraintSetTypes(:).name}, 'exact')
            constraintSetIDX = strmatch ...
                (humanModelDescription{6}{segmentID}, ...
                {ConstraintSetTypes(:).name}, 'exact');
            humanModel{segmentID}.constraintSet = ...
            ConstraintSetTypes(constraintSetIDX);
        else
            error ([' - Constraint set type "',...
                humanModelDescription{6}{segmentID}, ...
                '" not found in dictionary']);
        end
    end
    
    % Add marker information
    if addMarkers == 1 || addMarkers == '1'
      if segmentID == 1
          disp (' - Adding markers to segments.');
                  disp ('  -- Using default marker configuration.');
      end
        [humanModel{segmentID}.marker_names, ...
            humanModel{segmentID}.marker_values] = ...
            functionHandleAddMarkersToSegment (humanModel, ...
            modelSegment_typeName, humanAnthropometry, segmentID);
    end
end