
## Seismic Data Downloading and Processing

### Data Request Tools

- [FDSN Web Services](http://www.fdsn.org/webservices) | [Chinese note](https://blog.seisman.info/web-service-clients)
- [IRIS DMC](https://ds.iris.edu/ds/nodes/dmc/): IRIS Data Management Center
    - [Web Services](http://service.iris.edu): [clients](http://service.iris.edu/clients/)
        - [FDSNWS](http://service.iris.edu/fdsnws/): [Chinese note of IRIS Fetch scripts](https://blog.seisman.info/web-service-fetch-scripts)
        - [IRISWS](http://service.iris.edu/irisws/): e.g., [fedcatalog](http://service.iris.edu/irisws/fedcatalog/1/) & [sacpz](http://service.iris.edu/irisws/fedcatalog/1/)
        - [MUSTANG](http://service.iris.edu/mustang/): data quality analysis services
        - [PH5WS](http://service.iris.edu/ph5ws/): provide PH5 data and metadata | [Accessing PH5 Archive with FetchData](https://ds.iris.edu/ds/nodes/dmc/tutorials/accessing-ph5-archive-with-fetchdata/) | [wiki](https://github.com/PIC-IRIS/PH5/wiki)
    - [ROVER](https://iris-edu.github.io/rover): A command line tool to robustly retrieve geophysical timeseries data from data centers
    - [BREQ_FAST](http://ds.iris.edu/ds/nodes/dmc/manuals/breq_fast): Seismic data request by sending email | [Chinese note](https://blog.seisman.info/tags/breq_fast)
    - [IRIS Wilber 3](http://ds.iris.edu/wilber3/find_event): A web GUI to request waveform data of individual seismic events | [Chinese note](https://blog.seisman.info/wilber3)
    - [jweed](http://ds.iris.edu/ds/nodes/dmc/software/downloads/jweed): Data request client written in Java
- [SOD](http://www.seis.sc.edu/sod): a very powerful seismic data request tool | [Chinese tutorial](https://blog.seisman.info/sod-notes) | [SeisMan's recipes](https://github.com/seisman/SODrecipes) | [coreman's recipes](https://github.com/core-man/seismic-data)
- [ObsPy](https://github.com/obspy/obspy): Data download, processing and visulization software written in Python
    - [Retrieving Data from Data Centers](http://docs.obspy.org/tutorial/code_snippets/retrieving_data_from_datacenters.html): e.g., `FDSN Web Services` & `IRIS Web Services`
    - Some scripts
        - [Live Jupyter Notebooks for Seismology](http://www.seismo-live.org/): Workshops - [ORFEUS_lisbon_2017_EIDA_webservices](https://krischer.github.io/seismo_live_build/html/Workshops/ORFEUS_lisbon_2017_EIDA_webservices_wrapper.html)
        - [ObsPy Teaching Material](https://github.com/obspy/docs): Workshops / Posters / Presentations
        - [EIDA's examples](https://www.orfeus-eu.org/data/eida/webservices/examples/workflow/): `using direct HTTP requests` and `ObsPy FDSN Client`
        - [AusPass's examples](http://auspass.edu.au/help/obspy_request.html): Access AusPass data with ObsPy
        - [fetch_Events](https://github.com/jbrussell/fetch_EVENTS): Download event data from IRIS-DMC
        - [fetch_NOISE](https://github.com/jbrussell/fetch_NOISE): Download daily seismograms from the IRIS-DMC
- [SAC](http://ds.iris.edu/ds/nodes/dmc/software/downloads/sac/): Seismic Analysis Code, the most commonly used seismic data processing software | [Request](http://ds.iris.edu/ds/nodes/dmc/forms/sac)
    - [Data Access](http://ds.iris.edu/files/sac-manual/manual/data_access.html)
    - [Chinese manual](https://seisman.github.io/SAC_Docs_zh) (better) | [Zhigang Peng's tutorial](http://geophysics.eas.gatech.edu/classes/SAC/) | [IRIS's manual](http://ds.iris.edu/ds/nodes/dmc/manuals/sac/) | [An intro video](https://www.youtube.com/watch?v=zZeUvHkOOAM&list=PLD4D607C2FA317E6D&index=147)
- [SeisIO.jl](https://github.com/jpjones76/SeisIO.jl): Data download, processing and visulization software written in Julia
- [GISMO](http://geoscience-community-codes.github.io/GISMO): Data download, processing and visulization software written in Matlab
- [HinetPy](https://seisman.github.io/HinetPy): Request data from Hi-net server, written in Python | [Hinet notes](https://blog.seisman.info/hinet)
- [FnetPy](https://github.com/seisman/FnetPy): A Python package to request seismic waveform data from F-net
- [StrongMotion Fetch](https://www.usgs.gov/software/strongmotion-fetch): download and/or process strong motion data from various networks


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


