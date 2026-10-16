# MATLAB scripts — 3D TLS segmentation and connected-component analysis

This directory contains MATLAB code used in the **TB-3D-TLS-2026** analysis workflow. The script documented below labels connected regions in a 3D tertiary lymphoid structure (TLS) mask, summarizes the detected components, and prepares smaller batches of labels for inspection and manual curation in MATLAB's volume tools.

**Repository:** [TB-3D-TLS-2026](https://github.com/labsyspharm/TB-3D-TLS-2026) · **Related analysis:** [CyCIF analysis scripts](https://github.com/labsyspharm/TB-3D-TLS-2026/tree/main/CyCIF_analysis_scripts)

> **Documentation scope:** This README documents the supplied `connected_component_analysis_bwlabel_code.m` script. Additional MATLAB scripts in this directory should be documented separately after their code has been reviewed.

## Script

### [`connected_component_analysis_bwlabel_code.m`](connected_component_analysis_bwlabel_code.m)

**Purpose:** Assign a unique numeric label to each connected 3D region of an input TLS mask using **26-connectivity**, report region centroids and voxel volumes, and divide the resulting label volume into manageable groups for downstream inspection/editing.

### Input

The script currently reads:

```matlab
roiMask = tiffreadVolume('3DMASK_DS_cleaned_with_qupath_polygons.tif');
```

The input is expected to be a 3D TIFF mask in the current MATLAB working directory (or at a path supplied by the user). The source code describes the mask as binary; for reproducible connected-component labeling, the foreground should represent the regions of interest and the background should be zero. An alternative input, `3DMASK_DS.tiff`, is included as a commented line.

### Processing steps

1. **3D component labeling:** `bwlabeln(roiMask, 26)` assigns component IDs using a 26-voxel neighborhood (faces, edges, and corners).
2. **Inspection and measurements:** Displays two example z-sections (20 and 25), computes `Centroid` and `Volume` with `regionprops3`, prints the number of connected components, and launches `volumeViewer` and `volumeSegmenter`.
3. **Label batching:** Splits the resulting label volume into five arrays, retaining the original label IDs within each range:

   | Array | Original label IDs retained |
   | --- | --- |
   | `label1` | 1–200 |
   | `label2` | 201–400 |
   | `label3` | 401–600 |
   | `label4` | 601–800 |
   | `label5` | 801–1000 |

4. **Example remapping for manual editing:** Reloads `label2` and subtracts 200 from its nonzero IDs, generating `labels_ed2` with IDs in the range 1–200. Other batches require changing the code appropriately.
5. **Name mapping:** Generates `Label_Names.csv`, mapping the remapped IDs back to their original IDs and names such as `Label201`, to support identification during manual editing.

**Note:** As written, the script processes a maximum of five label batches (IDs 1–1000). IDs greater than 1000 are not retained in any saved batch. These batches separate objects by label ID; they do **not** split the 3D volume into spatial blocks.

### Outputs

The following files are saved in the MATLAB working directory:

| Output | Description |
| --- | --- |
| `label1.mat` … `label5.mat` | Individual label volumes, filtered by ID range |
| `all_labels.mat` | All five filtered label arrays in one MAT file |
| `Label_Names.csv` | Mapping between remapped IDs (1–200 for the `label2` example), original IDs (201–400), and label names |

The full numeric label array (`label`), component statistics (`TLS_Stats`), component count (`numTLS`), remapped array (`labels_ed2`), and mapping table (`mappingTable`) are created in the MATLAB workspace. Saving the full label volume and saving `labels_ed2.mat` are **commented out** in the supplied script; these are not automatically written to disk.

### Requirements

- MATLAB with `tiffreadVolume`, `bwlabeln`, `regionprops3`, `volumeViewer`, and `volumeSegmenter` available.
- **Image Processing Toolbox** for the connected-component, region measurement, and volume visualization/segmentation functions.
- Sufficient RAM to hold the original mask, numeric label volume, and five additional label arrays simultaneously (these arrays may be very large for high-resolution 3D data).

The script does not specify a minimum MATLAB release; verify function availability with your installed version.

### Usage

1. Place the input 3D TIFF mask in the working directory, or edit the `tiffreadVolume` path.
2. Open `connected_component_analysis_bwlabel_code.m` in MATLAB.
3. Run the first sections to label components and inspect `TLS_Stats` and `numTLS`.
4. Run the label-batching section to create the `.mat` files.
5. For a specific batch to curate, modify the remapping section to load the corresponding batch and subtract the appropriate offset (0, 200, 400, 600, or 800); regenerate its name mapping before manual editing.
6. Open the desired label volume in Volume Segmenter and use the generated names to track original label identities.

```matlab
% Example: generate original 3D component labels
roiMask = tiffreadVolume('3DMASK_DS_cleaned_with_qupath_polygons.tif');
label = bwlabeln(roiMask, 26);
TLS_Stats = regionprops3(label, 'Centroid', 'Volume');
```

### Reproducibility notes and limitations

- **Voxel units:** `regionprops3(..., 'Volume')` returns voxel counts; the script does not convert them to physical µm³. The reported centroids are in voxel coordinates. Apply the appropriate voxel spacing in any downstream physical measurements.
- **Connected-component definition:** 26-connectivity can connect voxels touching only at an edge or corner; inspect objects before treating each connected component as an individual biological TLS.
- **Manual curation:** Opening `volumeSegmenter(label)` does not itself save curated objects or reassemble edited batches. Any interactive edits and subsequent merged outputs require additional steps not implemented in this script.
- **Hard-coded views:** The code displays slices 20 and 25; use an input volume with at least 25 slices, or adjust the indices.
- **RAM usage:** `label1 = label; ... label5 = label` followed by filtering may require considerable memory for large volumes.
- **Batch-specific mapping:** The supplied name-mapping routine is explicitly configured for `label2` (original IDs 201–400). The console message claiming `labels_ed2.mat` was saved is not accurate unless its commented-out `save` command is enabled.
- **Input paths and outputs:** Paths and filenames are dataset-specific and should be adapted for independent execution.

## Related resources

- [Main project repository](https://github.com/labsyspharm/TB-3D-TLS-2026)
- [CyCIF analysis scripts](https://github.com/labsyspharm/TB-3D-TLS-2026/tree/main/CyCIF_analysis_scripts)
- [MATLAB `bwlabeln` documentation](https://www.mathworks.com/help/images/ref/bwlabeln.html)
- [MATLAB `regionprops3` documentation](https://www.mathworks.com/help/images/ref/regionprops3.html)

---

*This README describes the supplied script as written; it does not claim that the code independently performs the complete 3D reconstruction or manual curation pipeline.*
