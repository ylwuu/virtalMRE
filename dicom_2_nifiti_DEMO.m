% Only one input parameter is dicom file location, and then you can obtain
% the bvals, bvecs, Manufaturer and the name of converted nii file name.
% And then you can attempt invoke load_nii or load_untouch_nii to get img.
% If you need another info, you can modify dicm2nii.m just like add bvals,
% bvecs etc. information.
dcm_file_location = 'D:\MRI_DATA\DXI\AP_FULL_EP2D_DIFF_QSPACE_DKI_NODDI_P2_DFC_MIX_0012';

nii_file_location = dcm_file_location;
[bvals, bvecs, Manufaturer,file_name] = dicm2nii(dcm_file_location, nii_file_location,'nii');

data = load_untouch_nii([nii_file_location,'\',file_name,'.nii']);
image = data.img;