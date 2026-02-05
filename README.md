# TB-3D-TLS-2026
Multidimensional Spatial Characterization of Tertiary Lymphoid Structures in Human Pulmonary TB Lung Granulomas

# Data Access Information
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
​
**Multidimensional Spatial Characterization of Tertiary Lymphoid Structures in Human Pulmonary TB Lung Granulomas**
 
​
Authors: Emmanuel C. Ogbonna*, Soheil R. Talemi*, Ziyuan Zhao, Zoltan Maliga, Clarence Yapp, Yu-An Chen, Shishir Pant, Jeremy Muhlich, Brigette B.K. Kobs,  Andréanne Gagné, Threnesan Naidoo, Angela Shih, Isaac H. Solomon, Sandro Santagata, Amanda J. Martinot, Adrie Steyn, Bree B. Aldridge†, Peter K. Sorger†

 *Authors contributed equally to this article.  †Co-corresponding. 

Please cite this data as the following: Ogbonna and Rastgou Talemi (2026). Multidimensional Spatial Characterization of Tertiary Lymphoid Structures in Human Pulmonary TB Lung Granulomas.  {journal/biorxv}
  
Relevant links:
> * Publication DOI: [doi.org/MY-PAPER-DOI](https://doi.org/MY-PAPER-DOI-URL) 
> * Associated GitHub Repository: [MY-REPO](https://github.com/MY-REPO-URL)  
> * To view an archived record of this repository: [My-ZENODO-DOI](https://zenodo.org/doi/MY-ZENDODO-DOI-URL) 
> * To view the image data online, visit: [My-ATLAS-PAGE](https://tissue-atlas.org/MY-ATLAS-PAGE-URL)
> * Associated documentation website: [MY-PROJECT-WEBSITE](MY-PROJECT-WEBSITE-URL)  
> * DOI of other publications that use the data: <If this data is being reused from a past publication, include DOI and APA citation>
> * <Other important links if applicable>
​
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
|N.ome.tif           | Hematoxylin and Eosin stained image of adjacent FFPE tissue section in .vsi format | AWS     |
|N-cellRing. ome.tif | Segmentation mask image                                                            | AWS     |
|N.csv               | single-cell feature table, including intensity data for all channels               | AWS     |
|raw/                | folder of raw IF image data in .rcpnl format                                       | AWS     |
|N.fastq             | Sequencing data                                                                    | GEO     |
|N.ims               | Stitched and registered 3D multiplexed CyCIF image in .ims format                  | AWS     |​
​
## AWS Data Access  
​
Full-resolution CyCIF images, single cell segmentation masks, and cell count tables will be available via AWS.​You will need the following bucket name:
​
**You will need the following bucket name:**  
```
AWS BUCKET NAME  
```
​
*For general instructions on how to download data from AWS, see: [https://zenodo.org/records/10223574](https://zenodo.org/records/10223574)*     
  
If you experience issues accessing the above AWS S3 buckets, email tissue-atlas(at)hms.harvard.edu with the subject line "bucketname: Data Access".​
## Other Repository 
Image data generated during this study are available on the Gates TB Data Portal (https://idp.tissue-atlas.org/). For access, email tissue-atlas(at)hms.harvard.edu with the subject line "Gates TB Data Portal: Data Access".  
​
**FILE LIST**
​
 **CyCIF Image Data**
​
|Patient or Biospecimen ID | File Name       | Location| File size (GB) |
|------- | ----------------|---------|-----------|
| Patient ID  | File Name                     | Location | File Size (GB) |
|-------------|-------------------------------|----------|---------------|
| Patient1_B4 | LSP24522.ome.tif              | AWS      | 222.37 |
| Patient1_B4 | LSP24525.ome.tif              | AWS      | 202.51 |
| Patient1_B4 | LSP24528.ome.tif              | AWS      | 202.57 |
| Patient1_B4 | LSP24531.ome.tif              | AWS      | 225.94 |
| Patient1_B4 | LSP24534.ome.tif              | AWS      | 220.79 |
| Patient1_B4 | LSP24537.ome.tif              | AWS      | 204.92 |
| Patient1_B4 | LSP24540.ome.tif              | AWS      | 191.57 |
| Patient1_B4 | LSP24543.ome.tif              | AWS      | 213.09 |
| Patient1_B4 | LSP24546.ome.tif              | AWS      | 205.37 |
| Patient1_B4 | LSP24549.ome.tif              | AWS      | 212.91 |
| Patient1_B4 | LSP24552.ome.tif              | AWS      | 199.53 |
| Patient1_B4 | LSP24555.ome.tif              | AWS      | 212.91 |
| Patient1_B4 | LSP24558.ome.tif              | AWS      | 221.39 |
| Patient1_B4 | LSP24561.ome.tif              | AWS      | 217.61 |
| Patient1_B4 | LSP24564.ome.tif              | AWS      | 214.29 |
| Patient1_B4 | LSP24567.ome.tif              | AWS      | 196.63 |
| Patient1_B4 | LSP24570.ome.tif              | AWS      | 207.13 |
| Patient1_B4 | LSP24573.ome.tif              | AWS      | 226.64 |
| Patient1_B4 | LSP24576.ome.tif              | AWS      | 230.50 |
| Patient1_B4 | LSP24579.ome.tif              | AWS      | 205.65 |
| Patient1_B4 | LSP24582.ome.tif              | AWS      | 226.38 |
| Patient1_B4 | LSP24585.ome.tif              | AWS      | 199.04 |
| Patient1_B4 | LSP24588.ome.tif              | AWS      | 215.38 |
| Patient1_B4 | LSP24591.ome.tif              | AWS      | 200.37 |
| Patient1_B4 | LSP24594.ome.tif              | AWS      | 217.11 |
| Patient1_B4 | LSP24597.ome.tif              | AWS      | 199.92 |
| Patient1_B4 | LSP24600.ome.tif              | AWS      | 202.57 |
| Patient1_B4 | LSP24603.ome.tif              | AWS      | 219.74 |
| Patient1_B4 | LSP24606.ome.tif              | AWS      | 219.70 |
| Patient1_B4 | LSP24609.ome.tif              | AWS      | 226.05 |
| Patient1_B4 | LSP24612.ome.tif              | AWS      | 197.44 |
| Patient1_B4 | LSP24615.ome.tif              | AWS      | 222.30 |
| Patient1_B4 | LSP24618.ome.tif              | AWS      | 197.84 |
| Patient1_B4 | LSP24621.ome.tif              | AWS      | 198.85 |
| Patient1_B4 | LSP24624.ome.tif              | AWS      | 198.49 |
| Patient1_B4 | LSP24627.ome.tif              | AWS      | 216.52 |
| Patient1_B4 | LSP24630.ome.tif              | AWS      | 210.79 |
| Patient1_B4 | LSP24633.ome.tif              | AWS      | 193.94 |
| Patient1_B4 | LSP24636.ome.tif              | AWS      | 203.49 |
| Patient1_B4 | LSP24639.ome.tif              | AWS      | 185.99 |
| Patient1_B5 | LSP16101.ome.tif              | AWS      | 214.00 |
| Patient1_B5 | LSP16102_B5_Scan1.ome.tiff    | AWS      | 15.30 |
| Patient1_B5 | LSP16102.ome.tif              | AWS      | 19.20 |
| Patient1_B5 | LSP16104.ome.tif              | AWS      | 147.00 |
| Patient1_B5 | LSP16105.ome.tif              | AWS      | 164.00 |
| Patient2    | LSP16031.ome.tif              | AWS      | 11.30 |



​
​
### N_HE.vsi
​
|Patient or Biospecimen ID | File Name      | Location| File size|
|--------| ---------------|---------|----------|
|ID | ID.ome.tif_HE.vsi | AWS     | N.N KB |
​
​
### \_N\_HE\_/
​
|Patient or Biospecimen ID | File Name   | Location| File size|
|------- | ------------|---------|----------|
|ID | frame_t.ets | AWS     | N.N MB |
​
### markers.csv
​
|Patient or Biospecimen ID | File Name   | Synapse ID  | File size|
|------- | ----------- |------------ |----------|
|ID | markers.csv | syn12345678 | N.N bytes|
​
### N.csv
​
|Patient or Biospecimen ID | File Name   | Synapse ID | File size |
|------- | ------------|------------|-----------|
|ID | ID.csv |  |  |
​
### N_ROI.csv
​
|Patient or Biospecimen ID | File Name       | Synapse ID  | File size|
|------- | ----------------|-------------|----------|
|ID | ID_ROI.csv |  |    |
​
### raw/
​
|Patient or Biospecimen ID | Number of Files | Folder size| Location|
|------- |-----------------|------------|---------|
|ID | 13              |     |      |
​
​
### segmentation/
​
|Patient or Biospecimen ID | Number of Files | Folder size| Location|
|------- |-----------------|------------|---------|
|ID |               |     |      |
​
​
 
--------------------------
ADDITIONAL NOTES/COMMENTS
--------------------------
​
Please let **(Name, contact information)** know if any errors are found in this data.  
