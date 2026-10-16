# MCMICRO processing parameters

This directory contains the MCMICRO configuration used for processing multiplexed CyCIF microscopy images in the **TB-3D-TLS-2026** analysis repository.

- **Configuration:** [`params.yml`](./params.yml)
- **Main repository:** [TB-3D-TLS-2026](https://github.com/labsyspharm/TB-3D-TLS-2026)
- **Related analysis:** [CyCIF analysis scripts](../CyCIF_analysis_scripts/) · [MATLAB scripts](../Matlab_scripts/)
- **Pipeline:** [MCMICRO documentation](https://mcmicro.org/) · [MCMICRO source code](https://github.com/labsyspharm/mcmicro)

## Overview

The supplied `params.yml` configures an MCMICRO workflow from **illumination correction** through **single-cell quantification**. It specifies parameters for ASHLAR image registration, UNMICST, S3SEG, and MCQUANT, and pins the registration and watershed module versions. The file is a pipeline configuration, **not a standalone runnable script or a complete execution record**.

## Configuration summary

The settings below are reproduced from [`params.yml`](./params.yml).

### Workflow

| Key | Value | Role |
| --- | --- | --- |
| `workflow.start-at` | `illumination` | Begin processing at illumination correction. |
| `workflow.stop-at` | `quantification` | Continue through cell-feature quantification. |
| `workflow.background` | `false` | Disable the optional background workflow setting. |

### Module options

| Module | Setting | Value | Description |
| --- | --- | --- | --- |
| ASHLAR | `--barrel-correction` | `3.041e-09` | Barrel-distortion correction parameter during image registration. |
| UNMICST | `--channel` | `1` | Image channel supplied to UNMICST. |
| UNMICST | `--scalingFactor` | `0.5` | Scaling factor supplied to UNMICST. |
| S3SEG | `--maxima-footprint-size` | `11` | Footprint size for local-maxima detection. |
| S3SEG | `--area-max` | `50000` | Maximum object-area parameter. |
| S3SEG | `--expand-size` | `6` | Mask expansion parameter. |
| S3SEG | `--pixelSize` | `0.325` | Pixel-size parameter supplied to segmentation; check units against the relevant S3SEG version. |
| S3SEG | `--mean-intensity-min` | `80` | Minimum mean-intensity parameter. |
| MCQUANT | `--masks` | `nucleiRing.ome.tif cellRing.ome.tif cytoRing.ome.tif` | Segmentation-mask images to be quantified. |

### Pinned module versions

| Configuration key | Version |
| --- | --- |
| `modules.registration.version` | `1.19.0b1` |
| `modules.watershed.version` | `1.5.4-large` |

These are **module-version settings**, not the MATLAB, Python, Nextflow, or top-level MCMICRO versions.

## Configuration file

```yaml
workflow:
  start-at: illumination
  stop-at: quantification
  background: false
options:
  ashlar: --barrel-correction 3.041e-09
  unmicst: --channel 1 --scalingFactor 0.5
  s3seg: --maxima-footprint-size 11 --area-max 50000 --expand-size 6 --pixelSize 0.325 --mean-intensity-min 80
  mcquant: --masks nucleiRing.ome.tif cellRing.ome.tif cytoRing.ome.tif
modules:
  registration:
    version: 1.19.0b1
  watershed:
    version: 1.5.4-large
```

## Running the workflow

1. Install and configure a compatible [MCMICRO/Nextflow](https://mcmicro.org/) environment and its required container runtime.
2. Prepare the multiplexed image inputs in the format expected by your MCMICRO version.
3. Supply [`params.yml`](./params.yml) as the MCMICRO parameter file when launching the pipeline, following the **command-line syntax for your installed MCMICRO revision**.
4. Confirm that input-channel ordering, spatial calibration, and the three MCQUANT mask names match the files actually produced by the workflow.
5. Inspect registration, segmentation, and quantification outputs before using them for downstream cell and TLS analysis.

**Reproducibility note:** `params.yml` does not specify the exact pipeline commit, full launch command, input paths, sample manifest, compute environment, or output directories. These must be recorded separately to reproduce an entire run. Some option names and module interfaces can vary between MCMICRO releases.

## Outputs and downstream analysis

The workflow is configured to reach the quantification stage and to quantify nuclear, cell-ring, and cytoplasmic-ring masks. Actual output filenames and locations depend on the MCMICRO version and invocation; they are not defined in this YAML file.

For downstream code, see the [CyCIF analysis notebooks](../CyCIF_analysis_scripts/) and [3D MATLAB analysis scripts](../Matlab_scripts/).

## Citation

For the methods and citations appropriate to the pipeline, see the [MCMICRO project](https://mcmicro.org/) and the associated TB-3D-TLS-2026 manuscript/repository. Add the paper citation here when finalized.
