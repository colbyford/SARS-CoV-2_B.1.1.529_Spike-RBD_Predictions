# Predictions of the SARS-CoV-2 Omicron (B.1.1.529) Variant Spike Protein Receptor Binding Domain Structure and Neutralizing Antibody Interactions.

[![DOI](https://zenodo.org/badge/DOI/10.1101/2021.12.03.471024.svg)](https://www.biorxiv.org/content/10.1101/2021.12.03.471024)
[![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.5733161.svg)](https://doi.org/10.5281/zenodo.5733161)

<h4 align="right">Colby T. Ford, Ph.D., Denis Jacob Machado, Ph.D., and Daniel A. Janies, Ph.D.<br>The University of North Carolina at Charlotte</h4>


Companion repository for the following articles:
- bior&Chi;iv Preprint: https://www.biorxiv.org/content/10.1101/2021.12.03.471024
- Medium posts:
  - [Protein Structure Prediction of the new B.1.1.529 SARS-CoV-2 Spike Variant with AlphaFold2](https://colbyford.medium.com/protein-structure-prediction-of-b-1-1-529-sars-cov-2-spike-variant-with-alphafold2-39c5bf9cf9ed)
  - [Predicted Protein Interactions of the SARS-CoV-2 B.1.1.529 Variant with Neutralizing Antibodies](https://colbyford.medium.com/predicted-protein-interactions-of-the-sars-cov-2-b-1-1-529-variant-with-neutralizing-antibodies-14dad04b3b61)

<p align="middle"><img src="https://github.com/colbyford/SARS-CoV-2_B.1.1.529_Spike-RBD_Predictions/blob/main/img/process_flow.png?raw=true"></p>


## YouTube Video:
[![](https://img.youtube.com/vi/PY78_F0Odfg/0.jpg)](https://www.youtube.com/watch?v=PY78_F0Odfg)

## Media:
This work was also mentioned in:
- WIRED: https://www.wired.com/story/ai-software-nearly-predicted-omicrons-tricky-structure/
- The Economist: https://www.economist.com./briefing/2021/12/04/omicron-looks-ominous-how-bad-is-it-likely-to-be
- Syfi Technologies: https://www.sify.com/movies/omicron-may-not-completely-evade-vax-immune-response-us-study-news-bollywood-vmjm5tgabahbj.html
- Medical News: https://www.news-medical.net/news/20211208/AlphaFold-AI-predicts-SARS-CoV-2-omicron-variant-might-not-evade-antibody-neutralization.aspx
- Precision Vaccinations: https://www.precisionvaccinations.com/2021/12/07/predicting-sars-cov-2-omicron-variant-impact-ai
- The Print: https://theprint.in/health/omicron-unlikely-to-completely-evade-antibodies-us-study-using-ai-tool-suggests/778403/
- ChemDiv: https://www.chemdiv.com/company/media/pharma-news/2022/free-ai-protein-software-packages-nearly-predicted-structure-of-the-omicron-coronavirus-variant-corr/
- Fortune: https://fortune.com/2022/01/12/biontech-instadeep-ai-early-warning-covid-19-variants-of-concern-omicron-delta/
- Latest Game Storage: https://latestgamestories.com/2022/01/10/this-ai-has-almost-exactly-detailed-the-structure-and-operation-of-omicron/
- SiaSat: https://www.siasat.com/omicron-may-not-completely-evade-vax-immune-response-us-study-2238739/


## Resources:
Omicron (B.1.1.529) Info:
- B.1.1.529 Sequence (from GISAID) and Wuhan Reference Sequence: [/sequences](/sequences)
- List of B.1.1.529 Spike mutations: [B.1.1.528_Spike_Mutations.xlsx](B.1.1.528_Spike_Mutations.xlsx)

Receptor Binding Domain Structure:
- AlphaFold2 Code: [AlphaFold2.ipynb](AlphaFold2.ipynb)
- Predicted B.1.1.529 Spike receptor binding domain PDB structure: [SARSCov2_B11529_Srbd_80403_relaxed_model_1_rank_1.pdb](AlphaFold2_prediction/SARSCov2_B11529_Srbd_80403_relaxed_model_1_rank_1.pdb)
- Actual Cryo-EM Structure from Mannar et al. 2021: https://www.rcsb.org/structure/7T9J

### Protein Interactions:

AlphaFold2 Omicron Structure Docking:
- Predicted interaction PDB for B.1.1.529 with C105 antibody: [6xcm_Fab_pred_docking_cluster1_1.pdb](docking/C105/6xcm_Fab_pred_docking_cluster1_1.pdb)
- Predicted interaction PDB for B.1.1.529 with CC12.1 antibody: [6xc2_Fab_pred_docking_cluster1_1.pdb](docking/CC12.1/6xc2_Fab_pred_docking_cluster1_1.pdb)
- Predicted interaction PDB for B.1.1.529 with CC12.3 antibody: [6xc7_Fab_pred_docking_cluster1_1.pdb](docking/CC12.3/6xc7_Fab_pred_docking_cluster1_1.pdb)
- Predicted interaction PDB for B.1.1.529 with CV30 antibody: [6xe1_Fab_pred_docking_cluster1_1.pdb](docking/CV30/6xe1_Fab_pred_docking_cluster3_1.pdb)

RoseTTAFold Omicron Structure Docking:
- Predicted interaction PDB for B.1.1.529 with C105 antibody: [6xcm_Fab_RFpred_docking_cluster2_1.pdb](docking/C105/6xcm_Fab_RFpred_docking_cluster2_1.pdb)
- Predicted interaction PDB for B.1.1.529 with CC12.1 antibody: [6xc2_Fab_RFpred_docking_cluster3_1.pdb](docking/CC12.1/6xc2_Fab_RFpred_docking_cluster3_1.pdb)
- Predicted interaction PDB for B.1.1.529 with CC12.3 antibody: [6xc7_Fab_RFpred_docking_cluster3_1.pdb ](docking/CC12.3/6xc7_Fab_RFpred_docking_cluster3_1.pdb)
- Predicted interaction PDB for B.1.1.529 with CV30 antibody: [6xe1_Fab_RFpred_docking_cluster1_1.pdb](docking/CV30/6xe1_Fab_RFpred_docking_cluster1_1.pdb)



<p align="middle"><img src="https://github.com/colbyford/SARS-CoV-2_B.1.1.529_Spike-RBD_Predictions/blob/main/comparison/6xc2_vs_B11529pred_white.png?raw=true" width = "600px"></p>
