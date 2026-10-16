# CyCIF analysis scripts

Jupyter notebooks used for cell-level and three-dimensional (3D) spatial analysis of cyclic immunofluorescence (CyCIF) data from tuberculosis-associated tertiary lymphoid structures (TLSs). These scripts support phenotypic characterization, TLS domain analysis, spatial organization, and comparisons with TLS trajectory and granuloma-associated annotations in the **TB-3D-TLS-2026** project.

**Links:** [Main repository](https://github.com/labsyspharm/TB-3D-TLS-2026) · [CyCIF analysis scripts folder](https://github.com/labsyspharm/TB-3D-TLS-2026/tree/main/CyCIF_analysis_scripts)

## Notebooks

| Notebook | Purpose |
| --- | --- |
| [`CyCIF_analysis_codes.ipynb`](./CyCIF_analysis_codes.ipynb) | Main CyCIF workflow: preprocessing, cell phenotyping, quality control, 3D TLS characterization, domain statistics, 2D/3D classification comparisons, spatial LDA motifs, and downstream analyses using separately assigned TLS trajectory clusters. |
| [`CD20_CD21_CD23 domain_analysis.ipynb`](./CD20_CD21_CD23%20domain_analysis.ipynb) | Spatial identification, merging, and visualization of CD20-, CD21-, and CD23-associated domains within 3D TLSs, including assessment of multifocal domains. |

> **Upload note:** Replace the existing empty `CyCIF_analysis_codes.ipynb` in the repository with the complete notebook before relying on the GitHub link above. The README describes the complete notebook provided for this update.

## Analysis workflow

### 1. CyCIF data loading and cell phenotyping

The main notebook reads cell quantification CSVs from serial CyCIF sections, orders the files by section/image identifier, and uses `scimap` to assemble an annotated `AnnData` object. Marker intensities are log-transformed and rescaled using a manually curated gating table (`manual_gates.csv`). Phenotypes are assigned using a CSV-defined scimap phenotyping workflow (`phenotype_workflow_cell_phenotyping.csv`).

Relevant code includes `sm.pp.mcmicro_to_scimap`, `sm.pp.rescale`, and `sm.tl.phenotype_cells`. Specific excluded markers and file paths are recorded within the notebook and reflect the study dataset.

### 2. Quality control and 3D TLS classification

The notebook combines cell-level CyLinter QC annotations with image-specific flags for unreliable phenotypes and markers. Cells and TLSs are subsequently filtered using these QC annotations and a curated `TLS_QC75` list (TLSs meeting the notebook's 75% cell-QC criterion). It also converts section `Z_centroid` values from zero-based to one-based indexing in one preprocessing step.

Curated TLS identifiers are categorized into **Early**, **Primary**, and **Secondary** classes. Subsequent analyses compare their cellular compositions and marker-associated subpopulations, including CD21, CD23, Ki-67, and selected T-cell markers.

### 3. Composition and 2D-versus-3D classification

The main notebook calculates and visualizes:

- Cell-phenotype proportions across TLS classes and individual 3D TLSs.
- Subphenotypes defined using marker-based classification.
- Misclassification/error rates when TLS identity or maturation class is inferred from individual 2D sections rather than the curated 3D classification.
- Comparisons of classification error across selected trajectory-defined TLS groups.

The notebook contains both overall and path-specific classification analyses; the curated class and trajectory/cluster mappings are dataset-specific.

### 4. CD20/CD21/CD23 TLS domains and architectural measurements

**Domain assignments are generated in the separate [domain-analysis notebook](./CD20_CD21_CD23%20domain_analysis.ipynb)**. This notebook uses cell spatial relationships and marker/phenotype annotations to construct CD20-, CD21-, and CD23-associated TLS domains, merge overlapping domain annotations, expand assignments to nearby cells, and visualize domains in serial 2D sections and 3D. It also evaluates TLSs with multiple domain foci.

The main CyCIF notebook *consumes these domain annotations* for downstream analyses of:

- Domain-specific cellular composition, including CD4 T cells, CD8 T cells, regulatory T cells, and Tfh/Tfr-related populations.
- Estimated domain volumes, proportional volumes, and equivalent radii.
- Germinal-center (GC) and follicle size measurements and GC-to-CD21 follicle ratios.
- Regional GC analyses and Ki-67-positive B-cell proliferation.
- Domain-based spatial T-cell localization.

The main notebook estimates volumes from cell areas multiplied by a **15 µm** section spacing/thickness parameter in relevant calculations. Verify units, cell-area conventions, and domain annotation completeness before adapting this analysis.

### 5. Diffusion-map and trajectory-cluster comparisons

The main notebook plots externally generated diffusion-map coordinates and **previously assigned** TLS trajectory/OT cluster labels. These annotations are used to examine marker expression, immune-cell composition, misclassification patterns, and associations with 3D spatial features.

**Important:** These plotting and downstream analysis cells are *not* a standalone implementation of optimal transport or the derivation of the trajectory clusters. The notebook reads precomputed coordinate/cluster data from a separate CSV. Consult the relevant trajectory-analysis methods/code for cluster generation.

### 6. Spatial latent Dirichlet allocation (LDA)

Spatial LDA is performed using `sm.tl.spatial_lda` on QC-passing cells. The code specifies a k-nearest-neighbor method with `knn=10`, `num_motifs=10`, and `random_state=0`, using cell centroid positions and proliferation-informed phenotype annotations. Motifs are examined by phenotype and marker composition and compared across TLS trajectory clusters and granuloma-associated regions.

Related analyses include motif enrichment, spatial distances to motifs, and motif distributions across granulomas. The notebook also includes K-means exploration of the motif-derived data.

### 7. Granuloma association and additional visualizations

Downstream cells explore spatially defined granuloma-associated TLSs (**GrALTs**) versus unassociated TLSs using TLS/granuloma coordinates and distance cutoffs (50, 75, and 100 µm; 100 µm is selected in the corresponding notebook analysis). Other sections include granuloma-size comparisons, linear regression of TLS composition with TLS size as a covariate, cellular point-cloud projections, and exploratory single-cell UMAP visualization.

## Inputs and required annotations

These notebooks are **study-specific research notebooks**, not a turn-key pipeline. They expect inputs produced or curated in preceding segmentation, quantification, phenotyping, 3D reconstruction, and trajectory-analysis stages.

| Input or annotation | Role |
| --- | --- |
| Per-section CyCIF cell quantification `.csv` files | Cell-level marker and spatial measurements used to construct `AnnData`. |
| `manual_gates.csv` | Marker thresholds for scimap rescaling. |
| `phenotype_workflow_cell_phenotyping.csv` | Cell phenotype classification rules. |
| `EO7_B4_3D_phenotyped_NO_cylinter.h5ad` and related `.h5ad` files | Intermediate annotated cell-level data loaded in later steps. |
| CyLinter-QC annotated `.h5ad` file | Cell QC annotations transferred into the analysis data. |
| TLS/domain labels (`TLS_num`, `TLS_domain`, etc.) | 3D TLS and microanatomical domain associations. |
| Cell centroids (`X_centroid`, `Y_centroid`, `Z_centroid`) and `Area` | Spatial distances, projections, and geometric summaries. |
| Phenotype and marker annotations (`phenotype`, marker-based subclasses) | Cell-type, state, and domain analyses. |
| Precomputed diffusion-map/cluster CSV and granuloma annotations | Downstream trajectory comparisons and GrALT analyses. |

Actual file availability, formats, annotation columns, and paths should be checked against the appropriate notebook cells. The complete source datasets and intermediate files are not supplied solely by these two notebooks.

## Python dependencies

The notebooks use packages including:

```bash
pip install jupyter anndata scimap scanpy pandas numpy scipy scikit-learn \
  matplotlib seaborn natsort leidenalg colorcet holoviews bokeh \
  networkx pyvista
```

Additional optional imports may be needed for specific plotting or exploratory cells. Exact versions and a tested environment lockfile are not provided here; the command above is a package guide, **not a verified reproducible environment specification**.

## Running the notebooks

1. Clone or download the [project repository](https://github.com/labsyspharm/TB-3D-TLS-2026).
2. Open [`CyCIF_analysis_codes.ipynb`](./CyCIF_analysis_codes.ipynb) in JupyterLab or Jupyter Notebook.
3. Replace hard-coded local/network paths with locations of your input quantification CSVs, gating and phenotype tables, QC files, and other required intermediate data.
4. Review dataset-specific marker exclusions, curated TLS IDs, quality-control rules, spatial scales, and annotation names.
5. Run the domain-analysis notebook when domain labels are required, and make its resulting annotations available to the main notebook.
6. Provide the separately computed diffusion-map/cluster annotations before running downstream trajectory-comparison cells.
7. Execute and inspect the relevant notebook sections. Some cells are exploratory, read saved intermediate files, or depend on variables defined in earlier or separate work; running every cell sequentially in a clean session is **not guaranteed**.

## Outputs

Depending on the cells executed and input data provided, outputs include phenotype and domain summary tables, misclassification summaries, GC/follicle volume and equivalent-radius statistics, spatial LDA motif matrices and summaries, cluster-comparison figures, granuloma/TLS-association tables, and 2D/3D spatial plots. Graphics may be exported as PDF or PNG, and some intermediate results are saved as CSV or `.h5ad` files. Output filenames and folders are set in individual notebook cells.

## Reproducibility notes

- Paths in the notebooks include study- and workstation-specific absolute locations; replace them before reuse.
- TLS class lists, QC-passing TLS identifiers, marker names, voxel/coordinate scales, and manual annotation conventions reflect this dataset and should not be transferred automatically to other cohorts.
- The main notebook includes exploratory or saved-state-dependent cells. The complete analysis may require intermediate `.h5ad`/CSV outputs from other stages.
- LDA is calculated in the main notebook; diffusion-map coordinates and OT/trajectory clusters used in downstream analyses are imported from a separate workflow.
- Confirm all spatial-unit assumptions and the interpretation of volume estimates from cell areas before reusing the measurements.

## Repository

- [TB-3D-TLS-2026 home](https://github.com/labsyspharm/TB-3D-TLS-2026)
- [CyCIF analysis scripts](https://github.com/labsyspharm/TB-3D-TLS-2026/tree/main/CyCIF_analysis_scripts)
- [Main CyCIF notebook](./CyCIF_analysis_codes.ipynb)
- [CD20/CD21/CD23 domain-analysis notebook](./CD20_CD21_CD23%20domain_analysis.ipynb)

For interpretation of experimental findings, refer to the associated manuscript and its Methods and Supplementary Methods.
