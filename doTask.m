function doTask(args)
[method,source_type,info_type,source,info,extra] = args{1:end};
if strcmp(method,"LSB")
    addpath(genpath('./最不重要位隐藏算法/代码'));
    
elseif strcmp(method,"ECHO")
    addpath(genpath('./回声隐藏算法/代码'));
    
elseif strcmp(method,"DCT")
    addpath(genpath('./基于DCT的隐藏算法/代码'));
    if strcmp(source_type,"IMG") && strcmp(info_type,"IMG")
       source = IMGencodeIMG(source,info); 
    elseif strcmp(source_type,"IMG") && strcmp(info_type,"AUDIO")
       source = IMGencodeAUDIO(source,info); 
    elseif strcmp(source_type,"IMG") && strcmp(info_type,"TXT")
       source = IMGencodeTXT(source,info); 
    end
end
disp('任务完成！');
export_data(source,source_type,extra);
end