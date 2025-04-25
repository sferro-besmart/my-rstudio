# My Customised Dockerized RStudio Environment

This repository provides a prebuilt, customized Dockerized RStudio environment, tailored for data analysis and reproducible research. The image is built on top of the `rocker/tidyverse:4.4.3` Docker image, which includes the R tidyverse suite. Additional R packages and system dependencies have been added to enhance functionality and support a wide range of workflows.

## Features

- **Base Image**: The environment is based on the `rocker/tidyverse:4.4.3` image.
  - This image provides the tidyverse suite of R packages, RStudio, and other essential tools.
- **Added System Dependencies**:
  - Packages like `libxt6`, `git-core`, `libcurl4-openssl-dev`, and others are installed to ensure compatibility with various functionalities.
- **Additional R Packages**:
  - A comprehensive set of R packages has been preinstalled, including (but not limited to):
    - `ggplot2`, `dplyr`, `shiny`, `plotly`, `tidymodels`, `gtsummary`, `reticulate`, and many more.
  - Specific packages like `ggiraph`, `jtools`, and `wCorr` were added to support advanced plotting, statistical modeling, and correlation analysis.

## Pulling the Prebuilt Image

The prebuilt Docker image is available on DockerHub. To pull the image, run the following command:

```bash
docker pull ghcr.io/sferro-besmart/my-rstudio:latest
```

## Running the Contained

```bash
docker run -d -p 8787:8787 -e PASSWORD=<your_password> ghcr.io/sferro-besmart/my-rstudio:latest
```


