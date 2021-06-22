
## Seismic Data Downloading and Processing




### Seismic Data Format Conversion

- [ObsPy](https://github.com/obspy/obspy): Data download, processing and visulization software written in Python
    - [Waveform Import/Export Plug-ins](https://docs.obspy.org/packages/index.html) | [Supported Formats](https://docs.obspy.org/packages/autogen/obspy.core.stream.read.html#obspy.core.stream.read)
    - [r16](https://github.com/d-chambers/rg16): ObsPy plugin to read data in the format of Receiver Gather 1.6-1, which is used to store data recorded by Farfield Nodal's Zland product line (no longer needed)
- [rdseed](https://github.com/iris-edu-legacy/rdseed): Convert seismic data from SEED format to other common format, e.g., SAC
    - Data extraction has some problems with the sources. We have to use the binary instead, which can be found in [IRIS](http://ds.iris.edu/pub/programs). | [Chinese install manual](https://blog.seisman.info/rdseed-install) | [Chinese note](https://blog.seisman.info/tags/SEED)
- [mseed2sac](https://github.com/iris-edu/mseed2sac): Convert miniSEED format to SAC format
- [msmod](https://seiscode.iris.washington.edu/projects/msmod): A small program to modify miniSEED header values
- [dataselect](https://seiscode.iris.washington.edu/projects/dataselect): Selection and sorting for data in miniSEED format
- [sac2mseed](https://seiscode.iris.washington.edu/projects/sac2mseed): Convert SAC format to minniSEED format
- [SAC](http://ds.iris.edu/ds/nodes/dmc/software/downloads/sac/): Seismic Analysis Code, the most commonly used seismic data processing software | [Request](http://ds.iris.edu/ds/nodes/dmc/forms/sac)
    - [SAC不同格式间的转换](https://blog.seisman.info/conversion-of-different-sac-formats) | [SAC Tools](https://github.com/core-man/SACTools)
    - [Chinese manual](https://seisman.github.io/SAC_Docs_zh) (better) | [Zhigang Peng's tutorial](http://geophysics.eas.gatech.edu/classes/SAC/) | [IRIS's manual](http://ds.iris.edu/ds/nodes/dmc/manuals/sac/) | [An intro video](https://www.youtube.com/watch?v=zZeUvHkOOAM&list=PLD4D607C2FA317E6D&index=147)
- [GIPP softwares](https://www.gfz-potsdam.de/en/section/geophysical-deep-sounding/infrastructure/geophysical-instrument-pool-potsdam-gipp/software/): a collection of software utilities for initial pre-processing of recorded data
- [CubeTools](https://digos.eu/downloads-docs/): Data Format conversion software for CUBE data
- [win32tools](http://www.hinet.bosai.go.jp/REGS/manual/dlDialogue.php?r=win32tools): Convert WIN32 format used by Hi-net, to SAC format


### Seismic Data Processing

- [SAC](http://ds.iris.edu/ds/nodes/dmc/software/downloads/sac/): Seismic Analysis Code, the most commonly used seismic data processing software | [Request](http://ds.iris.edu/ds/nodes/dmc/forms/sac)
    - [SAC Tools](https://github.com/core-man/SACTools): A collection of SAC tools written in C
    - [Chinese manual](https://seisman.github.io/SAC_Docs_zh) (better) | [Zhigang Peng's tutorial](http://geophysics.eas.gatech.edu/classes/SAC/) | [IRIS's manual](http://ds.iris.edu/ds/nodes/dmc/manuals/sac/) | [An intro video](https://www.youtube.com/watch?v=zZeUvHkOOAM&list=PLD4D607C2FA317E6D&index=147)
- [ObsPy](https://github.com/obspy/obspy): Data download, processing and visulization software written in Python
- [SeisIO.jl](https://github.com/jpjones76/SeisIO.jl): Data download, processing and visulization software written in Julia
- [GISMO](http://geoscience-community-codes.github.io/GISMO): Data download, processing and visulization software written in Matlab
- [hinet_decon](https://github.com/tktmyd/hinet_decon): A Fortran 2003 code to deconvolve Hi-net velocity record by its seismometer response by using inverse filtering technique
- [Geopsy](http://www.geopsy.org/download.php): An open source software for geophysical research and application written in C++


--------------------
## Plot

- [GMT](https://www.generic-mapping-tools.org): The most popular mapping tools in Earth Science
    - [GMT China](https://gmt-china.org/#) | [GMT Chinese Manual](https://docs.gmt-china.org/latest/)
    - [GMT gallery](https://docs.generic-mapping-tools.org/6.0/gallery.html) | [GMT中文图库](https://gmt-china.org/gallery)
    - [GMT-plotting](https://github.com/michaelgrund/GMT-plotting): Collection of GMT scripts
    - [try-GMT](https://github.com/GenericMappingTools/try-gmt): Try `GMT`, `PyGMT`, and `GMT.jl` online! All in one place!
    - [pssac](http://www.eas.slu.edu/People/LZhu/home.html): GMT-style SAC trace plotting for GMT4 | [pssac notes](https://blog.seisman.info/tags/pssac) | [pssac2 notes](https://blog.seisman.info/tags/pssac2)
- [PyGMT](https://www.pygmt.org/dev/index.html): A Python interface for GMT (in the early stages of design and implementation)
- [GMT.jl](https://github.com/GenericMappingTools/GMT.jl): GMT Library Wrapper for Julia
- [matplotlib](https://matplotlib.org/): a comprehensive library for creating static, animated, and interactive visualizations in Python
- [ObsPy](https://github.com/obspy/obspy): Data download, processing and visulization software written in Python
- [JPlotResp](http://www.isti2.com/JPlotResp): Plot amplitude and phase of instrumental responses in RESP format | [Chinese note](https://blog.seisman.info/jplotresp)
- [MoPad](http://www.larskrieger.de/mopad): Analysis and visulization of seismic moment tensor, focal mechanism | [Chinese note](https://blog.seisman.info/mopad)
- [obspy-mopad](https://docs.obspy.org/packages/autogen/obspy.imaging.scripts.mopad.html): similar to MoPad, provided by ObsPy
- [EMC visualization tools](http://ds.iris.edu/dms/products/emc/horizontalSlice.html)
- [EMC-DesktopTools](http://ds.iris.edu/ds/products/emc-desktoptools/)
    - [EMC-ParaView](https://github.com/iris-edu/EMC-ParaView): A set of Python programmable filters/sources to allow ParaView open-source, multi-platform data analysis and visualization application to display EMC netCDF/GeoCSV models along with other auxiliary Earth data
- [3D Focal Mechanisms](https://www.usgs.gov/software/3d-focal-mechanisms): View earthquake focal mechanism symbols three dimensionally
- [SeisTomoPy](https://seiscode.iris.washington.edu/projects/seistomopy): Visulization of 3D tomography models and calculate traveltime in 3D model
- [SubMachine](https://www.earth.ox.ac.uk/~smachine/cgi/index.php): Web-Based Tools for Exploring Seismic Tomography and Other Models of Earth’s Deep Interior
- [Tomoeye](http://www.iearth.org.au/codes/Tomoeye): a set of programs for tomographic model visualization written in MatLab 6.1 script

---------------------------


