function [fract] = false_positive_rate_octave(smooth1,smooth2,reg1,reg2,der1,der2,folder)

    data_path = pwd;
    smooth1 = num2str(smooth1);
    smooth2 = num2str(smooth2);
    reg1 = num2str(reg1);
    reg2 = num2str(reg2);
    der1 = num2str(der1);
    der2 = num2str(der2);
    folder = num2str(folder);

    V1 = spm_read_vols(spm_vol(fullfile(data_path,'data',folder,...
        ['smooth_',smooth1,'_',smooth2],['reg_',reg1,'_',reg2],...
        ['der_',der1,'_',der2],'spmT_0001_thresholded.nii')));
    V2 = spm_read_vols(spm_vol(fullfile(data_path,'data',folder,...
        ['smooth_',smooth1,'_',smooth2],['reg_',reg1,'_',reg2],....
        ['der_',der1,'_',der2],'mask.nii')));
    V1 = V1(:);
    V1 = V1(~isnan(V1));
    V2 = V2(:);
    V2 = V2((V2>0));
    fract = sum(V1>0)/length(V2);
    
    save('-mat7-binary',fullfile('data',folder,['smooth_',smooth1,'_',smooth2],['reg_',reg1,'_',reg2],['der_',der1,'_',der2],'FPR.mat'),'fract')
end