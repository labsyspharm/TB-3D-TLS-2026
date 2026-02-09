​
--------------------
# Multidimensional Spatial Characterization of Tertiary Lymphoid Structures in Human Pulmonary TB Lung Granulomas
------------------ 
TABLE OF CONTENTS
------------------
​
* GENERAL INFORMATION
  * ASSOCIATED PUBLICATION
  * RECOMMENDED CITATION
  * USEFUL LINKS
* ACCESS THE DATASET
  * FILE ORGANIZATION
  * REPOSITORY LINKS
  * FILE LIST
* ADDITIONAL NOTES/COMMENTS
​
--------------------
GENERAL INFORMATION
--------------------

--------------------
**Multidimensional Spatial Characterization of Tertiary Lymphoid Structures in Human Pulmonary TB Lung Granulomas** 
--------------------
​
**Authors**: Emmanuel C. Ogbonna*, Soheil R. Talemi*, Ziyuan Zhao, Zoltan Maliga, Clarence Yapp, Yu-An Chen, Shishir Pant, Jeremy Muhlich, Brigette B.K. Kobs, Mariana Lopez Leon, Andréanne Gagné, Threnesan Naidoo, Angela Shih, Isaac H. Solomon, Sandro Santagata, Amanda J. Martinot, Adrie Steyn, Bree B. Aldridge†, Peter K. Sorger†

 *Authors contributed equally to this article.  
 †Co-corresponding. 

**Please cite this data as the following:**
Ogbonna and Rastgou Talemi (2026). Multidimensional Spatial Characterization of Tertiary Lymphoid Structures in Human Pulmonary TB Lung Granulomas.  {journal/biorxv}
  
