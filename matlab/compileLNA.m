% compileLNA.m converts all of the auto-generated functions into C code 
% and produce the Matlab executable
% input:
%  model: name of the model
%  optional key-value-pair:
%    - Linker_flags: additional flags to be passed to the linker
%    - Cpp_flags: additional flags to be passed to the C++ (not C) compiler
% output:
%  executable is stored in $LNA_BASE/models/$modelName/ directory

function compileLNA(modelName, varargin)
p = inputParser;
addParameter(p, 'Linker_flags', '')
addParameter(p, 'Cpp_flags', '')
parse(p, varargin{:})

Linker_flags = p.Results.Linker_flags;
Cpp_Flags = p.Results.Cpp_flags;

lnaDir = fullfile(fileparts(fileparts(mfilename('fullpath'))));
modelDir = [fullfile(fileparts(fileparts(mfilename('fullpath'))), 'models', modelName)];

%% compile C code
disp('Compiling autogenerated code...')
C_source = dir([modelDir '/C/*.c']);
cmd_compile = [ sprintf(['mex -v CFLAGS=''$CFLAGS -Wno-incompatible-pointer-types'' -c -outdir %s/C ' ...
    '-I%s/C '], modelDir, modelDir), ...
    sprintf([modelDir '/C/%s '], C_source.name)];
eval(cmd_compile)

%% compile CPP code
disp('Compiling LNA code...')
cmd_compile_cpp = ['mex CXXFLAGS=''$CXXFLAGS -fPIC' Cpp_Flags ''' -c -outdir ' lnaDir '/src/ ' lnaDir '/src/computeLinearNoise.cpp ' lnaDir '/src/mexLNA.cpp ' ...
    ' -I' modelDir '/C -I/usr/local/include -I' lnaDir '/include -I' lnaDir '/libraries/install/blitz-1.0.1/include -I' lnaDir '/libraries/install/cvodes-2.7.0/include'];
eval( cmd_compile_cpp )

%% link executable
disp('Linking...')
Cobj = dir([modelDir '/C/*.o']);
cmd_link = [ sprintf('mex -cxx -output %s/%s_LNA_mex  %s/src/computeLinearNoise.o %s/src/mexLNA.o %s ', ...
    modelDir, modelName, lnaDir, lnaDir, strjoin(fullfile(modelDir, 'C', {Cobj.name}))) ... libstdcpp ...
    Linker_flags ' -L' lnaDir '/libraries/install/blitz-1.0.1/lib -L' lnaDir '/libraries/install/cvodes-2.7.0/lib/ ' ...
    ' -lsundials_cvodes -lsundials_nvecserial -lblitz -lstdc++']; 
eval(cmd_link)
disp('Done')

%% generate wrapper
disp('Generating wrapper function...')
%
wrapper_str = sprintf([
'%%Wrapper function auto-generated by LNA++\n'...
'%%Usage:\n'...
'%%\t[MRE,Var,dMREdTheta,dVardTheta,dMRE2dTheta2,dVar2dTheta2] = %s_LNA(Theta, timepoints, [Y0], [V0], [merr], [obsVar])\n'...
'%%\tTheta: vector of model parameters\n'...
'%%\ttimepoints: vector of output times\n'...
'%% Optional arguments:\n'...
'%%\tobsVar: vector of indices (beginning with 1) corresponding to the species to output\n'...
'%%\tmerr: either a single number, or a vector the length of obsVar corresponding to the measurement error of each species\n'...
'%%\tY0: initial values for each species\n'...
'%%\tV0: initial values for each entry of the (upper triangular portion of the) covariance matrix\n'...
'%%\tin the default Matlab (i.e. column major) ordering\n'...
'%%Output:\n'...
'%%\tMRE: solution of the macroscopic rate equation for the observed variables specified\n' ...
'%%\tVar: block cross-covariance matrix for the observed variables specified\n'...
'%%\tdMREdTheta: sensitivity tensor of the MRE for each observed variable with respect to each parameter, at each time point\n' ...
'%%\tdVardTheta: sensitivity tensor of the block cross-covariance for each entry of the covariance matric w.r.t. all parameters\n'...
'%%\td2MREdTheta2: second order sensitivity tensor of the MRE solution\n'...
'%%\td2VardTheta2: second order sensitivity tensor of the block cross-covariance solution\n'...
'%%The algorithm uses the number of output arguments to decide whether or not to compute sensitivities, so it is less computationally\n'...
'%%intensive if fewer output arguments are specified\n'...
'function varargout = %s_LNA(Theta, timepoints, varargin)\n' ...'addpath(''models/%s/matlab'')\n'...'addpath(''models/%s/mex'')\n'...
'if nargout > 4\n'...
'    [Y Sigma Sens_MRE Sens_Var Sens2_MRE Sens2_Var] =  %s_LNA_mex(Theta, timepoints, varargin);                   \n'...
'    Y       = squeeze(Y);                                                                                  \n'...
'    Sigma   = squeeze(Sigma);                                                                              \n'...
'    Sens_MRE  = squeeze(Sens_MRE);                                                                         \n'...
'    Sens_Var  = squeeze(Sens_Var);                                                                         \n'...
'    Sens2_MRE = squeeze(Sens2_MRE);                                                                        \n'...
'    Sens2_Var = squeeze(Sens2_Var);                                                                        \n'...
'    varargout = {Y, Sigma, Sens_MRE, Sens_Var, Sens2_MRE, Sens2_Var};                                      \n'...
'elseif nargout > 2                                                                                         \n'...
'    [Y Sigma Sens_MRE Sens_Var] =  %s_LNA_mex(Theta, timepoints, varargin);                                       \n'...
'    Y       = squeeze(Y);                                                                                  \n'...
'    Sigma   = squeeze(Sigma);                                                                              \n'...
'    Sens_MRE  = squeeze(Sens_MRE);                                                                         \n'...
'    Sens_Var  = squeeze(Sens_Var);                                                                         \n'...
'    varargout = {Y, Sigma, Sens_MRE, Sens_Var};                                                            \n'...
'else                                                                                                       \n'...
'    [Y Sigma] =  %s_LNA_mex(Theta, timepoints, varargin);                                                         \n'...
'    Y       = squeeze(Y);                                                                                  \n'...
'    Sigma   = squeeze(Sigma);                                                                              \n'...
'    varargout = {Y, Sigma};                                                                                \n'...
'end                                                                                                        \n'...
'                                                                                                           \n'], ...
    modelName, modelName, modelName, modelName, modelName);

% write wrapper to a file
f = fopen(sprintf('%s/%s_LNA.m',modelDir,modelName), 'w');

fprintf(f, '%s', wrapper_str);
fclose(f);
disp('Done')

end
