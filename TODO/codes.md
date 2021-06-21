
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
## Traveltime Calculation/Ray Tracing

- [TauP](http://www.seis.sc.edu/TauP): Calculate travel times, ray paths, pierce and turning points etc. | [Chinese introduction](https://blog.seisman.info/tags/TauP)
- [obspy.taup](http://docs.obspy.org/packages/obspy.taup.html): TauP, rewritten in Python
- iaspei-tau traveltime table package
    - Arthur Snoke's version: Traveltime calculator for iasp91 and AK135 models | [IASPEI](http://www.iaspei.org/downloads) | [IRIS code](https://seiscode.iris.washington.edu/projects/iaspei-tau)
    - [B.L.N. Kennett and Ray Buland's version](http://rses.anu.edu.au/seismology/soft/ttsoft.html): Calculation of travel times and ellipticity corrections for iasp91 and AK135 models | [Some revisions to compile the codes](https://github.com/seisman/TravelTimeEllipcityCorrection)
    - [George Helffrich's version](https://members.elsi.jp/~george/sac-bugs.html#ttimes): Traveltime calculator for iasp91, AK135, PREM etc.
- [Cake](https://pyrocko.org): Traveltime calculation software, written in Python
- [fast_methods](https://github.com/jvgomez/fast_methods): N-Dimensional Fast Methods: Fast Marching, Fast Sweeping, Group Marching, Fast Iterative, etc. in Cartesian coordinate written in C++
- [FM3D](http://rses.anu.edu.au/seismology/soft/fmmcode): 3D traveltime calculation using Fast Marching Method in spherical coordinates written in Fortran | [FM3D at iEarth](http://www.iearth.org.au/codes/3Dfastmarching/)
- [pykonal](https://github.com/malcolmw/pykonal): 2D/3D traveltime calculator using Fast Marching Method for eikonal equation in Cartesian and spherical coordinates
- [scikit-fmm](https://github.com/scikit-fmm/scikit-fmm): Fast marching method in Cartesian coordinates written in Python
- [pySeismicFMM](https://github.com/gozwei/pySeismicFMM): Python based travel time calculation in regular 2D and 3D grids in Cartesian and geographic coordinates using Fast Marching Method
- [RSTT](https://www.sandia.gov/rstt/): Regional Seismic Travel Time
- [ANISOtime](http://www-solid.eps.s.u-tokyo.ac.jp/~dsm/anisotime.html): Traveltime calculation for transversely isotropic (TI) spherically symmetric models
- [Surface Wave Ray Tracing with Azimuthal Anisotropy](http://www.spice-rtn.org/library/software/traceswani/softwarerelease.2006-11-16.2126060784.html): Surface Wave Ray Tracing with Azimuthal Anisotropy | [Lapo Boschi's homepage](http://hestia.lgs.jussieu.fr/~boschil/downloads.html)

## Synthetic Seismograms

### Ray theory in 1D layered Earth

- [aser](http://www.eas.slu.edu/People/LZhu/home.html): Calculate synthetic seismograms based on Generalized Ray Theory
- [Ray theory](http://www.spice-rtn.org/library/software/Raytheory.html): Ray-theoretical approach to the calculation of synthetic seismograms in global Earth models
- [Generalized ray in CPS330](http://www.eas.slu.edu/eqc/eqccps.html): Collection of programs for calculating theorectical seismogram, receiver function, surface wave dispersion curve et al. | [Chinese install introduction](https://blog.seisman.info/cps330-install) and [Chinese introdution](https://blog.seisman.info/cps330)
- [Asymptotic ray theory in CPS330](http://www.eas.slu.edu/eqc/eqccps.html): Collection of programs for calculating theorectical seismogram, receiver function, surface wave dispersion curve et al. | [Chinese install introduction](https://blog.seisman.info/cps330-install) and [Chinese introdution](https://blog.seisman.info/cps330)
- [WKBJ method in seisan](http://seisan.info): [Seismology at GEUS](http://seis.geus.net)
- [CRT](http://seis.karlov.mff.cuni.cz/software/sw3dcd21/crt/crt.htm): Complete ray tracing subroutine package

### Reflectivity method in 1D layered Earth

- [fk](http://www.eas.slu.edu/People/LZhu/home.html): Calculate synthetic seismograms in layered isotropic models, using frequency-wavenumber method | [Chinese introduction](https://blog.seisman.info/fk-notes) | [Intall fk](https://blog.seisman.info/fk-install)
- [QSEIS](https://www.gfz-potsdam.de/en/section/physics-of-earthquakes-and-volcanoes/infrastructure/tool-development-lab/): Calculating synthetic seismograms based on a layered viscoelastic half-space earth model
- [Reflectivity method](http://www.spice-rtn.org/library/software/ERZSOL3.html): Calculating the response of a layered uniform solid layers to excitation by a point moment tensor source using the reflectivity method
- [telewavesim](https://paudetseis.github.io/Telewavesim/): Calculate teleseismic body-wave synthetics using the matrix propagator method written in Python and Fortran
- [RMATRIX](http://seis.karlov.mff.cuni.cz/software/sw3dcd22/rmatrix/rmatrix.htm): Calculate the frequency-dependent transmission coefficients written in Fortran
- [Syn_seis](https://github.com/akuhara/Syn_seis): compute synthetic seismograms for an incidence P or SV wave to 1-D layered structure
- [rf_respknt](https://github.com/Chuanming-Liu/rf_respknt): Reflection matrix approach to computing the seismic response of a cylindrically symmetric medium
- [PyLayeredModel](https://github.com/harrymd/PyLayeredModel): Python wrappers for the CPS and Rftn libraries for layered models in seismology


### Wavenumber integration (discrete wavenumber?) in 1D layered Earth

- [Wavenumber integration method in CPS330](http://www.eas.slu.edu/eqc/eqccps.html): Collection of programs for calculating theorectical seismogram, receiver function, surface wave dispersion curve et al. | [Chinese install introduction](https://blog.seisman.info/cps330-install) and [Chinese introdution](https://blog.seisman.info/cps330)
- [Discrete wavenumber method in seisan](http://seisan.info): [Seismology at GEUS](http://seis.geus.net)


### Modal Summation in 1D layered Earth

- [Modal Summation in CPS330](http://www.eas.slu.edu/eqc/eqccps.html): Collection of programs for calculating theorectical seismogram, receiver function, surface wave dispersion curve et al. | [Chinese install introduction](https://blog.seisman.info/cps330-install) and [Chinese introdution](https://blog.seisman.info/cps330)


### Reflectivity method in 1D spherical Earth

- [yaseis](https://seiscode.iris.washington.edu/projects/yaseis): Calculate synthetic seismograms in spherically layered isotropic models, using frequency-wavenumber method

### Normal modes in 1D spherical Earth

- [CIG's Mineos](https://github.com/geodynamics/mineos): Computes synthetic seismograms in a spherically symmetric non-rotating Earth by summing normal modes
- [Colleen Dalton's Mineos](https://github.com/jbrussell/MINEOS): All the tools one should need to compile and run the MINEOS program, including MATLAB driver scripts.
    - [Matlab to MINEOS](https://github.com/jbrussell/matlab_to_mineos): Wrapper scripts for running MINEOS through MATLAB.
    - [MINEOS_synthetics](https://github.com/jbrussell/MINEOS_synthetics): Calculate dispersion tables and synthetic seismograms for layered models using MINEOS and idagrn6 housed within MATLAB wrappers
- [QSSP](https://www.gfz-potsdam.de/en/section/physics-of-earthquakes-and-volcanoes/infrastructure/tool-development-lab/): Calculating complete synthetic seismograms of a spherical earth using the normal mode theory
- [Normal modes](http://www.spice-rtn.org/library/software/Normal%20Modes.html): Normal-mode based computation of seismograms for spherically symmetric Earth models
- DISPER80: Calculation of normal modes, which is a very old fortran code. You have to ask for it from someone who conducts surface-wave studies.
- [Normal-mode](https://github.com/nqdu/Normal-mode): A fortran program to compute normal mode eigenfunctions and eigenvalues for SNREI earth, and synthetic seismograph
- [Generalized Eigenproblem Spectral Collocation](https://github.com/mdenolle/gesc)


### Direct solution method in 1D spherical Earth

- [DSM](http://www-solid.eps.s.u-tokyo.ac.jp/~dsm/software/software.htm): Computing synthetic seismograms in spherically symmetric transversely isotropic (TI) media using the Direct Solution Method | [updated version](http://www.eri.u-tokyo.ac.jp/people/takeuchi/)
- [GEMINI](http://www.spice-rtn.org/library/software/GEMINI.html): Calculation of synthetic seismograms for global, spherically symmetric media based in direct evaluation of Green's functions (The files seem wrong)
- [DGRFN](https://www.usgs.gov/software/direct-greens-function-synthetic-seismograms): Calculate synthetic seismograms on a radially stratified model


### Finite Difference Methods

- [SOFI2D](https://git.scc.kit.edu/GPIAG-Software/SOFI2D): 2D finite-difference seismic P-SV simulation | [Chinese note](https://blog.seisman.info/sofi2d-notes)
- [SOFI2D_sh](https://git.scc.kit.edu/GPIAG-Software/SOFI2D_sh): 2D finite-difference seismic SH-wave simulation
- [SOFI3D](https://git.scc.kit.edu/GPIAG-Software/SOFI3D): 3D finite-difference seismic wave simulation
- [FD2D](http://www.spice-rtn.org/library/software/Fd2d.html): A very simple training code for 2D finite difference
- [FD3S](http://www.spice-rtn.org/library/software/FD3S.html): 3D finite-difference seismic wave simulation in a spherical section
- [FD1D](http://www.nuquake.eu/Computer_Codes/1dfd.htm)
    - [1DFD_DS](http://www.spice-rtn.org/library/software/1DFDDS.html): 1D finite-difference seismic simulation using the displacement-stress staggered-grid
    - [1DFD_DVS](http://www.spice-rtn.org/library/software/1DFDDVS.html): 1D finite-difference seismic simulation using the displacement-velocity-stress staggered-grid
    - [1DFD_VS](http://www.spice-rtn.org/library/software/1DFDVS.html): 1D finite-difference seismic simulation using the velocity-stress staggered-grid
- [2DFD_DVS](http://www.nuquake.eu/Computer_Codes/2dfd.htm): Computation of seismic wavefields in 2D heterogeneous structures with planar free surface due to linear double-couple source or linear single force or plane-wave incidence
- [FDSim3D](http://www.nuquake.eu/Computer_Codes/3dfd.htm): Computation of seismic wavefields in 3D heterogeneous surface geological structures with planar free surface due to surface and near-surface point double couple sources or by a vertically incident plane wave.
- [SEISMIC_CPML](https://github.com/geodynamics/seismic_cpml): 2D/3D Finite-Difference Seismic Wave Simulation + CPML
- [SW4](https://github.com/geodynamics/sw4): 3D Finite-Difference Seismic Wave Simulation (4th order)
- [OpenSWPC](https://github.com/tktmyd/OpenSWPC): 2D/3D Finite-Difference Seismic Wave Simulation
- [FD](http://seis.karlov.mff.cuni.cz/software/sw3dcd22/fd/fd.htm): 2-D P-SV elastic second-order finite difference

### Spectral Element Methods

- [SPECFEM1D](https://github.com/geodynamics/specfem1d): A small code that allows users to learn how a spectral-element program is written
- [Specfem1d](https://github.com/nqdu/Specfem1d): An implementation of Spectrum Element Method for 1-D wave equation
- [SPECFEM2D](https://github.com/geodynamics/specfem2d): Simulates seismic wave propagation in a 2D heterogeneous medium, using spectral element method (spherical coordinate system)
    - FK-2DSEM can be requested from Ping Tong. Is the 2D SEM in spherical coordinate?
- [SPECFEM3D](https://github.com/geodynamics/specfem3d): Simulates seismic wave propagation in a 3D heterogeneous medium, using spectral element method (Cartesian coordinate system)
    - DSM-SEM & AxiSEM-SEM can be found in `EXTERNAL_PACKAGES_coupled_with_SPECFEM3D`
    - FK is not an external code, it is now called internally
    - The coulping can be found in `specfem3D/couple_with_injection.f90`
- [SPECFEM3D_GLOBE](https://github.com/geodynamics/specfem3d_globe): Simulates seismic wave propagation in a 3D heterogeneous medium, using spectral element method (spherical coordinate system)
- [SEM_DSM_hybrid](https://github.com/wenbowu-geo/SEM_DSM_hybrid): A hybrid method to efficiently compute teleseismic synthetics with 3D seismic strucure at source side (SEM) and 1D strucure outside the source region (DSM).
- [RegSEM](http://www.quest-itn.org/library/software/regsem.html): Simulates seismic wave propagation in a 3D heterogeneous media, using spectral element method at the regional scale. Regional scale means distances ranging from about 1 km (local scale) to 90 degree (continental scale).
- [AxiSEM](https://github.com/geodynamics/axisem): A parallel spectral-element method to solve 3D wave propagation in a sphere with axisymmetric or spherically symmetric visco-elastic, acoustic, anisotropic structures.
- [Instaseis](http://instaseis.net): The Python interface of AxiSEM
- [AxiSEM3D](https://github.com/kuangdai/AxiSEM3D)
- [NEXD](http://www.gmg.ruhr-uni-bochum.de/geophysik/seismology/nexd.html): Nodal Discontinuous Galerkin Method | [1D](https://github.com/seismology-RUB/NEXD-1D) | [2D](https://github.com/seismology-RUB/NEXD-2D) | [3D](https://github.com/seismology-RUB/NEXD-3D)
- [2DSPEC](http://www.spice-rtn.org/library/software/2DSPEC.html): A parallel/serial 2d spectral element code for wave propagation and rupture dynamics
- [sem2dpack](https://github.com/jpampuero/sem2dpack): A spectral element method for 2D wave propagation and fracture dynamics, with emphasis on computational seismology and earthquake source dynamics.




---------------
## Seismic Source

### Focal Mechanism

- [gCAP](http://www.eas.slu.edu/People/LZhu/home.html): Focal mechanism inversion using cut and paste method | [Chinese note](https://blog.seisman.info/gcap-install)
    - [oh-my-cap](https://github.com/wangliang1989/oh-my-cap): some experiences in using gCAP by Liang Wang
- [CAPjoint](https://github.com/bqpseismology/CAPjoint): earthquake source parameter inversion
    - [capjoint](https://github.com/wangliang1989/capjoint): some experiences in using CAPjoint by Liang Wang
- [gCAPjoint](https://github.com/bqpseismology/gCAPjoint): earthquake source parameter inversion with seismic waves
- [CAPsf](https://doi.org/10.1785/0220190349): invert source mechanisms for single‐force events
- [CPS330](http://www.eas.slu.edu/eqc/eqccps.html): Collection of programs for calculating theorectical seismogram, receiver function, surface wave dispersion curve et al. | [Chinese install introduction](https://blog.seisman.info/cps330-install) and [Chinese introdution](https://blog.seisman.info/cps330)
    - [Moment Tensor Workshop (2012)](http://www.eas.slu.edu/eqc/eqc_cps/workshop.html)
- [Moment-Tensor Inversion](http://eqseis.geosc.psu.edu/cammon/HTML/MTinvDocs/mtinv01.html)
- [W Phase](http://eost.u-strasbg.fr/wphase): Moment tensor inversion using W phase
- [focmec](https://seiscode.iris.washington.edu/projects/focmec): Package for determining and displaying double-couple earthquake focal mechanisms based on polarities and amplitude ratios
- [HASH](https://earthquake.usgs.gov/research/software/#HASH): Determine double-couple earthquake focal mechanisms based on P-wave polarity and S/P amplitude ratios
- [FPFIT](https://www.usgs.gov/software/fpfit-fpplot-and-fppage): Calculate and plot fault-plane solutions from first-motion data
- [ISOLA](http://www.spice-rtn.org/library/software/ISOLA.html): Retrieve isolated asperities from regional or local waveforms based on multiple-point source representation and iterative deconvolution
- [MTfit](https://github.com/djpugh/MTfit): Bayesian Moment Tensor Fitting
- [pyTDMT](https://github.com/fabriziobernardi/pydmt): time-domain focal mechanism inversion, written in Python
- [hybridMT](https://www.induced.pl/software): MATLAB package for moment tensor inversion and refinement
    - [fociMT](https://www.induced.pl/software): A stand-alone command line application for seismic moment tensor inversion, which is an integral part of hybridMT package
- [FOCI](https://www.induced.pl/software): A stand-alone Windows GUI application for performing the seismic moment tensor inversion and source parameters assessment
- [RPGEN](https://www.induced.pl/software/radiation-of-psshsv-waves-from-shear-tensile-source-model): Radiation of P/S/SH/SV waves from shear-tensile source model
- [MT_DECOMPOSITION](https://www.ig.cas.cz/mt-decomposition): A Matlab software package for the moment tensor decomposition
- [PCA-DECOMPOSITION](https://www.ig.cas.cz/en/pca-decomposition): A Matlab software package for the Principal Component Decomposition of seismic traces for extracting the common wavelet
