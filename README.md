# Predictions of the SARS-CoV-2 B.1.1.529 Variant Spike Protein Receptor Binding Domain Structure and Neutralizing Antibody Interactions.

[![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.5733161.svg)](https://doi.org/10.5281/zenodo.5733161)

<h3 align="right">Colby T. Ford, Ph.D.</h3>


Companion repository for the following Medium posts:
- [Protein Structure Prediction of the new B.1.1.529 SARS-CoV-2 Spike Variant with AlphaFold2](https://colbyford.medium.com/protein-structure-prediction-of-b-1-1-529-sars-cov-2-spike-variant-with-alphafold2-39c5bf9cf9ed)
- [Predicted Protein Interactions of the SARS-CoV-2 B.1.1.529 Variant with Neutralizing Antibodies](https://colbyford.medium.com/predicted-protein-interactions-of-the-sars-cov-2-b-1-1-529-variant-with-neutralizing-antibodies-14dad04b3b61)

<p align="middle"><img src="https://github.com/colbyford/SARS-CoV-2_B.1.1.529_Spike-RBD_Predictions/blob/main/img/process_flow.png?raw=true"></p>


## Resources:
B.1.1.529 Info:
- B.1.1.529 Sequence (from GISAID) and Wuhan Reference Sequence: [/sequences](/sequences)
- List of B.1.1.529 Spike mutations: [B.1.1.528_Spike_Mutations.xlsx](B.1.1.528_Spike_Mutations.xlsx)

Receptor Binding Domain Structure:
- AlphaFold2 Code: [AlphaFold2.ipynb](AlphaFold2.ipynb)
- Predicted B.1.1.529 Spike receptor binding domain PDB structure: [SARSCov2_B11529_Srbd_80403_relaxed_model_1_rank_1.pdb](AlphaFold2_prediction/SARSCov2_B11529_Srbd_80403_relaxed_model_1_rank_1.pdb)

Interaction:
- Predicted interaction PDB for B.1.1.529 with CC12.1 antibody: [6xc2_Fab_pred_docking_cluster1_1.pdb](docking/CC12.1/6xc2_Fab_pred_docking_cluster1_1.pdb)
- Predicted interaction PDB for B.1.1.529 with CC12.3 antibody: [6xc7_Fab_pred_docking_cluster1_1.pdb](docking/CC12.3/6xc7_Fab_pred_docking_cluster1_1.pdb)


<p align="middle"><img src="https://github.com/colbyford/SARS-CoV-2_B.1.1.529_Spike-RBD_Predictions/blob/main/comparison/6xc2_vs_B11529pred_white.png?raw=true" width = "600px"></p>
