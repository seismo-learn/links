---
title: "Codes"
date: 2020-03-15
lastmod: 2020-03-15
author: core-man
draft: false
categories: ["Geoscience code"]
slug: codes
---

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


## Surface-wave dispersion forward calculation

- [CPS330](http://www.eas.slu.edu/eqc/eqccps.html): Collection of programs for calculating theorectical seismogram, receiver function, surface wave dispersion curve et al. | [Chinese install introduction](https://blog.seisman.info/cps330-install) and [Chinese introdution](https://blog.seisman.info/cps330)
    - [pyfwrd](https://github.com/NoisyLeon/pyfwrd): A forward modelling code for surface wave, receiver functions and shear wave splitting, given tilted hexagonal symmetric media
    - [disba](https://github.com/keurfonluu/disba): Numba-accelerated computation of surface wave dispersion that implements a subset of codes from CPS330 written in Python
    - [srfpython](https://github.com/obsmax/srfpython): compute, display, invert 1D depth models based on CPS330 written in Python
    - [pysurf96](https://github.com/miili/pysurf96): Python wrapper for modelling surface wave dispersion curves from surf96 in CPS330 written in Python
    - [PyLayeredModel](https://github.com/harrymd/PyLayeredModel): Python wrappers for the CPS and Rftn libraries for layered models in seismology
- [MCMC_ANISO_FORWARD](https://github.com/hejunzhu/MCMC_ANISO_FORWARD): Forward code to compute surface wave dispersion curves and receiver functions in anisotropic models with hexagonally symmetry
- [senskernel](http://ciei.colorado.edu/Products/): Calculate sensitivity kernal of group velocity and phase velocity | [github](https://github.com/NoiseCIEI/SensKernel)
- [Geopsy](http://www.geopsy.org/download.php): An open source software for geophysical research and application written in C++
- [Vphase](http://www.spice-rtn.org/library/software/vphase.html): A training code to calculation of phase velocity dispersion curves


## Synthetic Receiver Function

- [hk](http://www.eas.slu.edu/People/LZhu/home.html): Receiver function package (synthetic RF, deconvolution, and H-k stacking) | [Chinese note](https://blog.seisman.info/hk-install)
- [CPS330](http://www.eas.slu.edu/eqc/eqccps.html): Collection of programs for calculating theorectical seismogram, receiver function, surface wave dispersion curve et al. | [Chinese install introduction](https://blog.seisman.info/cps330-install) and [Chinese introdution](https://blog.seisman.info/cps330)
    - [PyLayeredModel](https://github.com/harrymd/PyLayeredModel): Python wrappers for the CPS and Rftn libraries for layered models in seismology
- [RAYSUM](https://home.cc.umanitoba.ca/~frederik/Software): Ray-theoretical modelling of teleseismic waves in dipping, anisotropic structures
- [Charles J. Ammon's codes](http://eqseis.geosc.psu.edu/cammon/HTML/RftnDocs/rftn01.html): Receiver-Function Analysis
- [Jeffrey Park's codes](https://seiscode.iris.washington.edu/projects/rfsyn): Computes a receiver-function for a stack of anisotropic layers over an isotropic halfspace, via a reflectivity algorithm, assuming a plane wave incident from below | [Receiver Function Analysis Manual](https://www.ldeo.columbia.edu/~vadim/RF/RF-manual.html) | [Some updates at JParkCodes](http://jparkcodes.blogspot.com)
- [pyfwrd](https://github.com/NoisyLeon/pyfwrd): A forward modelling code for surface wave, receiver functions and shear wave splitting, given tilted hexagonal symmetric media
- [RFtool](https://members.elsi.jp/~george/rftool.html): An interactive, GUI-based tool to simulate P or S receiver functions
- [PSV Hybrid RF](http://geophysics.geo.sunysb.edu/wen/resource/index.html): Calculating synthetic RF in two-dimensional localized hetergeneous structures based on PSV Hybrid method (GRT-FD)
- [MCMC_ANISO_FORWARD](https://github.com/hejunzhu/MCMC_ANISO_FORWARD): Forward code to compute surface wave dispersion curves and receiver functions in anisotropic models with hexagonally symmetry


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


### Finite Element Methods

- [3DFE_GSM](http://www.nuquake.eu/Computer_Codes/request.htm)
- [3DFE_REF](http://www.nuquake.eu/Computer_Codes/request.htm)


### Boundary Element Methods

- [AstroSeis](https://github.com/ytian159/AstroSeis): MATLAB codes for asteroid seismic wavefield modeling


### Pseudo-Spectral Methods

- [Ps2D](http://www.spice-rtn.org/library/software/Ps2d.html): A very simple code for elastic wave simulation in 2D using a Pseudo-Spectral Fourier method


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


### Discontinuous Galerkin Method

- [SeisSol](https://github.com/SeisSol/SeisSol): a scientific software for the numerical simulation of seismic wave phenomena and earthquake dynamics


### Surface waves in 3D structures

- [Couplage](http://www.quest-itn.org/library/software/couplage): Modelling of propagation of surface waves in 3D structures by mode coupling method


### Other hybrid methods

- [PSV Hybrid](http://geophysics.geo.sunysb.edu/wen/resource/index.html): Calculating synthetic seismograms involving two-dimensional localized hetergeneous structures based on GRT-FD hybrid method.


### Other forward modelling

- [Waveform modelling of fault zone](https://earth.usc.edu/~ybz/): Yehuda Ben-Zion's codes used to model point/line dislocation in fault zone layers.
- [CPSPy](https://github.com/NoisyLeon/CPSPy): Python interface for CPS330


---------------
## Seismic Source

### Earthquake Detection

- [REAL](https://github.com/Dal-mzhang/REAL): Rapid Earthquake Association and Location
- [Match&Locate](https://github.com/Dal-mzhang/MatchLocate2): Template detecting and locating of small earthquakes
- [GPU-MatchLocate1.0](https://github.com/MinLiu19/GPU-MatchLocate1.0): A GPU version of Match&Locate
- [FastMatchedFilter](https://github.com/beridel/fast_matched_filter): An efficient seismic matched-filter search for both CPU and GPU architectures.
- [FAST](https://github.com/stanford-futuredata/FAST): End-to-end earthquake detection pipeline via efficient time series similarity search
- [SEC-C](https://github.com/Naderss/SEC_C): Super-Efficient Cross-Correlation
- [EQcorrscan](https://github.com/eqcorrscan/EQcorrscan): A python package for the detection and analysis of repeating and near-repeating earthquakes
- [RT_EQcorrscan](https://github.com/eqcorrscan/RT_EQcorrscan): Real-Time implementation of EQcorrscan methods
- [REDPy](https://github.com/ahotovec/REDPy): Repeating Earthquake Detector, written in Python
- [repeating-earthquake](https://github.com/core-man/repeating-earthquake): Search repeating earthquakes based on cross-correlation of seismic waveforms of event pairs at same stations.


### Earthquake Location

- [GrowClust](https://github.com/dttrugman/GrowClust): Relative relocation for earthquake hypocenters
- [HypoDD](https://www.ldeo.columbia.edu/~felixw/hypoDD.html): Double-difference earthquake location
- [HypoRelocate](https://github.com/sun1022/hypoRelocate): High-resolution earthquake relocation method
- [HYPOINVERSE2000](https://www.usgs.gov/software/hypoinverse-earthquake-location): Locate earthquakes and determine magnitudes in a local or regional seismic network
- [NonLinLoc](https://seiscode.iris.washington.edu/projects/nonlinloc): Probabilistic, Non-Linear, Global-Search Earthquake Location in 3D Media.
- [PhaseLink](https://github.com/interseismic/PhaseLink): A deep learning approach to seismic phase association
- [REAL](https://github.com/Dal-mzhang/REAL): Rapid Earthquake Association and Location
- [Velest](https://seg.ethz.ch/software/velest.html): 1-D inversion of velocities and hypocenter locations
    - This code is modified to be used in [REAL](https://github.com/Dal-mzhang/REAL)
- [location-pt](https://gitlab.com/dettmer-jan/location-pt): Multiple earthquake location via parallel tempering and principal component sampling.


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


### Seismicity

- [CLUSTER2000](https://www.usgs.gov/software/cluster2000): Identify clusters (e.g., aftershocks) in an earthquake catalog
- [ZMAP](http://www.seismo.ethz.ch/en/research-and-teaching/products-software/software/ZMAP): A software package to analyze seismicity
- [GR_EST](https://github.com/MatteoTaroniINGV/GR_EST): An OCTAVE/MATLAB Toolbox to Estimate Gutenberg–Richter Law Parameters and Their Uncertainties


### Stress/Strain

- [Coulomb 3](https://www.usgs.gov/software/coulomb-3): Investigate Coulomb stress changes on mapped faults and earthquake nodal planes
- [DC3D0/DC3D](https://www.bosai.go.jp/information/dc3d.html): Calculate displacement, strain and tilt at depth due to a point/rectangular strike/dip/tensile source in a half-space
- [SATSI](https://www.usgs.gov/software/satsi): Spatially and/or temporally varying stress field from focal mechanisms
- [MSATSI](https://www.induced.pl/software): MATLAB package for stress tensor inversion
- [STRESSINVERSE](https://www.ig.cas.cz/en/stress-inverse): A Matlab or Python software package for an iterative joint inversion for stress and fault orientations from focal mechanisms


### Source Spectrum

- [Multitaper Spectrum Estimation Library](https://www.gaprieto.com/software)
- [mtspec](https://github.com/krischer/mtspec): Python (ctypes) wrapper for the **Multitaper Spectrum Estimation Library**


---------------------------
## Seismic Imaging

### Body-wave tomography

- [Nick Rawlinson's softwares](http://rses.anu.edu.au/~nick)
    - [FMTOMO](http://rses.anu.edu.au/~nick/fmtomo.html): 3-D traveltime tomography based on fast marching method | [FMTOMO at iEarth](http://www.iearth.org.au/codes/FMTOMO)
    - [FMTT](http://rses.anu.edu.au/~nick/teletomo.html): Teleseismic tomography based on fast marching method | [FMTT at iEarth](http://www.iearth.org.au/codes/FMTT)
- [SIMUL2000](https://www.usgs.gov/software/3d-velocity-modeling): Traveltime tomography
- [RAYINVR](http://terra.rice.edu/department/faculty/zelt/rayinvr.html): 2-D traveltime inversion and amplitude modeling programs | [A modified version](https://github.com/hzhu212/rayinvr)
- [FAST](http://terra.rice.edu/department/faculty/zelt/fast.html): 3-D First Arrival Seismic Tomography programs
- [tomoDD](http://seismo.training.ustc.edu.cn/index.php/info): double-difference tomography | [bilibili vedio](https://www.bilibili.com/video/av841708479?p=4) & [linkresearcher](https://www.linkresearcher.com/trainings/d65fe2ef-3cc8-4eef-9821-261e3d49a9ae)


### Earthquake surface-wave phase/group velocity dispersion

- [Huajian Yao's Lab](http://yaolab.ustc.edu.cn/resources.php?i=28)
    - [Auto_TAnaylsis_GUI](https://github.com/Chuanming-Liu/Auto_TAnaylsis_GUI): Automatic Surface Wave Two-station Dispersion Analysis (Matlab GUI)
- [ASWMS](https://ds.iris.edu/ds/products/aswms): Automated Surface Wave Phase Velocity Measuring System, measuring two-station phase delay and then 2D phase velocity maps at each period using Eikonal and Helmhotza tomography | [code in GitHub](https://github.com/jinwar/matgsdf)
- [CPS330](http://www.eas.slu.edu/eqc/eqccps.html): Collection of programs for calculating theorectical seismogram, receiver function, surface wave dispersion curve et al. | [Chinese install introduction](https://blog.seisman.info/cps330-install) and [Chinese introdution](https://blog.seisman.info/cps330)
    - [Surface Waves](http://www.eas.slu.edu/eqc/eqc_cps/TUTORIAL/): CPS330's tutorial on surface wave
    - [two-station technique to obtain phase velocities](http://www.eas.slu.edu/eqc/eqc_cps/Questions/QA0008/index.html)
- [SurfaceWaveMFA](http://eqseis.geosc.psu.edu/cammon/index.html): Surface Wave Multiple Filter Analysis


### Ambient noise surface-wave phase/group velocity dispersion

- [Research Products from CU-Boulder](http://ciei.colorado.edu/Products)
    - [ancc](http://ciei.colorado.edu/Products/): Ambient noise data processing code and database for processing in C | [github](https://github.com/NoiseCIEI/ANCC)
    - [Seed2Cor](https://github.com/NoiseCIEI/Seed2Cor): Seismic Ambient Noise Cross-Correlation in Parallel written in C
    - [AFTAN](http://ciei.colorado.edu/Products/): Automatic Frequency-Time Analysis (AFTAN) of cros-correlogram of ambient seismic noise in Fortran | [github](https://github.com/NoiseCIEI/AFTAN) | [Python package of AFTAN](https://github.com/NoisyLeon/pyaftan)
- [Huajian Yao's Lab](http://yaolab.ustc.edu.cn/resources.php?i=28): [2020 USTC seismic training](http://seismo.training.ustc.edu.cn/index.php/info): [bilibili vedio](https://www.bilibili.com/video/av841708479?p=5) & [linkresearcher](https://www.linkresearcher.com/trainings/d65fe2ef-3cc8-4eef-9821-261e3d49a9ae)
    - `NoiseCorr` : Ambient noise cross-correlation codes for daily long SAC format data in Matlab
    - `EGFAnalysisTimeFreq` : Dispersion Analysis GUI software for ambient noise cross-correlation functions in Matalb
- [NoisePy](https://github.com/mdenolle/noisepy): Fast and easy computation of ambient noise cross-correlation functions written in Python, with noise monitoring and surface wave dispersion analysis
- [SeisNoise](https://github.com/tclements/SeisNoise.jl): Fast and easy ambient noise cross-correlation in Julia, with noise monitoring and surface wave dispersion analysis
- [Martin Schimmel's codes](http://diapiro.ictja.csic.es/gt/mschi/SCIENCE/tseries.html#software)
    - [Corr_stack](http://diapiro.ictja.csic.es/gt/mschi/SCIENCE/tseries.html#software): Ambient Noise Processing Tools for Phase Cross Correlation and time-frequency Phase Weighted Stack written in Fortran | [IRIS Webinar](https://www.youtube.com/watch?v=qr5EFhQzPwg)
    - [PCC](http://diapiro.ictja.csic.es/gt/mschi/SCIENCE/tseries.html#software): Fast and efficient phase cross-correlation written in C
    - [PCC2](http://diapiro.ictja.csic.es/gt/mschi/SCIENCE/tseries.html#software): Fast and efficient phase cross-correlation written in Python
- [Lapo Boschi's codes](http://hestia.lgs.jussieu.fr/~boschil/downloads.html): Ambient-noise cross-correlation and dispersion-curve measurement in the frequency domain written in Python
- [MATnoise](https://github.com/jbrussell/MATnoise): Calculate ambient noise cross-correlations, measure phase velocities, and invert for phase velocity maps in MATLAB.

### Inverting 2D surface-wave phase/group velocity maps

- [tomo_sp_cu_s](http://ciei.colorado.edu/Products/): Surface wave tomography based on ray theory | [github](https://github.com/NoiseCIEI/RayTomo)
- [FMST](http://rses.anu.edu.au/~nick/surftomo.html): traveltime tomography code in 2-D spherical shell coordinates based on fast marching method | [FMST at iEarth](http://www.iearth.org.au/codes/FMST)
- [rj-TOMO](http://www.iearth.org.au/codes/rj-TOMO): 2-D transdimensional travel time tomography based on Reversible jump Markov chain Monte Carlo algorithm
- [ASWMS](https://ds.iris.edu/ds/products/aswms): Automated Surface Wave Phase Velocity Measuring System, measuring two-station phase delay and then 2D phase velocity maps at each period using Eikonal and Helmhotza tomography | [code in GitHub](https://github.com/jinwar/matgsdf)
- [SurfwaveTomoPrograms](https://github.com/chukren/SurfwaveTomoPrograms): finite frequency Rayleigh wave tomography programs (Two-plane wave with 2D sensitivity kernel; [Yang & Forsythn, 2006, GJI](https://doi.org/10.1111/j.1365-246X.2006.02972.x), [Yang & Forsythn, 2006, JGR](https://doi.org/10.1029/2005JB004180))
- [MATnoise](https://github.com/jbrussell/MATnoise): Calculate ambient noise cross-correlations, measure phase velocities, and invert for phase velocity maps in MATLAB.


### Other methods to measure surface-wave dispersion data & phase/group velocity maps

- [NoisePy](https://github.com/NoiseCIEI/NoisePy): Some simple methods for seismic surface wave analysis written in Python
- [mat-LRTdisp](https://github.com/jbrussell/mat-LRTdisp): Measuring multi-mode surface wave dispersion using the Linear Radon Transform (LRT) written in Matlab


### Inversion from phase/group velocities

- [CPS330](http://www.eas.slu.edu/eqc/eqccps.html): Collection of programs for calculating theorectical seismogram, receiver function, surface wave dispersion curve et al. | [Chinese install introduction](https://blog.seisman.info/cps330-install) and [Chinese introdution](https://blog.seisman.info/cps330)
    - [srfpython](https://github.com/obsmax/srfpython): compute, display, invert 1D depth models based on CPS330 written in Python
- [MCDisp](https://github.com/xin2zhang/MCDisp): Surface wave dispersion inversion using Monte Carlo methohd written in Python
- [dispinversion](https://github.com/jinwar/dispinversion): Surface wave dispersion inversion code written in Matlab


### Direct inversion of surface-wave dispersion data

- [DSurfTomo](https://github.com/HongjianFang/DSurfTomo): Direct inversion of 3-D Vs structure from dispersion data based on period-dependent ray tracing in Fortran written in Fortran
- [DSurfRTomo](https://github.com/ShaoqianHu/DSurfRTomo): Direct Surface Wave Radial Anisotropy Tomography written in Fortran | [zenodo](https://zenodo.org/record/3592528#.XyzC2s8zZhF)
- [DAzimSurfTomo](https://github.com/Chuanming-Liu/DAzimSurfTomo): Direct inversion of Rayleigh wave dispersion data for 3-D azimuthal anisotropy based on ray tracing written in Fortran
- [3D Monte Carlo Direct Inversion](https://www.geos.ed.ac.uk/eip/codes.html): 3D Monte Carlo tomography using both body and surface wave data | [GitHub](https://github.com/xin2zhang/MCTomo)


### Workflows for surface-wave tomography

- [seismic-noise-tomography](https://github.com/bgoutorbe/seismic-noise-tomography): Python framework for seismic noise tomography


### Rayleigh-wave HV

- [DOP-E](http://diapiro.ictja.csic.es/gt/mschi/SCIENCE/tseries.html#software): Rayleigh wave ellipticity, measurement and inversion from ambient noise written in Fortran and Python
- [Quake-E](https://github.com/berbellini/Quake-E): Measure Rayleigh wave ellipticity from earthquake data written in Python


### Noise HVSR

- [Geopsy](http://www.geopsy.org/download.php): An open source software for geophysical research and application written in C++
- [IRIS HVSR](https://github.com/iris-edu/HVSR): A set of Python scripts to compute and plot HVSR curves using MUSTANG PDF-PSD web service from IRIS | [IRIS website](https://ds.iris.edu/ds/products/hvsr)
- [hvsrpy](https://pypi.org/project/hvsrpy/): A Python package for horizontal-to-vertical spectral ratio processing
- [H/V Toolbox](https://github.com/krischer/HtoV-Toolbox): A toolbox to calculate surface-wave HVSR
- [HV-Inv](https://w3.ual.es/GruposInv/hv-inv): Inversion of HVSR and SW dispersion
- [OpenHVSR](https://www.samuelbignardi.com/en/openhvsr-project): Measurement and Inversion of HVSR written in Matlab
- [HV-TEST](https://zenodo.org/record/260131#.XhMFYxczY1J): A tool for the verification of the reliability and clarity of the H/V peak according to the SESAME criteria
- [HVResPy](https://www.researchgate.net/publication/283085984_HVResPy_an_open-source_Python_tool_for_Geopsy_HVSR_post-processing?channel=doi&linkId=5629ff6308ae518e347ef829&showFulltext=true): An open-source Python tool for Geopsy HVSR post-processing


### Receiver Function Measurements and Inversion

- [hk](http://www.eas.slu.edu/People/LZhu/home.html): Receiver function package (deconvolution and H-k stacking) | [Chinese note](https://blog.seisman.info/hk-install)
- [h-k c](https://github.com/ljt-uiuc/H-k-c): Generalized H-k after harmonic correction on receiver functions | [2020 USTC seismic training](http://seismo.training.ustc.edu.cn/index.php/info): [bilibili vedio](https://www.bilibili.com/video/av841708479?p=3) | [linkresearcher](https://www.linkresearcher.com/trainings/d65fe2ef-3cc8-4eef-9821-261e3d49a9ae)
- [CCP](http://www.eas.slu.edu/People/LZhu/home.html): Common-Conversion-Point (CCP) stacking of receiver functions | [Chinses note](https://blog.seisman.info/ccp-install)
- [psdm](http://seismo.training.ustc.edu.cn/index.php/info): A wave equation migration method for receiver function imaging | [bilibili vedio](https://www.bilibili.com/video/av841708479?p=2) & [linkresearcher](https://www.linkresearcher.com/trainings/d65fe2ef-3cc8-4eef-9821-261e3d49a9ae)
- [CPS330](http://www.eas.slu.edu/eqc/eqccps.html): Collection of programs for calculating theorectical seismogram, receiver function, surface wave dispersion curve et al. | [Chinese install introduction](https://blog.seisman.info/cps330-install) and [Chinese introdution](https://blog.seisman.info/cps330)
- Jeffrey Park's codes: [recfunk09_pick](https://seiscode.iris.washington.edu/projects/recfunk09-pick) | [recfunk_ascii](https://seiscode.iris.washington.edu/projects/recfunk-ascii) | [manual](https://www.ldeo.columbia.edu/~vadim/RF/RF-manual.html) | [some updates at JParkCodes](http://jparkcodes.blogspot.com)
- [Charles J. Ammon's codes](http://eqseis.geosc.psu.edu/cammon/HTML/RftnDocs/rftn01.html): Receiver-Function Analysis
- [Collection of some group codes for RF analysis](https://github.com/rmartinshort/RecieverFunctions)
    - Charles Ammon's codes
    - Cheng's codes: including Qingju Wu's method (maximum entrop deconvolution), `burgays`
- [RfPy](https://paudetseis.github.io/RfPy/): Receiver function caculcation written in Python, along with post-processing (e.g., hk, harmonic decompositino, CCP).
- [rf](https://github.com/trichter/rf): Receiver function calculation written in Python
- [RF_INV](https://github.com/akuhara/RF_INV): Receiver function inversion by reversible-jump Markov-chain Monte Carlo in Fortran
- [rj-RF](http://www.iearth.org.au/codes/rj-RF): Inversion of Receiver Functions using Reversible jump Markov chain Monte Carlo algorithm
- [IRFFM](http://www.iearth.org.au/codes/IRFFM/): Interactive Receiver Functions Forward Modeller written in Java
- [CrazySeismic](http://web.gps.caltech.edu/~yucq/software.html): A MATLAB GUI-based package to process single channel seismic data (picking, McCC, PCA, Deconvolution) | [2020 USTC seismic training](http://seismo.training.ustc.edu.cn/index.php/info): [bilibili vedio](https://www.bilibili.com/video/av841708479/) | [linkresearcher](https://www.linkresearcher.com/trainings/d65fe2ef-3cc8-4eef-9821-261e3d49a9ae)
- [FuncLab](https://seiscode.iris.washington.edu/projects/funclab): a Matlab based GUI for handling receiver functions (link does work) | [revised FuncLab](https://seiscode.iris.washington.edu/projects/funclab-revised)
- [processRFmatlab](https://github.com/iwbailey/processRFmatlab): matlab functions and scripts for working with receiver functions
- [SplitRFLab](https://github.com/xumi1993/SplitRFLab): A Matlab toolbox of processing receiver functions and shear wave spliting modified from [Splitlab](http://splitting.gm.univ-montp2.fr) and [processRFmatlab](https://github.com/iwbailey/processRFmatlab)


### Inversion of teleseismic waveforms

- [MC3deconv](https://github.com/akuhara/MC3deconv): Bayeisan inversion to recover Green's functions of receiver-side structures from teleseismic waveforms


### Joint Inversion of Seismological Data

- [BayHunter](https://github.com/jenndrei/BayHunter): McMC transdimensional Bayesian inversion of surface wave dispersion and receiver functions in Python
- [Huajian Yao's Lab](http://yaolab.ustc.edu.cn/resources.php?i=28): Inversion of Vs, Vp/Vs, and interface depth using (multimode, Rayleigh and/or Love, phase and/or) dispersion data and Rayleigh wave fundamental mode ZH data (ellipticity) based on the Neighborhood Algorithm in Fortran
- [Weisen Shen](https://www.stonybrook.edu/commcms/geosciences/people/_faculty/shen.php)'s MCMC inversion [code](http://weisen.wustl.edu/For_Comrades/for_self/PKU_Workshop/) for a workshop in Peking University in 2017: joint inversion of surface-wave dispersion data and receiver function
- [SEIS_FILO](https://github.com/akuhara/SEIS_FILO): SEISmological inversion tools for Flat and Isotropic Layered structure in the Ocean (Transdimensional inversion of surface wave and receiver functions)
- [RfSurfHmc](https://github.com/nqdu/RfSurfHmc): Joint inversion of Receiver Function and Surface Wave Disperion by Hamilton Monte Carlo Method
- [jointBSVpVs](https://github.com/HongjianFang/jointBSVpVs): Joint inversion of body and surface wave data for Vp/Vs
- [LitMod_seis](https://www.juanafonso.com/software): A joint inversion code for inverting Vs and anisotropy data (Rayleigh and Love phase and/or group velocities, ellipticity (Z/H ratio) and receiver functions) with a Markov Chain Monte Carlo method. (Released soon)


### Multi-observable Modelling and Inversion of Geophysical Data

- [LitMod](https://www.juanafonso.com/software): Multi-observable modelling of geophysical data
    - [LitMod_2D](https://www.juanafonso.com/software): An interactive software to perform multi-observable forward modelling of geophysical data for 2D whole lithospheric structure of the Earth and/or other terrestrial planets | new version in [Github](https://github.com/ajay6763/LitMod2D_2.0_package_dist_users)
    - [LitMod_T](https://www.juanafonso.com/software): the "transient" equivalent of LitMod_2D
    - [LitMod_3D](https://www.juanafonso.com/software): 3D integrated geophysical-petrological interactive forward modelling of the lithosphere and underlying upper mantle | new version in [Github](https://github.com/javfurchu/litmod)
    - [LitMod_4INV](https://www.juanafonso.com/software): A fully nonlinear probabilistic inversion code in spherical coordinates for the compositional and thermal structure of the lithosphere and upper mantle, simultaneously inverting gravity gradients, gravity anomalies, geoid height, surface heat flow, magnetotelluric data, receiver functions, surface-wave data, absolute elevation (including both static and dynamic effects) and body-wave data, together with petrological information.
- [JDSurfG](https://github.com/nqdu/JDSurfG): Joint Inversion of Direct Surface Wave Tomography and Bouguer Gravity


### Full Waveform Inversion

- [IFOS2D](https://git.scc.kit.edu/GPIAG-Software/IFOS2D): 2D elastic full waveform inversion
- [IFOS3D](https://git.scc.kit.edu/GPIAG-Software/IFOS3D): 3D elastic full waveform inversion
- [DENISE-SH](https://github.com/daniel-koehn/DENISE-SH): 2D SH-wave full waveform modeling and inversion
- [DENISE](https://github.com/daniel-koehn/DENISE-Black-Edition): 2D PSV-wave full waveform modeling and inversion
- [2DNoise_Adjoint_tomography](https://github.com/ustcchaozhang/2DNoise_Adjoint_tomography): 2D ambient noise adjoint tomography and joint inversion of ambient noise and teleseismic body-wave
- [2DZH_Adjoint_tomography](https://github.com/ustcchaozhang/2DZH_Adjoint_tomography): 2D ZH Amplitude Ratios adjoint tomography
- [SeisElastic2D](https://github.com/crewesleo/SeisElastic2D): An open-source package for multiparameter FWI in isotropic-, anisotropic- and visco-elastic media
- [seisDD](https://github.com/yanhuay/seisDD): Double-difference adjoint seismic tomography
- [Salvus](https://salvus.io): Full waveform modelling and inversion
- [SAVA](https://github.com/daniel-koehn/SAVA): 3D seismic modelling, FWI and RTM code for wave propagation in isotropic (visco)-acoustic/elastic and anisotropic orthorhombic/triclinic elastic media
- [ASKI](http://www.gmg.ruhr-uni-bochum.de/geophysik/seismology/aski.html): Modularized program suite for sensitivity analysis and iterative full waveform inversion
- [LASIF](http://www.lasif.net): Framework for large scale full waveform inversion
- [SES3D](https://cos.ethz.ch/software/production/ses3d.html): Simulation of elastic wave propagation and waveform inversion in a spherical section
- [FWI.jl](https://github.com/JuliaInv/FWI.jl): 2D/3D acoustic FWI in Julia
- [GERMAINE](https://github.com/daniel-koehn/GERMAINE): 2D Acoustic frequency-domain Full Waveform modeling and inversion code.
- [TOY2DAC](https://seiscope2.osug.fr/TOY2DAC,82?lang=fr): 2D Acoustic frequency-domain Full Waveform modeling and inversion code
- [travel time and waveform modelling near fault zone](http://seismo.training.ustc.edu.cn/index.php/info): [bilibili vedio](https://www.bilibili.com/video/av841708479?p=6) & [linkresearcher](https://www.linkresearcher.com/trainings/d65fe2ef-3cc8-4eef-9821-261e3d49a9ae)


### Intrinsic Attenuation and Scattering

- [CodaNorm](https://github.com/cormorant/CodaNorm): a software package for the body-wave attenuation calculation by coda-normalization method
- [MuRAT](https://github.com/LucaDeSiena/MuRAT): a Matlab Package for Seismic Attenuation Tomography at multiple Earth scales using Body and Coda Waves
- [qopen](https://github.com/trichter/qopen): Separation of intrinsic and scattering Q by envelope inversion
- [usattenuation](https://github.com/trichter/usattenuation): Intrinsic attenuation, scattering attenuation and site amplification for the contiguous U.S.
- [psphoton](https://github.com/nmancinelli/psphoton): Monte Carlo simulation of elastic-wave scattering processes in Earth's interior
- [PSPHOTON_POSO](https://github.com/nmancinelli/PSPHOTON_POSO): Code in development to model Po/So envelopes


### Shear Wave Splitting

- [SplitLab](http://splitting.gm.univ-montp2.fr): Shear-wave birefringence analysis code, written in Matlab | [An updated version](https://robporritt.wordpress.com/software)
- [MFAST](http://mfast-package.geo.vuw.ac.nz): Multiple Filter Automatic Splitting Technique written in Fortran
- [MSAT](https://github.com/andreww/MSAT): MATLAB Seismic Anisotropy Toolkit
- [multisplit](https://github.com/ftilmann/multisplit): Shear-wave birefringence analysis code
- [SHEBA](https://github.com/jwookey/sheba): Shear-wave birefringence analysis code
- [SplitRacer](http://www.geophysik.uni-frankfurt.de/64002762/Software): Shear-wave splitting analysis written in Matlab
- [SplitPy](https://paudetseis.github.io/SplitPy/): Teleseismic shear-wave (SKS) Splitting Toolbox written in Python
- [pyfwrd](https://github.com/NoisyLeon/pyfwrd): A forward modelling code for surface wave, receiver functions and shear wave splitting, given tilted hexagonal symmetric media


### Ambient Noise Inversion

- [MSNoise](http://www.msnoise.org): A Python Package for Monitoring seismic velocity changes using ambient seismic noise
- [yam](https://github.com/trichter/yam): Yet another monitoring tool using correlations of ambient noise written in Python
- [NoisePy](https://github.com/mdenolle/noisepy): Fast and easy computation of ambient noise cross-correlation functions written in Python, with noise monitoring and surface wave dispersion analysis
- [SeisNoise](https://github.com/tclements/SeisNoise.jl): Fast and easy ambient noise cross-correlation in Julia, with noise monitoring and surface wave dispersion analysis


### Imaging of Earth interior

- [PKPprecursor](http://geophysics.geo.sunysb.edu/wen/resource/index.html): Locating seismic scatterers in the lower mantle, using PKP precursor onsets
- [ss-precursors](https://github.com/nmancinelli/ss-precursors): SS Precursor Workflow by Nicholas Mancinelli


----------------------
## Seismic Data Analysis

### Phase Picking

- [Adaptive Stacking](http://rses.anu.edu.au/seismology/soft/astack/index.html): Adaptive stacking to estimating traveltime residual patterns across a network of seismic stations | [Adaptive stacking at iEarth](http://www.iearth.edu.au/codes/AdaptiveStacking)
- [AIMBAT](https://seiscode.iris.washington.edu/projects/pysmo-aimbat): A Python/Matplotlib Tool for Measuring Teleseismic Arrival Times
- [CrazySeismic](http://web.gps.caltech.edu/~yucq/software.html): A MATLAB GUI-based package to process single channel seismic data (picking, McCC, PCA, Deconvolution)
- [CrazyTremor](http://web.gps.caltech.edu/~yucq/software.html): A MATLAB GUI-based package to display and picking multi-channel seismic data
- [mccc](https://github.com/xumi1993/mccc): Determines optimum relative delay times for seismograms by multi-channel cross-correlation
- [generalized-phase-detection](https://github.com/interseismic/generalized-phase-detection): Generalized Seismic Phase Detection with Deep Learning
- [PhaseNet](https://github.com/wayneweiqiang/PhaseNet): A Deep-Neural-Network-Based Seismic Arrival Time Picking Method
- [PhasePApy](https://github.com/austinholland/PhasePApy): Seismic Phase Picker and Associator, written in Python
- [P-Phase Picker](https://www.usgs.gov/software/p-phase-picker): Detecting P-phase onset written in Java and Matlab


### Seismic interferometry

- [inter_source_interferometry](https://github.com/trichter/inter_source_interferometry): Inter-source interferometry by cross-correlation of coda waves written in Python
- [ThreeStation](https://github.com/NoiseCIEI/ThreeStation): Three-station interferometry


### Single Station Signal Analysis

- [Polfre](http://diapiro.ictja.csic.es/gt/mschi/SCIENCE/tseries.html#software): Time-Frequency Dependent Polarization written in Fortran
- [Station Analysis Tools](https://robporritt.wordpress.com/software): A set of c routines for computation of power spectral densities, coherence, probability density functions, and a handful of other tools for monitoring the health of a station | [iris code site](https://seiscode.iris.washington.edu/projects/station-analysis-tools)
- [MUSTANG](http://service.iris.edu/mustang): A quality assurance system at the IRIS DMC that provides metrics pertaining to seismic data quality | [Tutorial](https://ds.iris.edu/ds/nodes/dmc/tutorials/getting-started-with-mustang)
- [IRIS DMC Noise Toolkit Products](http://ds.iris.edu/ds/products/noise-toolkit)
    - [Noise Toolkit](https://seiscode.iris.washington.edu/projects/iris-dmc-noise-toolkit)
        - [PDF-PSD](https://seiscode.iris.washington.edu/projects/noise-toolkit-pdf-psd-bundle): Computing Power Spectral Densities (PSD) of waveform data
        - [microseism energy](https://seiscode.iris.washington.edu/projects/noise-toolkit-microseism-energy-me-bundle): Performing microseism energy computations from PSDs
        - [Polarization attributes](https://seiscode.iris.washington.edu/projects/noise-toolkit-polarization-attributes-bundle): Performing frequency dependent polarization analysis of seismograms
- [PQLX](https://www.usgs.gov/software/pqlx-a-software-tool-evaluate-seismic-station-performance): An open-source software system for evaluating seismic station performance and data quality
- [Est_noise](https://www.usgs.gov/software/estnoise): Analyze time-series data to quantify temporal correlations and simultaneously estimate rates, offsets, and other functional dependencies.
- Time-frequency analysis
    - [TF-SIGNAL](http://www.nuquake.eu/Computer_Codes/tfsig.htm): Computation and visualization of time-frequency representations of time signals using one or more of seven alternative methods of time-frequency analysis
- [BCseis](http://www.ceri.memphis.edu/people/clangstn/software.html): a MatLab GUI and set of inline functions for performing various non-linear thresholding operations using the Continuous Wavelet Transform


### Array Seismology

- [ObsPy](https://github.com/obspy/obspy): Data download, processing and visulization software written in Python
- [Geopsy](http://www.geopsy.org/download.php): An open source software for geophysical research and application written in C++
- [ts-PWS](http://diapiro.ictja.csic.es/gt/mschi/SCIENCE/tseries.html#software): Time-scale phase weighted stacking written in C


### Seismic data digitization

- [DigitSeis](http://www.seismology.harvard.edu/research/DigitSeis.html): A Digitization Software for Analog Seismograms, written in Matlab


### Seismograph problem detection and correction

- [OrientPy](https://nfsi-canada.github.io/OrientPy/): Estimate seismometer orientation written in Python
- [DLOPy](https://github.com/jbrussell/DLOPy_v1.0): Calculate OBS horizontal orientations based on Raleigh-wave arrival angle written in Python
- [CWPAR](https://seiscode.iris.washington.edu/projects/cwpar-clipped-waveform-pickup-and-restoration): Clipped Waveform Pickup and Restoration written in Matlab
- [Automatic-detection-of-clipped-seismic-waveform](https://github.com/jinhaizhang2020/Automatic-detection-of-clipped-seismic-waveform): in Matlab
- [ATacR](https://seiscode.iris.washington.edu/projects/atacr): Automated Tilt and Compliance Removal (for ocean bottoms seismometers) written in Matlab
- [OBStools](https://nfsi-canada.github.io/OBStools/): Removing vertical component noise from tilt and compliance effects written in Python


### Pattern Recognition and Machine Learning

- [scikit-learn](https://scikit-learn.org/stable/index.html): Machine Learning in Python
- [Detex](https://github.com/d-chambers/Detex): A Python package for subspace detection and waveform similarity clustering
- [dbscan1d](https://github.com/d-chambers/dbscan1d): An efficient 1D implementation of the DBSCAN clustering algorithm in Python
- [Sequencer](https://github.com/dalya/Sequencer): An algorithm that detects one-dimensional sequences in complex datasets in Python


### Signal processing

- [FFTW](http://fftw.org/): a C subroutine library for computing the discrete Fourier transform (DFT)
- [SeisSound](https://ds.iris.edu/ds/products/seissound/): The Audio/Video Seismic Waveform Visualization
- [datamovies](https://github.com/jbrussell/datamovies): a couple of demo codes for sonifying data


---------------------
## Geosciences

### Tectonics

- [GPlates](https://www.earthbyte.org/category/gplates): A desktop software for the interactive visualisation of plate-tectonics


### Gravity

- [Harmonica](https://www.fatiando.org/#projects): Forward modeling, inversion, and processing gravity and magnetic data
- [Moho inversion](https://github.com/pinga-lab/paper-moho-inversion-tesseroids): Fast non-linear gravity inversion in spherical coordinates with application to the South American Moho.
- [GRAV3D](https://grav3d.readthedocs.io/en/latest/index.html): Forward modelling and inversion of surface, borehole, and airborne gravity data in 3D
- [Gravity modelling and inversion in 2D](https://www.juanafonso.com/software): A very simple matlab code to illustrate the basics of gravity modelling and inversion
- [SphGraGLQ](https://github.com/nqdu/SphGraGLQ): A fast and adaptive gravity forward computation method by Gauss-Legendre Quadrature in spherical coordinates in C

### GPS & InSAR

- [GMTSAR](https://topex.ucsd.edu/gmtsar/): An InSAR processing system based on GMT
- [SDM](https://www.gfz-potsdam.de/en/section/physics-of-earthquakes-and-volcanoes/infrastructure/tool-development-lab/): Geodetic finite-fault slip inversion based on co-seismic surface deformation data (GPS, InSAR, etc.)


### Geophysics

- [distaz](http://www.seis.sc.edu/software/distaz): Classic codes to calculate distance, azimuth and back-azimuth of any two points at the Earth's surface | [Chinese note](https://blog.seisman.info/calculate-dist-az-baz)
- [AFAT](http://cpc.cs.qub.ac.uk/summaries/AFAT_v1_0.html): Solving the Christoffel equation: phase and group velocities
- [PlateFlex](https://paudetseis.github.io/PlateFlex/): Estimate lithosphere elstatic thickness written in Python and Fortran

### Analyzing and Visualization

- [MATLAB for Analyzing and Visualizing Geospatial Data](https://ww2.mathworks.cn/matlabcentral/fileexchange/49813-matlab-for-analyzing-and-visualizing-geospatial-data): IRIS webinar
- [Ghostscript](https://www.ghostscript.com/): an interpreter for the PostScript language and PDF files | [Download](https://www.ghostscript.com/download/gsdnld.html) & [Old releases](https://github.com/ArtifexSoftware/ghostpdl-downloads/releases)


## Thermodynamics

- [Perple_X](http://www.perplex.ethz.ch/): calculating and displaying phase diagrams, phase equilibria, and thermodynamic data | [Documentation](http://www.perplex.ethz.ch/perplex_documentation.html) | [Thermodynamic Data Files](http://www.perplex.ethz.ch/perplex_thermodynamic_data_file.html) | [Glossary](http://www.perplex.ethz.ch/PerpleX_solution_model_glossary.html) | [Chinese tutorial at bilibili](https://www.bilibili.com/video/BV1TC4y1Y7Jq?spm_id_from=333.905.b_72656c61746564.3)
- [THERMOCALC](https://hpxeosandthermocalc.org/the-thermocalc-software/): calculates model phase equilibria involving the HPx-eos and/or individual end-members from the Holland & Powell dataset
- [BurnMan](https://burnman.org/): A thermodynamic and geophysics toolkit for the Earth and planetary sciences


## Inversion

### Inversion theory and methods

- [Parameter Estimation and Inverse Problems Example Code and Associated Subroutines](https://seiscode.iris.washington.edu/projects/peipcode): a compilation of inverse and parameter estimation code that accompanies the second edition of the textbook "Parameter Estimation and Inverse Problems"


### Monte Carlo methods

- [MCMC codes](http://helios.fmi.fi/~lainema/): some MCMC codes written by Marko Laine
- [Delayed Rejection Adaptive Metropolis (DRAM) in Fortran](https://www.juanafonso.com/software): A simple teaching code in Fortran of the DRAM method
- [rj-MCMC](http://www.iearth.org.au/codes/rj-MCMC): A library providing routines for running Reversible Jump Monte-Carlo Markov chains for 1-D and 2-D spatial regression problems
- [rjmcmc](https://cran.r-project.org/web/packages/rjmcmc/index.html): Reversible-Jump MCMC Using Post-Processing written in R
- [emcee](https://emcee.readthedocs.io/en/stable/): Affine Invariant Markov chain Monte Carlo (MCMC) Ensemble sampler
- [Malcolm Sambridge's softwares](http://rses.anu.edu.au/~malcolm/_pages/Research)
    - [Neighbourhood Algorithm](http://rses.anu.edu.au/~malcolm/na/na.html) | [Neighbourhood Algorithm at iEarth](http://www.iearth.org.au/codes/NA)
    - [Natural Neighbours](http://rses.anu.edu.au/geodynamics/nn/nn.html)
- [Neighborhood-Algorithm](https://github.com/nqdu/Neighborhood-Algorithm): A simple NA implementation in c++


### Gradient methods

- [Systems Optimization Laboratory](https://web.stanford.edu/group/SOL/download.html)
    - Iterative solvers for sparse Ax = b: SYMMLQ, MINRES, MINRES-QLP, cgLanczos, CRAIG
    - Iterative solvers for sparse least-squares problems: LSQR, LSMR, LSLQ, LNLQ, CGLS, covLSQR, LSRN
    - Sparse and dense LU factorization (direct methods): LUSOL, LUMOD
- [LSQR](https://github.com/jacobwilliams/LSQR): Modern Fortran sparse linear systems solve


### Linear Algebra

- [LAPACK](http://www.netlib.org/lapack/): Linear Algebra PACKage | [LAPACK Working Notes](http://www.netlib.org/lapack/lawns/downloads/index.html) | [GitHub](https://github.com/Reference-LAPACK)
- [BLAS](http://www.netlib.org/blas/): Basic Linear Algebra Subprograms
- [LINPACK](http://www.netlib.org/linpack/index.html): a collection of Fortran subroutines that analyze and solve linear equations and linear least-squares problems, which has been largely superceded by LAPACK



---------------
## Software Library

### Seismic Library

- [uOttawa Geophysics](https://www.uogeophysics.com/#software): Some seismic softwares by geophysics group at University of Ottawa
- [GPIAG-Software](https://git.scc.kit.edu/GPIAG-Software): Software developed in the working group: [applied geophysics at the geophysical institut of the KIT (Karlsruhe Institute of Technology)](https://www.gpi.kit.edu/english/AppliedGeophysics.php)
- [William Menke's codes](https://www.ldeo.columbia.edu/users/menke/software.html)
- [Live Jupyter Notebooks for Seismology](http://www.seismo-live.org/): Some python scripts used in seismology
- [Seismic waves in complex 3D structures](http://seis.karlov.mff.cuni.cz/)
- [pyrocko](https://pyrocko.org/): an open source seismology toolbox and library written in the Python
- [seisan](http://www.seisan.info/): SeisAn Earthquake analysis software
- [libmseed](https://github.com/iris-edu/libmseed): A miniSEED library that provides a framework for manipulation of SEED data records
- [CREWES Matlab Toolbox](https://www.crewes.org/ResearchLinks/FreeSoftware): Numerical Methods of Exploration Seismology


### Geophysical Library

- [Fatiando](https://www.fatiando.org/): Open-source Python tools for geophysics
    - Looking for the below `fatiando package`? Please check the last paragarphy
    - [fatiando package](https://www.fatiando.org/v0.5/): An open-source Python library for modeling and inversion in geophysics. Its development has been stoped in favor of [new libraries](https://www.fatiando.org/#projects).
- [softwares in UNAVCO](https://www.unavco.org/software/software.html): softwares used in Geodesy studies.


### Computation and Mathmatical Library

- [Netlib](http://www.netlib.org/): a collection of mathematical software, papers, and databases
- [GNU Scientific Library](https://www.gnu.org/software/gsl/): a numerical library for C and C++ programmers | [doc](https://www.gnu.org/software/gsl/doc/html/index.html)
- [SHTOOLS](https://github.com/SHTOOLS/SHTOOLS): Spherical Harmonic Tools
- [Shansyn](http://www.spice-rtn.org/library/software/shansyn): Spherical Harmonic ANalysis and SYNthesis
- [SEISCOPE TOOLBOX](https://seiscope2.osug.fr/SEISCOPE-OPTIMIZATION-TOOLBOX?lang=fr): Seiscope optimization toolbox
- [The Computational Geometry Algorithms Library](https://www.cgal.org/index.html)
- [The Comprehensive R Archive Network](https://cran.r-project.org/)


### Computer Library

- [Free Intel® Software Development Tools](https://software.intel.com/en-us/qualify-for-free-software) | [Chinese introduction](https://blog.seisman.info/intel-non-commercial-software) and [How to uninstall](https://blog.seisman.info/uninstall-intel-parallel-studio-completely)
    - [Educator](https://software.intel.com/en-us/qualify-for-free-software/educator) | [Open Source Contributor](https://software.intel.com/en-us/qualify-for-free-software/opensourcecontributor) | [Student](https://software.intel.com/en-us/qualify-for-free-software/student)


----------------------
## Earth Science Software Centers

- [IRIS SeisCode](https://seiscode.iris.washington.edu)
- [CIG Software](https://geodynamics.org/cig/software)
- [iEarth](http://www.iearth.edu.au)
- [Seismology & Mathematical Geophysics Research Group Software](http://rses.anu.edu.au/seismology/index.php?p=software) (In the Australian National University)
- [GFZ software](https://www.gfz-potsdam.de/en/section/physics-of-earthquakes-and-volcanoes/infrastructure/tool-development-lab/)
- [USC Software](http://www.seis.sc.edu/software.html)
- [ETH Seismology and Geodynamics](https://seg.ethz.ch/software.html)
- [USGS Software](https://www.usgs.gov/natural-hazards/earthquake-hazards/software) | [Old website](https://earthquake.usgs.gov/research/software)
- [SPICE Software](http://www.spice-rtn.org/library/software/softwarefolder_view.html)
- [QUEST Software](http://www.quest-itn.org/library/software)
- [NuQuake Software](http://www.nuquake.eu/Computer_Codes)
- [GPIAG-Software](https://git.scc.kit.edu/GPIAG-Software)
- [EarthByte software](https://www.earthbyte.org/category/resources/software-workflows)
- [MTNet](http://www.mtnet.info/main/source.html): source codes in electromagnetic community


## Revision history

- 2019-12-25: update some links，commit to  SeisMan
- 2019-11-07: initial draft, reference to [SeisMan's links](https://link.seisman.info)

