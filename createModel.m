%% ModelFactory
% Copyright (c) 2017 Manish Sreenivasa
% <manish.sreenivasa@ziti.uni-heidelberg.de>
% Heidelberg University, Germany
%
% Licensed under the zlib license. See LICENSE for more details.
%
% @date March 3 2020
% @author M.Millard
% @note Modified from the original version

%% General Description
% The ModelFactory toolkit is a set of scripts in Matlab(R)/Octave that 
% can be used to create models of humans and human-centered devices such as
% exoskeletons. By default a graphical user interface is included that 
% works on Matlab (tested on Matlab 2017a(R)), and a text based interface 
% for Matlab(R)/ Octave (tested on Octave 4.2.1, https://ftp.gnu.org/gnu/octave/). 
%
% Developments of the toolkit can be followed on: 
%   https://github.com/manishsreenivasa/ModelFactory
%
% Please cite this work as: 
% Sreenivasa M & Harant M. (under review), "ModelFactory: A Matlab/Octave 
% based toolbox to create human body models" submission to Source Code for 
% Biology & Medicine

%clear; clc;

function success = createModel(EnvironmentSetupFile, flag_plot,flag_verbose)

success = 0;

%% Uncomment any of the lines below to create some sample models
% EnvironmentSetupFile = ['data/samples/use-case-walking/data/human.env'];
% EnvironmentSetupFile = ['data/samples/EnvironmentSetup_3DHumanDefault_01.env'];
% EnvironmentSetupFile = ['data/samples/EnvironmentSetup_3DChildJensen.env'];
% EnvironmentSetupFile = ['data/samples/EnvironmentSetup_3DHumanCustom.env'];
% EnvironmentSetupFile = ['data/samples/EnvironmentSetup_3DHumanCustomPartial.env'];
% EnvironmentSetupFile = ['data/samples/EnvironmentSetup_3DHumanDefault_FusedTorso.env'];
% EnvironmentSetupFile = ['data/samples/EnvironmentSetup_3DHumanExoBox.env'];
% EnvironmentSetupFile = ['data/samples/EnvironmentSetup_SagittalHuman.env'];

%% Set path to Modelfactory's folders
addpath(genpath('core'));
addpath(genpath('customSetups'));
if(flag_verbose==1)
    disp (['Processing environment setup file :: ', EnvironmentSetupFile]);
end
basePathIdx = strfind (EnvironmentSetupFile,'/');
basePath = EnvironmentSetupFile(1:basePathIdx(end));
EnvironmentSetup = fnc_readEnvironmentSetupFile (...
                    EnvironmentSetupFile,flag_verbose);

%Handle to the function that defines the markerset. Currently there are
%two different markersets to choose from:
%
% Visual 3d's IOR marker set: 
%       fnc_addIORHeiAgeMarkersToSegments
% Vicon's plug-in-gait marker set
%       fnc_addPlugInGaitMarkersToSegments
fncH_addHumanMarkerSet = ...
@(argModel,argModelSegment_typeName,argInParam_PersonInfo,argSegmentID ...
    )fnc_addIORHeiAgeMarkersToSegments(...
      argModel,argModelSegment_typeName, argInParam_PersonInfo, argSegmentID);

%If the objects in the model have associated markers, define the handle
%here. The function definition is identical to that required for the human
%model. For an example please see 
%   core/utils/fnc_addIORHeiAgeMarkersToSegments
%   core/utils/fnc_addPlugInGaitMarkersToSegments
fncH_addObjectMarkerSet = [];


%% Read dictionary
dict_definitions;

%% Setup human model
% Load human anthropometry
humanAnthropometry = fnc_readHumanAnthropometry...
    ([basePath,EnvironmentSetup.humanModel_AnthropometryFile]);
% Load human model description
humanModelDescription = fnc_readHumanModelDescriptionFile...
    ([basePath,EnvironmentSetup.humanModel_DescriptionFile]);
% Load human model custom lengths (if any)
if ~isempty(EnvironmentSetup.humanModel_UseCustomLengths)
    customSegmentLengthsDescription = fnc_readCustomLengthsFile...
        ([basePath,EnvironmentSetup.humanModel_UseCustomLengths]);
else
    customSegmentLengthsDescription = [];
end
% Set human model scaling algorithm
[scalingAlgorithm, bConsistencyError] = ...
    fnc_setHumanScalingAlgorithm (humanModelDescription,...
    EnvironmentSetup.humanModel_ScalingAlgorithmChoice,...
    humanAnthropometry,...
    customSegmentLengthsDescription,...
    EnvironmentSetup.humanModel_TypeMeshes);
% Scroll through human model description and create corresponding model

    humanModel = fnc_createHumanModel (humanModelDescription,...
        scalingAlgorithm,...
        humanAnthropometry,...
        EnvironmentSetup.AddMarkers,...
        fncH_addHumanMarkerSet,...
        flag_verbose);

%% Setup all objects (if any)
objects = [];
for objID = 1:EnvironmentSetup.nObjects
    
    % Load object description
    objects(objID).modelDescription = fnc_readObjectModelDescriptionFile...
        ([basePath,EnvironmentSetup.objects(objID).modelDescriptionFile]);
    
    % Compute object properties from chosen setup
    [objects(objID).modelSetup, bConsistencyError] = fnc_getObjectSetup ...
        (humanModel, EnvironmentSetup.objects(objID).modelSetupChoice);
    
    % Iterate through object components
    objects(objID).objectModel = fnc_createObjectModel (...
        objects(objID).modelDescription, ...
        objects(objID).modelSetup, ...
        humanAnthropometry, ...
        EnvironmentSetup.AddMarkers, ...
        fncH_addObjectMarkerSet);
    
    if ~isempty(EnvironmentSetup.objects(objID).modelMassProperties)
        % Compute mass properties based on mass property file
        objects(objID).objectModel = fnc_computeObjectMassProperties (...
            objects(objID).objectModel,...
            [basePath,EnvironmentSetup.objects(objID).modelMassProperties]);
    end
end

%% Setup custom constraints
if ~isempty(EnvironmentSetup.humanModel_UseCustomConstraints)
    customConstraintsDescription = fnc_readCustomConstraintsFile ...
        ([basePath,EnvironmentSetup.humanModel_UseCustomConstraints]);
    customConstraints = fnc_readCustomConstraints...
        (customConstraintsDescription);
else
    customConstraints = [];
end

%% Populate human metadata
metadata.scaling_used           = ...
    EnvironmentSetup.humanModel_ScalingAlgorithmChoice;
metadata.subject_age            = humanAnthropometry.age;
metadata.subject_height         = humanAnthropometry.height;
metadata.subject_weight         = humanAnthropometry.weight;
metadata.subject_gender         = humanAnthropometry.gender;
metadata.subject_pelvisWidth    = humanAnthropometry.pelvisWidth;
metadata.subject_hipCenterWidth = humanAnthropometry.hipCenterWidth;
metadata.subject_shoulderCenterWidth = ...
    humanAnthropometry.shoulderCenterWidth ;
metadata.subject_heelAnkleXOffset    = humanAnthropometry.heelAnkleXOffset;
metadata.subject_heelAnkleZOffset    = humanAnthropometry.heelAnkleZOffset;
metadata.subject_footWidth           = humanAnthropometry.footWidth;
metadata.subject_shoulderNeckZOffset = ...
    humanAnthropometry.shoulderNeckZOffset;
%% Write lua files
if ~isempty(EnvironmentSetup.humanModel_Save)
    fnc_writeLUAFile (humanModel, ...
        [basePath,EnvironmentSetup.humanModel_Save], ...
        metadata);
    if(flag_verbose==1)
        disp (['Wrote human LUA file :: ', EnvironmentSetup.humanModel_Save]);
    end
end
for objID = 1:EnvironmentSetup.nObjects
    if ~isempty(EnvironmentSetup.objects(objID).modelSave)
        metadata.scaling_used = EnvironmentSetup.objects(objID).modelSetupChoice;
        fnc_writeLUAFile (objects(objID).objectModel, ...
            [basePath, EnvironmentSetup.objects(objID).modelSave], ...
            metadata);
        if(flag_verbose==1)
            disp (['Wrote object LUA file :: ', ...
                EnvironmentSetup.objects(objID).modelSave]);
        end
    end
end
if ~isempty(EnvironmentSetup.combinedModel_Save)
    metadata.scaling_used = ...
        EnvironmentSetup.humanModel_ScalingAlgorithmChoice;
    metadata.objectsInfo = EnvironmentSetup.objects;
    fnc_writeCombinedLuaFile...
        ([basePath,EnvironmentSetup.combinedModel_Save],...
        metadata, humanModel, objects, customConstraints);
end

%% Visualize created model
% Function call format:1) model, 2) plotJoints, 3) plotPoints, 4) plotComs, 
% 5) plotMarkers, 6) printLabels, 7) Mesh Alpha (transparency), 
% 8) markerSize, 9)rootDisplacement
% Note that alpha transparency values are not yet allowed in octave

if(flag_plot==1)
  clf; hold on;
  fnc_plotting_plotModel (humanModel, 0, 1, 0, 0, 0, 1.0, 15, [0 0 0]);
  for objID = 1:EnvironmentSetup.nObjects
      fnc_plotting_plotModel (objects(objID).objectModel, 0, 1, 0, 1, 0, 1.0, 10, [objID*0.5 objID*0.5 0.0]);
  end
  light('Position',[2.0,-2.0,2.0],'Style','infinite');
  view([30 30]);
  axis equal; grid off;
  axis off;
  xlabel('X'); ylabel('Y'); zlabel('Z');
end
success = 1;