Relevant links:
> * Publication DOI: [doi.org/MY-PAPER-DOI](https://doi.org/MY-PAPER-DOI-URL) 
> * Associated GitHub Repository: https://github.com/labsyspharm/TB-3D-TLS-2026/  
> * To view an archived record of this repository: [My-ZENODO-DOI](https://zenodo.org/doi/MY-ZENDODO-DOI-URL) 
> * To view the image data online, visit: [My-ATLAS-PAGE](https://tissue-atlas.org/MY-ATLAS-PAGE-URL)
> * Associated documentation website: [MY-PROJECT-WEBSITE](MY-PROJECT-WEBSITE-URL)  
> * DOI of other publications that use the data: <If this data is being reused from a past publication, include DOI and APA citation>​
--------------------
ACCESS THE DATASET 
--------------------
## File organization:   
**Each file follows the following naming convention:**    
​
Each folder corresponds to a patient sample (N). <Edit as needed if this folder structure does not fit the needs of your paper> 
 
|File Type           | Description                                                                        | Location|
|--------------------| -----------------------------------------------------------------------------------|---------|
|N.ome.tif           | Stitched multiplex CyCIF image pyramid in ome.tif format                           | AWS     |
|N.ome.tif           | Hematoxylin and Eosin stained image of adjacent FFPE tissue section                | AWS     |
|N-cellRing. ome.tif | Segmentation mask image                                                            | AWS     |
|N.csv               | single-cell feature table, including intensity data for all channels               | AWS     |
|N.fastq             | GeoMx Sequencing data                                                                    | GEO     |
|N.ims               | Stitched and registered 3D multiplexed CyCIF image in .ims format                  | AWS     |​​
## AWS Data Access  
​
Full-resolution CyCIF images, single cell segmentation masks, and cell count tables will be available via AWS.​ You will need the following bucket name:
​
```
AWS BUCKET NAME  
```
​
*For general instructions on how to download data from AWS, see: [https://zenodo.org/records/10223574](https://zenodo.org/records/10223574)*     
  
If you experience issues accessing the above AWS S3 buckets, email tissue-atlas(at)hms.harvard.edu with the subject line "bucketname: Data Access".​
## Other Repository 
Image data generated during this study are available on the Gates TB Data Portal (https://idp.tissue-atlas.org/). For access, email tissue-atlas(at)hms.harvard.edu with the subject line "Gates TB Data Portal: Data Access".  
## FILE LIST 

## **CyCIF Image Data**​
| Patient ID |File Name                     | Location | File Size (GB) | Antibody Panel |
|-------------|-------------------------------|----------|---------------|----------------|
| Patient1_B4 | LSP24522.ome.tif              | AWS      | 222.37 | p17e16_EO7_B4_3D IMAGE RECONSTRUCTION |
| Patient1_B4 | LSP24525.ome.tif              | AWS      | 202.51 | p17e16_EO7_B4_3D IMAGE RECONSTRUCTION |
| Patient1_B4 | LSP24528.ome.tif              | AWS      | 202.57 | p17e16_EO7_B4_3D IMAGE RECONSTRUCTION |
| Patient1_B4 | LSP24531.ome.tif              | AWS      | 225.94 | p17e16_EO7_B4_3D IMAGE RECONSTRUCTION |
| Patient1_B4 | LSP24534.ome.tif              | AWS      | 220.79 | p17e16_EO7_B4_3D IMAGE RECONSTRUCTION |
| Patient1_B4 | LSP24537.ome.tif              | AWS      | 204.92 | p17e16_EO7_B4_3D IMAGE RECONSTRUCTION |
| Patient1_B4 | LSP24540.ome.tif              | AWS      | 191.57 | p17e16_EO7_B4_3D IMAGE RECONSTRUCTION |
| Patient1_B4 | LSP24543.ome.tif              | AWS      | 213.09 | p17e16_EO7_B4_3D IMAGE RECONSTRUCTION |
| Patient1_B4 | LSP24546.ome.tif              | AWS      | 205.37 | p17e16_EO7_B4_3D IMAGE RECONSTRUCTION |
| Patient1_B4 | LSP24549.ome.tif              | AWS      | 212.91 | p17e16_EO7_B4_3D IMAGE RECONSTRUCTION |
| Patient1_B4 | LSP24552.ome.tif              | AWS      | 199.53 | p17e16_EO7_B4_3D IMAGE RECONSTRUCTION |
| Patient1_B4 | LSP24555.ome.tif              | AWS      | 212.91 | p17e16_EO7_B4_3D IMAGE RECONSTRUCTION |
| Patient1_B4 | LSP24558.ome.tif              | AWS      | 221.39 | p17e16_EO7_B4_3D IMAGE RECONSTRUCTION |
| Patient1_B4 | LSP24561.ome.tif              | AWS      | 217.61 | p17e16_EO7_B4_3D IMAGE RECONSTRUCTION |
| Patient1_B4 | LSP24564.ome.tif              | AWS      | 214.29 | p17e16_EO7_B4_3D IMAGE RECONSTRUCTION |
| Patient1_B4 | LSP24567.ome.tif              | AWS      | 196.63 | p17e16_EO7_B4_3D IMAGE RECONSTRUCTION |
| Patient1_B4 | LSP24570.ome.tif              | AWS      | 207.13 | p17e16_EO7_B4_3D IMAGE RECONSTRUCTION |
| Patient1_B4 | LSP24573.ome.tif              | AWS      | 226.64 | p17e16_EO7_B4_3D IMAGE RECONSTRUCTION |
| Patient1_B4 | LSP24576.ome.tif              | AWS      | 230.50 | p17e16_EO7_B4_3D IMAGE RECONSTRUCTION |
| Patient1_B4 | LSP24579.ome.tif              | AWS      | 205.65 | p17e16_EO7_B4_3D IMAGE RECONSTRUCTION |
| Patient1_B4 | LSP24582.ome.tif              | AWS      | 226.38 | p17e16_EO7_B4_3D IMAGE RECONSTRUCTION |
| Patient1_B4 | LSP24585.ome.tif              | AWS      | 199.04 | p17e16_EO7_B4_3D IMAGE RECONSTRUCTION |
| Patient1_B4 | LSP24588.ome.tif              | AWS      | 215.38 | p17e16_EO7_B4_3D IMAGE RECONSTRUCTION |
| Patient1_B4 | LSP24591.ome.tif              | AWS      | 200.37 | p17e16_EO7_B4_3D IMAGE RECONSTRUCTION |
| Patient1_B4 | LSP24594.ome.tif              | AWS      | 217.11 | p17e16_EO7_B4_3D IMAGE RECONSTRUCTION |
| Patient1_B4 | LSP24597.ome.tif              | AWS      | 199.92 | p17e16_EO7_B4_3D IMAGE RECONSTRUCTION |
| Patient1_B4 | LSP24600.ome.tif              | AWS      | 202.57 | p17e16_EO7_B4_3D IMAGE RECONSTRUCTION |
| Patient1_B4 | LSP24603.ome.tif              | AWS      | 219.74 | p17e16_EO7_B4_3D IMAGE RECONSTRUCTION |
| Patient1_B4 | LSP24606.ome.tif              | AWS      | 219.70 | p17e16_EO7_B4_3D IMAGE RECONSTRUCTION |
| Patient1_B4 | LSP24609.ome.tif              | AWS      | 226.05 | p17e16_EO7_B4_3D IMAGE RECONSTRUCTION |
| Patient1_B4 | LSP24612.ome.tif              | AWS      | 197.44 | p17e16_EO7_B4_3D IMAGE RECONSTRUCTION |
| Patient1_B4 | LSP24615.ome.tif              | AWS      | 222.30 | p17e16_EO7_B4_3D IMAGE RECONSTRUCTION |
| Patient1_B4 | LSP24618.ome.tif              | AWS      | 197.84 | p17e16_EO7_B4_3D IMAGE RECONSTRUCTION |
| Patient1_B4 | LSP24621.ome.tif              | AWS      | 198.85 | p17e16_EO7_B4_3D IMAGE RECONSTRUCTION |
| Patient1_B4 | LSP24624.ome.tif              | AWS      | 198.49 | p17e16_EO7_B4_3D IMAGE RECONSTRUCTION |
| Patient1_B4 | LSP24627.ome.tif              | AWS      | 216.52 | p17e16_EO7_B4_3D IMAGE RECONSTRUCTION |
| Patient1_B4 | LSP24630.ome.tif              | AWS      | 210.79 | p17e16_EO7_B4_3D IMAGE RECONSTRUCTION |
| Patient1_B4 | LSP24633.ome.tif              | AWS      | 193.94 | p17e16_EO7_B4_3D IMAGE RECONSTRUCTION |
| Patient1_B4 | LSP24636.ome.tif              | AWS      | 203.49 | p17e16_EO7_B4_3D IMAGE RECONSTRUCTION |
| Patient1_B4 | LSP24639.ome.tif              | AWS      | 185.99 | p17e16_EO7_B4_3D IMAGE RECONSTRUCTION |
| Patient1_B5 | LSP16101.ome.tif              | AWS      | 214.00 | ORION imaging panel |
| Patient1_B5 | LSP16102_B5_Scan1.ome.tiff    | AWS      | 15.30 | p17_e6_TB_Granulomas_GeoMx IF |
| Patient1_B5 | LSP16102.ome.tif              | AWS      | 19.20 | EO8_p17e25_PostGeoMx_CyCIF |
| Patient1_B5 | LSP16104.ome.tif              | AWS      | 147.00 | EO4_TB_MDSC_rerun |
| Patient1_B5 | LSP16105.ome.tif              | AWS      | 164.00 | EO5_B5 and AHRI samples |
| Patient2    | LSP16031.ome.tif              | AWS      | 11.30 | p17_e6_TB_Granulomas_GeoMx IF |



### H&E Image Data  
| Patient ID  | File Name                  | Location | File Size (GB) |
|-------------|----------------------------|----------|---------------|
| Patient1_B4 | LSP24521.ome.tif           | AWS      | 12.15 |
| Patient1_B4 | LSP24524.ome.tif           | AWS      | 14.00 |
| Patient1_B4 | LSP24527.ome.tif           | AWS      | 13.48 |
| Patient1_B4 | LSP24530.ome.tif           | AWS      | 12.78 |
| Patient1_B4 | LSP24533.ome.tif           | AWS      | 13.78 |
| Patient1_B4 | LSP24536.ome.tif           | AWS      | 16.61 |
| Patient1_B4 | LSP24539.ome.tif           | AWS      | 16.72 |
| Patient1_B4 | LSP24542.ome.tif           | AWS      | 16.42 |
| Patient1_B4 | LSP24545.ome.tif           | AWS      | 18.33 |
| Patient1_B4 | LSP24548.ome.tif           | AWS      | 13.97 |
| Patient1_B4 | LSP24551.ome.tif           | AWS      | 12.54 |
| Patient1_B4 | LSP24554.ome.tif           | AWS      | 13.91 |
| Patient1_B4 | LSP24557.ome.tif           | AWS      | 13.83 |
| Patient1_B4 | LSP24560.ome.tif           | AWS      | 13.21 |
| Patient1_B4 | LSP24563.ome.tif           | AWS      | 13.25 |
| Patient1_B4 | LSP24566.ome.tif           | AWS      | 13.93 |
| Patient1_B4 | LSP24569.ome.tif           | AWS      | 13.46 |
| Patient1_B4 | LSP24572.ome.tif           | AWS      | 14.41 |
| Patient1_B4 | LSP24575.ome.tif           | AWS      | 13.23 |
| Patient1_B4 | LSP24578.ome.tif           | AWS      | 13.43 |
| Patient1_B4 | LSP24581.ome.tif           | AWS      | 13.23 |
| Patient1_B4 | LSP24584.ome.tif           | AWS      | 12.64 |
| Patient1_B4 | LSP24587.ome.tif           | AWS      | 13.73 |
| Patient1_B4 | LSP24590.ome.tif           | AWS      | 13.01 |
| Patient1_B4 | LSP24593.ome.tif           | AWS      | 12.73 |
| Patient1_B4 | LSP24596.ome.tif           | AWS      | 13.72 |
| Patient1_B4 | LSP24599.ome.tif           | AWS      | 17.65 |
| Patient1_B4 | LSP24602.ome.tif           | AWS      | 11.89 |
| Patient1_B4 | LSP24605.ome.tif           | AWS      | 16.95 |
| Patient1_B4 | LSP24608.ome.tif           | AWS      | 14.84 |
| Patient1_B4 | LSP24611.ome.tif           | AWS      | 13.68 |
| Patient1_B4 | LSP24614.ome.tif           | AWS      | 13.78 |
| Patient1_B4 | LSP24617.ome.tif           | AWS      | 13.49 |
| Patient1_B4 | LSP24620.ome.tif           | AWS      | 14.22 |
| Patient1_B4 | LSP24623.ome.tif           | AWS      | 13.12 |
| Patient1_B4 | LSP24626.ome.tif           | AWS      | 13.01 |
| Patient1_B4 | LSP24629.ome.tif           | AWS      | 13.53 |
| Patient1_B4 | LSP24632.ome.tif           | AWS      | 12.78 |
| Patient1_B4 | LSP24635.ome.tif           | AWS      | 13.39 |
| Patient1_B4 | LSP24638.ome.tif           | AWS      | 11.72 |
| Patient1_B5 | LSP16103.ome.tif           | AWS      | 0.84 |
| Patient1_B5 | LSP16106.ome.tiff          | AWS      | 19.70 |​

### Segmentation Mask Data

| Patient ID  | File Name            | File Size (GB) | Antibody Panel |
|-------------|----------------------|---------------|----------------|
| Patient1_B4 | LSP24522.ome.tif     | 17.39 | p17e16_EO7_B4_3D IMAGE RECONSTRUCTION |
| Patient1_B4 | LSP24525.ome.tif     | 16.20 | p17e16_EO7_B4_3D IMAGE RECONSTRUCTION |
| Patient1_B4 | LSP24528.ome.tif     | 16.20 | p17e16_EO7_B4_3D IMAGE RECONSTRUCTION |
| Patient1_B4 | LSP24531.ome.tif     | 17.39 | p17e16_EO7_B4_3D IMAGE RECONSTRUCTION |
| Patient1_B4 | LSP24534.ome.tif     | 17.39 | p17e16_EO7_B4_3D IMAGE RECONSTRUCTION |
| Patient1_B4 | LSP24537.ome.tif     | 16.73 | p17e16_EO7_B4_3D IMAGE RECONSTRUCTION |
| Patient1_B4 | LSP24540.ome.tif     | 14.93 | p17e16_EO7_B4_3D IMAGE RECONSTRUCTION |
| Patient1_B4 | LSP24543.ome.tif     | 16.73 | p17e16_EO7_B4_3D IMAGE RECONSTRUCTION |
| Patient1_B4 | LSP24546.ome.tif     | 16.20 | p17e16_EO7_B4_3D IMAGE RECONSTRUCTION |
| Patient1_B4 | LSP24549.ome.tif     | 17.39 | p17e16_EO7_B4_3D IMAGE RECONSTRUCTION |
| Patient1_B4 | LSP24552.ome.tif     | 16.20 | p17e16_EO7_B4_3D IMAGE RECONSTRUCTION |
| Patient1_B4 | LSP24555.ome.tif     | 16.84 | p17e16_EO7_B4_3D IMAGE RECONSTRUCTION |
| Patient1_B4 | LSP24558.ome.tif     | 17.39 | p17e16_EO7_B4_3D IMAGE RECONSTRUCTION |
| Patient1_B4 | LSP24561.ome.tif     | 17.39 | p17e16_EO7_B4_3D IMAGE RECONSTRUCTION |
| Patient1_B4 | LSP24564.ome.tif     | 16.84 | p17e16_EO7_B4_3D IMAGE RECONSTRUCTION |
| Patient1_B4 | LSP24567.ome.tif     | 15.57 | p17e16_EO7_B4_3D IMAGE RECONSTRUCTION |
| Patient1_B4 | LSP24570.ome.tif     | 16.84 | p17e16_EO7_B4_3D IMAGE RECONSTRUCTION |
| Patient1_B4 | LSP24573.ome.tif     | 18.05 | p17e16_EO7_B4_3D IMAGE RECONSTRUCTION |
| Patient1_B4 | LSP24576.ome.tif     | 18.05 | p17e16_EO7_B4_3D IMAGE RECONSTRUCTION |
| Patient1_B4 | LSP24579.ome.tif     | 16.20 | p17e16_EO7_B4_3D IMAGE RECONSTRUCTION |
| Patient1_B4 | LSP24582.ome.tif     | 18.05 | p17e16_EO7_B4_3D IMAGE RECONSTRUCTION |
| Patient1_B4 | LSP24585.ome.tif     | 16.20 | p17e16_EO7_B4_3D IMAGE RECONSTRUCTION |
| Patient1_B4 | LSP24588.ome.tif     | 17.39 | p17e16_EO7_B4_3D IMAGE RECONSTRUCTION |
| Patient1_B4 | LSP24591.ome.tif     | 15.57 | p17e16_EO7_B4_3D IMAGE RECONSTRUCTION |
| Patient1_B4 | LSP24594.ome.tif     | 16.73 | p17e16_EO7_B4_3D IMAGE RECONSTRUCTION |
| Patient1_B4 | LSP24597.ome.tif     | 16.20 | p17e16_EO7_B4_3D IMAGE RECONSTRUCTION |
| Patient1_B4 | LSP24600.ome.tif     | 16.84 | p17e16_EO7_B4_3D IMAGE RECONSTRUCTION |
| Patient1_B4 | LSP24603.ome.tif     | 17.39 | p17e16_EO7_B4_3D IMAGE RECONSTRUCTION |
| Patient1_B4 | LSP24606.ome.tif     | 17.39 | p17e16_EO7_B4_3D IMAGE RECONSTRUCTION |
| Patient1_B4 | LSP24609.ome.tif     | 18.05 | p17e16_EO7_B4_3D IMAGE RECONSTRUCTION |
| Patient1_B4 | LSP24612.ome.tif     | 16.08 | p17e16_EO7_B4_3D IMAGE RECONSTRUCTION |
| Patient1_B4 | LSP24615.ome.tif     | 18.18 | p17e16_EO7_B4_3D IMAGE RECONSTRUCTION |
| Patient1_B4 | LSP24618.ome.tif     | 16.20 | p17e16_EO7_B4_3D IMAGE RECONSTRUCTION |
| Patient1_B4 | LSP24621.ome.tif     | 16.20 | p17e16_EO7_B4_3D IMAGE RECONSTRUCTION |
| Patient1_B4 | LSP24624.ome.tif     | 16.20 | p17e16_EO7_B4_3D IMAGE RECONSTRUCTION |
| Patient1_B4 | LSP24627.ome.tif     | 17.39 | p17e16_EO7_B4_3D IMAGE RECONSTRUCTION |
| Patient1_B4 | LSP24630.ome.tif     | 16.73 | p17e16_EO7_B4_3D IMAGE RECONSTRUCTION |
| Patient1_B4 | LSP24633.ome.tif     | 15.57 | p17e16_EO7_B4_3D IMAGE RECONSTRUCTION |
| Patient1_B4 | LSP24636.ome.tif     | 16.20 | p17e16_EO7_B4_3D IMAGE RECONSTRUCTION |
| Patient1_B4 | LSP24639.ome.tif     | 14.93 | p17e16_EO7_B4_3D IMAGE RECONSTRUCTION |
| Patient1_B5 | LSP16101.ome.tif     | 22.30 | ORION imaging panel |
| Patient1_B5 | LSP16102.ome.tif     | 0.316 | EO8_p17e25_PostGeoMx_CyCIF |
| Patient1_B5 | LSP16104.ome.tif     | 6.83  | EO4_TB_MDSC_rerun |
| Patient1_B5 | LSP16105.ome.tif     | 7.16  | EO5_B5 and AHRI samples |


### Features Table Data

| Patient ID  | File Name       | File Size (GB) | Antibody Panel |
|-------------|-----------------|---------------|----------------|
| Patient1_B4 | LSP24522.csv    | 1.16 | p17e16_EO7_B4_3D IMAGE RECONSTRUCTION |
| Patient1_B4 | LSP24525.csv    | 1.20 | p17e16_EO7_B4_3D IMAGE RECONSTRUCTION |
| Patient1_B4 | LSP24528.csv    | 1.16 | p17e16_EO7_B4_3D IMAGE RECONSTRUCTION |
| Patient1_B4 | LSP24531.csv    | 1.31 | p17e16_EO7_B4_3D IMAGE RECONSTRUCTION |
| Patient1_B4 | LSP24534.csv    | 1.18 | p17e16_EO7_B4_3D IMAGE RECONSTRUCTION |
| Patient1_B4 | LSP24537.csv    | 1.19 | p17e16_EO7_B4_3D IMAGE RECONSTRUCTION |
| Patient1_B4 | LSP24540.csv    | 1.21 | p17e16_EO7_B4_3D IMAGE RECONSTRUCTION |
| Patient1_B4 | LSP24543.csv    | 1.21 | p17e16_EO7_B4_3D IMAGE RECONSTRUCTION |
| Patient1_B4 | LSP24546.csv    | 1.23 | p17e16_EO7_B4_3D IMAGE RECONSTRUCTION |
| Patient1_B4 | LSP24549.csv    | 1.19 | p17e16_EO7_B4_3D IMAGE RECONSTRUCTION |
| Patient1_B4 | LSP24552.csv    | 1.22 | p17e16_EO7_B4_3D IMAGE RECONSTRUCTION |
| Patient1_B4 | LSP24555.csv    | 1.18 | p17e16_EO7_B4_3D IMAGE RECONSTRUCTION |
| Patient1_B4 | LSP24558.csv    | 1.20 | p17e16_EO7_B4_3D IMAGE RECONSTRUCTION |
| Patient1_B4 | LSP24561.csv    | 1.14 | p17e16_EO7_B4_3D IMAGE RECONSTRUCTION |
| Patient1_B4 | LSP24564.csv    | 1.17 | p17e16_EO7_B4_3D IMAGE RECONSTRUCTION |
| Patient1_B4 | LSP24567.csv    | 1.16 | p17e16_EO7_B4_3D IMAGE RECONSTRUCTION |
| Patient1_B4 | LSP24570.csv    | 1.30 | p17e16_EO7_B4_3D IMAGE RECONSTRUCTION |
| Patient1_B4 | LSP24573.csv    | 1.13 | p17e16_EO7_B4_3D IMAGE RECONSTRUCTION |
| Patient1_B4 | LSP24576.csv    | 1.13 | p17e16_EO7_B4_3D IMAGE RECONSTRUCTION |
| Patient1_B4 | LSP24579.csv    | 1.10 | p17e16_EO7_B4_3D IMAGE RECONSTRUCTION |
| Patient1_B4 | LSP24582.csv    | 1.16 | p17e16_EO7_B4_3D IMAGE RECONSTRUCTION |
| Patient1_B4 | LSP24585.csv    | 1.11 | p17e16_EO7_B4_3D IMAGE RECONSTRUCTION |
| Patient1_B4 | LSP24588.csv    | 1.13 | p17e16_EO7_B4_3D IMAGE RECONSTRUCTION |
| Patient1_B4 | LSP24591.csv    | 1.11 | p17e16_EO7_B4_3D IMAGE RECONSTRUCTION |
| Patient1_B4 | LSP24594.csv    | 1.14 | p17e16_EO7_B4_3D IMAGE RECONSTRUCTION |
| Patient1_B4 | LSP24597.csv    | 1.07 | p17e16_EO7_B4_3D IMAGE RECONSTRUCTION |
| Patient1_B4 | LSP24600.csv    | 1.10 | p17e16_EO7_B4_3D IMAGE RECONSTRUCTION |
| Patient1_B4 | LSP24603.csv    | 1.13 | p17e16_EO7_B4_3D IMAGE RECONSTRUCTION |
| Patient1_B4 | LSP24606.csv    | 1.08 | p17e16_EO7_B4_3D IMAGE RECONSTRUCTION |
| Patient1_B4 | LSP24609.csv    | 1.11 | p17e16_EO7_B4_3D IMAGE RECONSTRUCTION |
| Patient1_B4 | LSP24612.csv    | 0.99 | p17e16_EO7_B4_3D IMAGE RECONSTRUCTION |
| Patient1_B4 | LSP24615.csv    | 1.20 | p17e16_EO7_B4_3D IMAGE RECONSTRUCTION |
| Patient1_B4 | LSP24618.csv    | 0.96 | p17e16_EO7_B4_3D IMAGE RECONSTRUCTION |
| Patient1_B4 | LSP24621.csv    | 0.98 | p17e16_EO7_B4_3D IMAGE RECONSTRUCTION |
| Patient1_B4 | LSP24624.csv    | 0.96 | p17e16_EO7_B4_3D IMAGE RECONSTRUCTION |
| Patient1_B4 | LSP24627.csv    | 1.00 | p17e16_EO7_B4_3D IMAGE RECONSTRUCTION |
| Patient1_B4 | LSP24630.csv    | 0.98 | p17e16_EO7_B4_3D IMAGE RECONSTRUCTION |
| Patient1_B4 | LSP24633.csv    | 0.94 | p17e16_EO7_B4_3D IMAGE RECONSTRUCTION |
| Patient1_B4 | LSP24636.csv    | 1.00 | p17e16_EO7_B4_3D IMAGE RECONSTRUCTION |
| Patient1_B4 | LSP24639.csv    | 0.92 | p17e16_EO7_B4_3D IMAGE RECONSTRUCTION |
| Patient1_B5 | LSP16101.csv    | 0.51 | ORION imaging panel |
| Patient1_B5 | LSP16102.csv    | 1.67 | EO8_p17e25_PostGeoMx_CyCIF |
| Patient1_B5 | LSP16104.csv    | 1.71 | EO4_TB_MDSC_rerun |
| Patient1_B5 | LSP16105.csv    | 2.24 | EO5_B5 and AHRI samples |


### 3D Image Data (in Imaris Format)

| Patient ID  | File Name                 | Location | File Size (GB) |
|-------------|---------------------------|----------|---------------|
| Patient1_B4 | Patient1_B4_3D_TLS.ims    | AWS      | 8640.00 |
| Patient1_B4 | output1.ims               | AWS      | 124.00 |
| Patient1_B4 | output2.ims               | AWS      | 72.70 |
| Patient1_B4 | output4.ims               | AWS      | 65.60 |
| Patient1_B4 | output5.ims               | AWS      | 142.00 |
| Patient1_B4 | output6.ims               | AWS      | 65.30 |

--------------------------
ADDITIONAL NOTES/COMMENTS
--------------------------
​
​Please contact tissue-atlas(at)hms.harvard.edu if you have any questions related to the data.

## Contributors

- **Emmanuel Ogbonna** —  GitHub: https://github.com/eddyyoung008
  
- **Soheil Rastgou Talemi** — 
  GitHub: https://github.com/RTSoheil





