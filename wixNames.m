clear all; close all; clc

nme = "D:\OneDrive - uantwerpen\C++\discrete_scan_parallel\Release";

inject = @(str)sprintf("<Component Id=""%s"" Guid=""*"">\n<File Id=""%s"" Source=""$(var.vrepVIVE_TargetDir)%s"" KeyPath=""yes""/>\n</Component>"...
    ,erase(str,'-'),erase(str,'-'),str);
% inject = @(str)sprintf("<ComponentRef Id=""%s"" />", erase(str,'-'));
list = dir(strcat(nme,"\vtk*.dll"));

for i = 1 : numel(list)
    if (list(i).bytes>0)
        disp(inject(list(i).name))
        fprintf('\n')
    end
end