
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
