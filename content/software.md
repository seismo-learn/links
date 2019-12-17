---
title: Software
---

### Seismic Data Processing

- [SAC][]: The most commonly used seismic data processing and plotting software
- [ObsPy][]: Data download, processing and visulization software written in Python
- [GISMO][]: Data download, processing and visulization software written in Matlab
- [SeisIO.jl][]: Data download, processing and visulization software written in Julia
- [CPS330][]: Collection of programs for calculating theorectical seismogram, receiver function, surface wave dispersion cureve et al.

[SAC]: http://www.iris.edu/ds/nodes/dmc/forms/sac/
[CPS330]: http://www.eas.slu.edu/eqc/eqccps.html
[ObsPy]: https://github.com/obspy/obspy/wiki
[SeisIO.jl]: https://github.com/jpjones76/SeisIO.jl
[GISMO]: http://geoscience-community-codes.github.io/GISMO/

### Seismic Data Format Conversion

- [rdseed][]: Convert seismic data from SEED format to other common format (SAC et al.)
- [sac2mseed](https://github.com/iris-edu/sac2mseed): Convert SAC format to minniSEED format
- [mseed2sac](https://github.com/iris-edu/mseed2sac): Convert miniSEED format to SAC format
- [win32tools](http://www.hinet.bosai.go.jp/REGS/manual/dlDialogue.php?r=win32tools): Convert WIN32 format used by Hi-net, to SAC format
- [dataselect][]: Selection and sorting for data in miniSEED format
- [ObsPy][]: Data download, processing and visulization software written in Python

[rdseed]: http://www.iris.edu/ds/nodes/dmc/forms/rdseed/
[dataselect]: https://github.com/iris-edu/dataselect

### Data Request Tools

- [BREQ_FAST][]: Seismic data request by sending email
- [IRIS Wilber 3][]: A web GUI to request waveform data of individual seismic events
- SOD: the best seismic data request tool [Homepage](http://www.seis.sc.edu/sod) | [Tutorial (in Chinese)](https://blog.seisman.info/sod-notes/) | [Recipes](https://github.com/seisman/SODrecipes)
- [ObsPy][]: Data download, processing and visulization software written in Python
- [IRIS DMC Web Services][]: Web service for requesting seismic data
- [Web Service Fetch scripts][]: Data request scripts written in Perl
- [jweed][]: Data request client written in Java
- [HinetPy][]: Request data from Hi-net server, written in Python

[jweed]: http://ds.iris.edu/ds/nodes/dmc/software/downloads/jweed/
[IRIS Wilber 3]: http://www.iris.edu/wilber3/find_event
[BREQ_FAST]: http://ds.iris.edu/ds/nodes/dmc/manuals/breq_fast/
[IRIS DMC Web Services]: http://service.iris.edu/
[Web Service Fetch scripts]: https://seiscode.iris.washington.edu/projects/ws-fetch-scripts
[HinetPy]: https://seisman.github.io/HinetPy/

### Plotting

- [GMT][]: the most popular mapping tools in Earth Science
- [PyGMT][]: Python interface of GMT (still under development)
- [ObsPy][]: Data download, processing and visulization software written in Python
- [JPlotResp][]: Plot amplitude and phase of instrumental responses in RESP format.
- [MoPad][]: Analysis and visulization of seismic moment tensor, focal mechanism.
- [obspy-mopad][]: similar to MoPad, provided by ObsPy
- [SeisTomoPy][]: Visulization of 3D tomography models and calculate traveltime in 3D model
- [SubMachine](https://www.earth.ox.ac.uk/~smachine/cgi/index.php): Web-Based Tools for Exploring Seismic Tomography and Other Models of Earth’s Deep Interior

[GMT]: http://gmt.soest.hawaii.edu/
[GMT/Python]: http://www.gmtpython.xyz/
[pssac]: http://www.eas.slu.edu/People/LZhu/home.html
[JPlotResp]: http://www.isti2.com/JPlotResp/
[MoPad]: http://www.larskrieger.de/mopad/
[obspy-mopad]: https://docs.obspy.org/packages/autogen/obspy.imaging.scripts.mopad.html
[SeisTomoPy]: https://github.com/stephaniedurand/SeisTomoPy

### Traveltime Calculation/Ray Tracing

- [TauP][]: Calculate traveltimes, ray parameters, ray paths, reflection points, piercing points of seismic phases, supporting custom Earth models
- [obspy.taup][]: TauP, rewritten in Python
- [Cake][]: Traveltime calculation software, written in Python.
- [ANISOtime][]: Traveltime calculation for transversely isotropic (TI) spherically symmetric models
- [FM3D][]: 3D traveltime calculation using Fast Marching Method
- [pySeismicFMM][]: 3D traveltime calculation using Fast Marching Method, C codes with a Python interface

[TauP]: http://www.seis.sc.edu/taup/
[Cake]: http://pyrocko.org/
[ANISOtime]: http://www-solid.eps.s.u-tokyo.ac.jp/~dsm/anisotime.html
[pySeismicFMM]: https://github.com/gozwei/pySeismicFMM
[FM3D]: http://rses.anu.edu.au/seismology/soft/fmmcode/
[obspy.taup]: http://docs.obspy.org/packages/obspy.taup.html

### Synthetic Seismograms

#### Analytical Methods

- [fk][]: Calculate synthetic seismograms in layered isotropic models, using frequency-wavenumber method
- [yaseis][]: Calculate synthetic seismograms in spherically layered isotropic models, using frequency-wavenumber method
- [QSEIS][]: Synthetic seismograms of layered visco-elastic model
- [QSSP][]: Calculate synthetic seismograms in spherically layered models, using normal modes summation method
- [Mineos][]: computes synthetic seismograms in a spherically symmetric non-rotating Earth by summing normal modes
- [GEMINI][]: Calculation of synthetic seismograms for global, spherically symmetric media based in direct evaluation of Green's functions
- [DSM][]: Synthetic seismograms using Direct Solution Method ([tish][], [tipsv][], [spcsac][])

#### Finite Difference Methods

- [SOFI2D][]: 2D Finite-Difference Seismic Wave Simulation for P-SV system
- [SOFI2D-sh][]: 2D Finite-Difference Seismic Wave Simulation for SH system
- [SOFI3D][]: 3D Finite-Difference Seismic Wave Simulation
- [SEISMIC_CPML][]: 2D/3D Finite-Difference Seismic Wave Simulation + CPML
- [SW4][]: 3D Finite-Difference Seismic Wave Simulation
- [OpenSWPC][]: 2D/3D Finite-Difference Seismic Wave Simulation

#### Spectral Element Methods

- [SPECFEM1D][]: Simulates seismic wave propagation in a 1D heterogeneous medium, using spectral element method
- [SPECFEM2D][]: Simulates seismic wave propagation in a 2D heterogeneous medium, using spectral element method
- [SPECFEM3D][]: Simulates seismic wave propagation in a 3D heterogeneous medium, using spectral element method (Cartesian coordinate system)
- [SPECFEM3D Global][]: Simulates seismic wave propagation in a 3D heterogeneous medium, using spectral element method (spherical coordinate system)
- [AxiSEM][]: a parallel spectral-element method to solve 3D wave propagation in a sphere with axisymmetric or spherically symmetric visco-elastic, acoustic, anisotropic structures.
- [Instaseis][]: The Python interface of AxiSEM
- [AxiSEM3D][]:
- [NEXD][]: Nodal Discontinuous Galerkin Method

[fk]: http://www.eas.slu.edu/People/LZhu/home.html
[QSEIS]: http://www.gfz-potsdam.de/en/section/physics-of-earthquakes-and-volcanoes/data-products-services/downloads-software/
[SHaxi]: http://svn.geophysik.uni-muenchen.de/trac/shaxi
[QSSP]: http://www.gfz-potsdam.de/en/section/physics-of-earthquakes-and-volcanoes/data-products-services/downloads-software/
[Mineos]: https://github.com/geodynamics/mineos
[yaseis]: https://seiscode.iris.washington.edu/projects/yaseis
[AxiSEM]: https://github.com/geodynamics/axisem
[Instaseis]: http://instaseis.net/
[GEMINI]: http://www.quest-itn.org/library/software/gemini-greens-function-of-the-earth-by-minor-integration
[DSM]: http://www-solid.eps.s.u-tokyo.ac.jp/~dsm/software/software.htm
[tipsv]: http://www-solid.eps.s.u-tokyo.ac.jp/~dsm/software/software/tipsv-1.8.0.tar.gz
[tish]: http://www-solid.eps.s.u-tokyo.ac.jp/~dsm/software/software/tish-1.9.0.tar.gz
[spcsac]: http://www-solid.eps.s.u-tokyo.ac.jp/~dsm/software/software/spcsac-v1.0.0.tar.gz
[SOFI2D]: https://git.scc.kit.edu/GPIAG-Software/SOFI2D/
[SOFI2D-sh]: https://git.scc.kit.edu/GPIAG-Software/SOFI2D_sh
[SOFI3D]: https://git.scc.kit.edu/GPIAG-Software/SOFI3D
[SEISMIC_CPML]: https://github.com/geodynamics/seismic_cpml
[SPECFEM1D]: https://github.com/geodynamics/specfem1d
[SPECFEM2D]: https://github.com/geodynamics/specfem2d
[SPECFEM3D]: https://github.com/geodynamics/specfem3d
[SPECFEM3D Global]: https://github.com/geodynamics/specfem3d_globe
[SW4]: https://github.com/geodynamics/sw4
[OpenSWPC]: https://github.com/takuto-maeda/OpenSWPC
[AxiSEM3D]: https://github.com/kuangdai/AxiSEM3D
[NEXD]: http://www.gmg.ruhr-uni-bochum.de/geophysik/seismology/nexd.html

#### Discontinuous Galerkin Method

- [SeisSol](https://github.com/SeisSol/SeisSol): a scientific software for the numerical simulation of seismic wave phenomena and earthquake dynamics

### Researches

#### Surface Wave Tomography

- [tomo_sp_cu_s](http://ciei.colorado.edu/Products/): Surface wave tomography based on ray theory
- [AFTAN][]: Automatic frequency-time analysis
- [ASWMS][]: Automated Surface-Wave Phase-Velocity Measuring System, written in Matlab
- [senskernel][]: Calculate sensitivity kernal of group velocity and phase velocity

[ASWMS]: https://ds.iris.edu/ds/products/aswms/
[AFTAN]: http://ciei.colorado.edu/Products/
[senskernel]: http://ciei.colorado.edu/Products/

#### Full Waveform Inversion

- [TOY2DAC][]: 2D Acoustic frequency-domain Full Waveform modeling and inversion code.
- [ASKI][]: modularized program suite for sensitivity analysis and iterative full waveform inversion
- [FWI.jl][]: 2D/3D acoustic FWI in Julia
- [IFOS2D][]: 2D elastic wave FWI
- [IFOS3D][]: 3D elastic wave FWI
- [DENISE-SH][]: 2D SH wave full waveform modeling and inversion
- [DENISE][]: 2D PSV wave full waveform modeling and inversion
- [GERMAINE][]: 2D Acoustic frequency-domain Full Waveform modeling and inversion code.
- [SAVA][]: 3D seismic modelling, FWI and RTM code for wave propagation in isotropic (visco)-acoustic/elastic and anisotropic orthorhombic/triclinic elastic media
- [SES3D][]: simulation of elastic wave propagation and waveform inversion in a spherical section
- [LASIF][]: Framework for large scale full waveform inversion
- [seisDD][]: Double-difference adjoint seismic tomography
- [Salvus][]: full waveform modelling and inversion

[TOY2DAC]: https://seiscope2.osug.fr/TOY2DAC,82
[ASKI]: http://www.gmg.ruhr-uni-bochum.de/geophysik/seismology/aski.html
[FWI.jl]: https://github.com/JuliaInv/FWI.jl
[IFOS2D]: https://git.scc.kit.edu/GPIAG-Software/IFOS2D
[IFOS3D]: https://git.scc.kit.edu/GPIAG-Software/IFOS3D
[DENISE-SH]: https://github.com/daniel-koehn/DENISE-SH
[DENISE]: https://github.com/daniel-koehn/DENISE-Black-Edition
[SES3D]: http://www.cos.ethz.ch/software/production/ses3d.html
[LASIF]: http://www.lasif.net/
[seisDD]: https://github.com/yanhuay/seisDD
[Salvus]: https://salvus.io/
[GERMAINE]: https://github.com/daniel-koehn/GERMAINE
[SAVA]: https://github.com/daniel-koehn/SAVA

#### Focal Mechanisms

- [gcap][]: Focal mechanism inversion using cut and paste method
- [pyTDMT][]: time-domain focal mechanism inversion, written in Python
- [WPhase][]: Focal mechanism inversion using W phase
- [focmec][]: Package for determining and displaying earthquake focal mechanisms.
- [HASH][]: Determine focal mechanism based on first-motion polarities.
- [MTfit](https://github.com/djpugh/MTfit): Bayesian Moment Tensor Fitting

[gcap]: http://www.eas.slu.edu/People/LZhu/home.html
[pyTDMT]: https://github.com/fabriziobernardi/pydmt
[WPhase]: http://eost.u-strasbg.fr/wphase/
[focmec]: https://seiscode.iris.washington.edu/projects/focmec
[HASH]: https://earthquake.usgs.gov/research/software/#HASH

#### Phase Picking

- [PhasePApy][]: Seismic Phase Picker and Associator, written in Python
- [astack][]: Adaptive stacking to align traces
- [CrazySeismic_Pick][]: Align traces based on multi-channel correlation

[PhasePApy]: https://github.com/austinholland/PhasePApy
[astack]: http://rses.anu.edu.au/seismology/soft/astack/index.html
[CrazySeismic_Pick]: http://web.gps.caltech.edu/~yucq/software.html

#### Shear Wave Splitting

- [SplitLab][]: Shear-wave birefringence analysis code, written in Matlab
- [multisplit][]: Shear-wave birefringence analysis code
- [SplitRacer][]: Shear-wave birefringence analysis code
- [SHEBA][]: Shear-wave birefringence analysis code

[SplitLab]: http://splitting.gm.univ-montp2.fr/
[multisplit]: https://github.com/ftilmann/multisplit
[SplitRacer]: http://www.geophysik.uni-frankfurt.de/64002762/Software
[SHEBA]: https://github.com/jwookey/sheba

#### Receiver Function

- [hk][]
- [CCP][]: Common conversion point stakcing.
- [rf][]: Written in Python
- [IRFFM][]: With a GUI
- [CrazySeismic_Decon][]: Based on Matlab
- [FuncLab][]: Based on Matlab

[hk]: http://www.eas.slu.edu/People/LZhu/home.html
[CCP]: http://www.eas.slu.edu/People/LZhu/home.html
[rf]: https://github.com/trichter/rf
[IRFFM]: http://rses.anu.edu.au/~hrvoje/IRFFMv1.1.html
[CrazySeismic_Decon]: http://web.gps.caltech.edu/~yucq/software.html
[FuncLab]: https://robporritt.wordpress.com/software/

#### Ambient Noise Tomography

- [MSNoise][]: Monitor seismic velocity changes using ambient seismic noise
- [seismic-noise-tomography][]: Python framework for seismic noise tomography

[MSNoise]: http://www.msnoise.org/
[seismic-noise-tomography]: https://github.com/bgoutorbe/seismic-noise-tomography

#### Earthquake Detection

- [EQcorrscan](https://github.com/eqcorrscan/EQcorrscan): Earthquake detection and analysis in Python.
- [FastMatchedFilter][]: An efficient seismic matched-filter search for both CPU and GPU architectures.
- [REDPy](https://github.com/ahotovec/REDPy): Repeating Earthquake Detector, written in Python

[FastMatchedFilter]: https://github.com/beridel/fast_matched_filter

#### Earthquake relocation

- [GrowClust](https://github.com/dttrugman/GrowClust): Relative relocation for earthquake hypocenters

#### Z/H Ratio

- [HtoV-Toolbox](https://github.com/krischer/HtoV-Toolbox): Calculate H/V ratios

### Mathmatical library

- [SHTOOLS][]: Spherical Harmonic Tools

[SHTOOLS]: https://github.com/SHTOOLS/SHTOOLS

### Library

- [libmseed][]: https://github.com/iris-edu/libmseed
- [SEC_C][https://github.com/Naderss/SEC_C]: Super-Efficient Cross-Correlation

[libmseed]: https://seiscode.iris.washington.edu/projects/libmseed

### Others

- [distaz][]: Classic codes to calculate distance, azimuth and back-azimuth of any two points at the Earth's surface
- [DigitSeis][]: A Digitization Software for Analog Seismograms, written in Matlab
- [CitcomS][]: solve compressible thermochemical convection problems relevant to Earth's mantle.
- [AFAT][]: Solving the Christoffel equation: phase and group velocities

[distaz]: http://www.seis.sc.edu/software/distaz/
[DigitSeis]: http://www.seismology.harvard.edu/research/DigitSeis.html
[CitcomS]: https://github.com/geodynamics/citcoms
[AFAT]: http://cpc.cs.qub.ac.uk/summaries/AFAT_v1_0.html
