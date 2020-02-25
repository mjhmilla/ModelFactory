%% ModelFactory
% Licensed under the zlib license. See LICENSE for more details.

function [marker_names, marker_values] = ...
    fnc_addIORHeiAgeMarkersToSegments (model, modelSegment_typeName, ...
                                            inParam_PersonInfo, segmentID)

comp_rotMatrix =  @(n, alpha)  ...
    [n(1)^2*(1 - cos(alpha) ) + cos(alpha)			, n(1)*n(2)*(1 - cos(alpha)) - n(3)*sin(alpha)	, n(1)*n(3)*(1 - cos(alpha)) + n(2)*sin(alpha); ...
    n(2)*n(1)^2*(1 - cos(alpha) ) + n(3)*sin(alpha), n(2)^2*(1 - cos(alpha)) + cos(alpha)			, n(2)*n(3)*(1 - cos(alpha)) - n(1)*sin(alpha); ...
    n(3)*n(1)*(1 - cos(alpha) ) - n(2)*sin(alpha)	, n(3)*n(2)*(1 - cos(alpha)) + n(1)*sin(alpha)	, n(3)^2*(1 - cos(alpha)) + cos(alpha)];

switch modelSegment_typeName
    case 'Segment_Pelvis'
        marker_names = char('L_IAS','R_IAS','L_IPS','R_IPS');
        marker_values(1,:) = [0.75*model{segmentID}.length,  0.5*model{segmentID}.length, 0.6*model{segmentID}.length]; 
        marker_values(2,:) = [0.75*model{segmentID}.length, -0.5*model{segmentID}.length, 0.6*model{segmentID}.length]; 
        marker_values(3,:) = [-0.7*model{segmentID}.length,  0.7*model{segmentID}.length, 0.7*model{segmentID}.length]; 
        marker_values(4,:) = [-0.7*model{segmentID}.length, -0.7*model{segmentID}.length, 0.7*model{segmentID}.length]; 
    case {'Segment_MiddleTrunk','Segment_MiddleTrunk_Sagittal'}
        marker_names = char('SXS','MAI','LV1','LV3');
        marker_values(1,:) = [  0.5*model{segmentID}.length, 0.0 , 0.50*model{segmentID}.length]; 
        marker_values(2,:) = [ -0.5*model{segmentID}.length, 0.0 , 0.50*model{segmentID}.length]; 
        marker_values(3,:) = [ -0.5*model{segmentID}.length, 0.0 , 0.00*model{segmentID}.length]; 
        marker_values(4,:) = [ -0.5*model{segmentID}.length, 0.0 ,-0.25*model{segmentID}.length]; 
    case 'Segment_UpperTrunk'
        marker_names = char('CV7','SJN','TV2');
        marker_values(1,:) = [-0.40*model{segmentID}.length,  0.0 , 0.8*model{segmentID}.length]; 
        marker_values(2,:) = [ 0.42*model{segmentID}.length,  0.0 , 0.6*model{segmentID}.length]; 
        marker_values(3,:) = [-0.40*model{segmentID}.length,  0.0 , 0.6*model{segmentID}.length]; 
    case 'Segment_Head'
        marker_names = char('L_HEAD','R_HEAD','SGL');
        marker_values(1,:) = [                        0.0,  0.3*model{segmentID}.length, 0.6*model{segmentID}.length]; 
        marker_values(2,:) = [                        0.0, -0.3*model{segmentID}.length, 0.6*model{segmentID}.length]; 
        marker_values(3,:) = [0.3*model{segmentID}.length,                          0.0, 0.6*model{segmentID}.length ]; 
    case 'Segment_Thigh_R'
        marker_names = char('R_FTC','R_FLE','R_FME');
        marker_values(1,:) = [0.0 , -0.2*model{segmentID}.length,  -0.33*model{segmentID}.length]; 
        marker_values(2,:) = [0.0 , -0.15*model{segmentID}.length, -model{segmentID}.length];     
        marker_values(3,:) = [0.0 ,  0.15*model{segmentID}.length, -model{segmentID}.length];      
    case 'Segment_Thigh_L'
        marker_names = char('L_FTC','L_FLE','L_FME');
        marker_values(1,:) = [0.0,   0.2*model{segmentID}.length,  -0.33*model{segmentID}.length]; 
        marker_values(2,:) = [0.0,  0.15*model{segmentID}.length,       -model{segmentID}.length]; 
        marker_values(3,:) = [0.0, -0.15*model{segmentID}.length,       -model{segmentID}.length]; 
    case 'Segment_Shank_R'
        parentID = model{segmentID}.parentID;
        marker_names = char('R_FAX','R_TTC','R_FAL','R_TAM');
        marker_values(1,:) = [0.0                          ,   -0.2*model{segmentID}.length,  -0.05*model{segmentID}.length]; 
        marker_values(2,:) = [0.05*model{segmentID}.length ,                            0.0,  -0.15*model{segmentID}.length]; 
        marker_values(3,:) = [0.0                          ,  -0.15*model{segmentID}.length, -model{segmentID}.length      ]; 
        marker_values(4,:) = [0.0                          ,   0.15*model{segmentID}.length, -model{segmentID}.length      ];       
    case 'Segment_Shank_L'
        parentID = model{segmentID}.parentID;
        marker_names = char('L_FAX','L_TTC','L_FAL','L_TAM');
        marker_values(1,:) = [0.0                          ,   0.2*model{segmentID}.length,  -0.05*model{segmentID}.length]; 
        marker_values(2,:) = [0.05*model{segmentID}.length ,                            0.0,  -0.15*model{segmentID}.length]; 
        marker_values(3,:) = [0.0                          ,   0.15*model{segmentID}.length, -model{segmentID}.length      ]; 
        marker_values(4,:) = [0.0                          ,  -0.15*model{segmentID}.length, -model{segmentID}.length      ];       
    case 'Segment_Foot_R'
        parentID = model{segmentID}.parentID;
        marker_names = char('R_FM1','R_FM2','R_FM5','R_FCC');
        marker_values(1,:) = [ 0.7*model{segmentID}.length,  0.1*model{segmentID}.length, -0.15*model{segmentID}.length]; 
        marker_values(2,:) = [ 0.7*model{segmentID}.length,  0.0*model{segmentID}.length, -0.15*model{segmentID}.length]; 
        marker_values(3,:) = [ 0.7*model{segmentID}.length, -0.1*model{segmentID}.length, -0.15*model{segmentID}.length];
        marker_values(4,:) = [-0.3*model{segmentID}.length,  0.0*model{segmentID}.length, -0.15*model{segmentID}.length];        
    case 'Segment_Foot_L'
        parentID = model{segmentID}.parentID;
        marker_names = char('L_FM1','L_FM2','L_FM5','L_FCC');
        marker_values(1,:) = [ 0.7*model{segmentID}.length, -0.1*model{segmentID}.length, -0.15*model{segmentID}.length]; 
        marker_values(2,:) = [ 0.7*model{segmentID}.length,  0.0*model{segmentID}.length, -0.15*model{segmentID}.length]; 
        marker_values(3,:) = [ 0.7*model{segmentID}.length,  0.1*model{segmentID}.length, -0.15*model{segmentID}.length];
        marker_values(4,:) = [-0.3*model{segmentID}.length,  0.0*model{segmentID}.length, -0.15*model{segmentID}.length];                
    case 'Segment_UpperArm_R'
        marker_names = char('R_SAE','R_HUM','R_HLE');
        marker_values(1,:) = [0.0, 0.0, 0.1*model{segmentID}.length]; 
        marker_values(2,:) = [0.0, -0.15*model{segmentID}.length, -0.67*model{segmentID}.length]; 
        marker_values(3,:) = [0.0, -0.15*model{segmentID}.length, -model{segmentID}.length]; 
    case 'Segment_UpperArm_L'
        marker_names = char('L_SAE','L_HUM','L_HLE');
        marker_values(1,:) = [0.0, 0.0, 0.1*model{segmentID}.length]; 
        marker_values(2,:) = [0.0, 0.15*model{segmentID}.length, -0.5*model{segmentID}.length]; 
        marker_values(3,:) = [0.0, 0.15*model{segmentID}.length, -model{segmentID}.length]; 
    case 'Segment_LowerArm_R'
        parentID = model{segmentID}.parentID;
        marker_names = char('R_USP','R_RSP');
        marker_values(1,:) = [ 0.2*model{segmentID}.length, 0.0, -model{segmentID}.length]; 
        marker_values(2,:) = [-0.2*model{segmentID}.length, 0.0, -model{segmentID}.length]; 
    case 'Segment_LowerArm_L'
        parentID = model{segmentID}.parentID;
        marker_names = char('L_USP','L_RSP');
        marker_values(1,:) = [-0.2*model{segmentID}.length, 0.0, -model{segmentID}.length]; 
        marker_values(2,:) = [ 0.2*model{segmentID}.length, 0.0, -model{segmentID}.length]; 
    case 'Segment_Hand_R'
        marker_names = char('R_HM2');
        marker_values(1,:) = [0.0, 0.0, -0.8*model{segmentID}.length]; 
    case 'Segment_Hand_L'
        marker_names = char('L_HM2');
        marker_values(1,:) = [0.0, 0.0, -0.8*model{segmentID}.length]; 
    case 'Segment_Torso'
        marker_names = char('L_IAS','R_IAS','L_IPS','R_IPS','C7');
        marker_values(1,:) = [0.175*model{segmentID}.length,  0.2*model{segmentID}.length, 0.2*model{segmentID}.length];   
        marker_values(2,:) = [0.175*model{segmentID}.length, -0.2*model{segmentID}.length, 0.2*model{segmentID}.length];   
        marker_values(3,:) = [-0.15*model{segmentID}.length,  0.12*model{segmentID}.length, 0.25*model{segmentID}.length]; 
        marker_values(4,:) = [-0.15*model{segmentID}.length, -0.12*model{segmentID}.length, 0.25*model{segmentID}.length]; 
        marker_values(5,:) = [-0.15*model{segmentID}.length, 0.0 , 0.95*model{segmentID}.length]; 
    case 'Segment_Pelvis_Sagittal'
        marker_names = char('IAS','IPS');
        marker_values(1,:) = [0.75*model{segmentID}.length,  0.0, 0.6*model{segmentID}.length]; 
        marker_values(2,:) = [-0.7*model{segmentID}.length, 0.0, 0.7*model{segmentID}.length];  
    case 'Segment_UpperTrunk_Sagittal'
        marker_names = char('C7','SJN');
        marker_values(1,:) = [-0.4*model{segmentID}.length, 0.0 , 0.8*model{segmentID}.length]; 
        marker_values(2,:) = [0.42*model{segmentID}.length, 0.0 , 0.6*model{segmentID}.length]; 
    case 'Segment_Head_Sagittal'
        marker_names = char('HEAD','SGL');
        marker_values(1,:) = [ 0.*model{segmentID}.length, 0.0, 0.6*model{segmentID}.length];  
        marker_values(2,:) = [0.3*model{segmentID}.length,  0.0, 0.6*model{segmentID}.length]; 
    case 'Segment_Thigh_Sagittal'
        marker_names = char('THI','FLE');
        marker_values(1,:) = [0.0 , 0.0, -0.33*model{segmentID}.length]; 
        marker_values(2,:) = [0.0 , 0.0, -model{segmentID}.length]; 
    case 'Segment_Shank_Sagittal'
        marker_names = char('TTC','ANK');
        marker_values(1,:) = [0.05*model{segmentID}.length , 0.0, -0.15*model{segmentID}.length]; 
        marker_values(2,:) = [0.0 , 0.0, -model{segmentID}.length]; 
    case 'Segment_Foot_Sagittal'
        parentID = model{segmentID}.parentID;
        marker_names = char('FM2','FCC');
        marker_values(1,:) = [ 0.7*model{segmentID}.length,  0.0, -0.15*model{parentID}.length]; 
        marker_values(2,:) = [-0.3*model{segmentID}.length,  0.0, -0.15*model{segmentID}.length];                        
    case 'Segment_UpperArm_Sagittal'
        marker_names = char('HUM','HLE');
        marker_values(1,:) = [0.0, 0.0, -0.67*model{segmentID}.length]; 
        marker_values(2,:) = [0.0, 0.0, -model{segmentID}.length]; 
    case 'Segment_LowerArm_Sagittal'
        marker_names = char('RSP');
        marker_values(1,:) = [0.0, 0.0, -model{segmentID}.length]; 
    case 'Segment_Hand_Sagittal'
        marker_names = char('FIN');
        marker_values(1,:) = [0.0, 0.0, -model{segmentID}.length]; 
    otherwise
        marker_names = char('');
        marker_values = [];
end
