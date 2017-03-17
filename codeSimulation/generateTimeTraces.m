function stacks = generateTimeTraces(Optics, Cam, Fluo, Grid)
%Generate the image sequence of blinking emitters.
%
%Inputs:
% Optics: struct
% Cam: struct
% Fluo: struct
% Grid: struct
%
%Outputs:
% stacks: 3-dimensional array of pixel values containing individual
%         frames

% Author: Marcel Stefko
% Copyright � 2017 Laboratory of Experimental Biophysics,
% �cole Polytechnique F�d�rale de Lausanne
% marcel.stefko@epfl.ch
 
% This file is part of STORMsim, a software package for simulating 
% fluorescent microscopy data.
%
% Several parts of this package's core were adapted under GPL from SOFIsim,
% a package developed by Arik Girsault and Tomas Lukes of Laboratoire 
% d'Optique Biom�dicale at EPFL. <http://lob.epfl.ch/>
%
% STORMsim is free software: you can redistribute it and/or modify
% it under the terms of the GNU General Public License as published by
% the Free Software Foundation, either version 3 of the License, or
% (at your option) any later version.
%
% STORMsim is distributed in the hope that it will be useful,
% but WITHOUT ANY WARRANTY; without even the implied warranty of
% MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
% GNU General Public License for more details.
%
% You should have received a copy of the GNU General Public License
% along with STORMsim.  If not, see <http://www.gnu.org/licenses/>.

% conversion of time unit in frames
Fluo.Ton = Fluo.Ton * Cam.acq_speed; 
Fluo.Toff = Fluo.Toff * Cam.acq_speed;
Fluo.Tbl = Fluo.Tbl * Cam.acq_speed;

% time Traces of the digital signal recorded at the camera
stacks = simStacks(Optics.frames,Optics,Cam,Fluo,Grid);
end

