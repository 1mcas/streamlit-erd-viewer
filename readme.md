Streamlit ERD Viewer using Docker container
====================

Simple Entity-Relationship diagram generator and viewer for any database schema from your Snowflake account. 
Select one database and schema, change the theme and adjust the display options. Here is a typical diagram with table columns and PK-FK relationships between the tables.

This version can be deployed using a Docker container or could be run installing python3.9 before launching the app.


Docker Local Streamlit App 
--------------------------

1. Download Docker Desktop for your operating system
    - https://docs.docker.com/desktop/install/mac-install/

2. Run Docker Desktop

3. Clone this repository on your local machine, then open the IDE with the folder of this project. 

4. Create file called "snowflake.config" with snowflake credentials, following the example in **./snowflake.config.example**

4. Open terminal in same path as **./app.py**

5. Build the Docker Image
```bash
docker build -f Dockerfile -t streamlit-erd-viewer:latest .
```

6. Run the Docker Container
```bash 
docker run -p 8501:8501 streamlit-erd-viewer:latest 
```

7. Open in browser

    - http://localhost:8501/ 



Local Streamlit App (python3.9 needs to be already installed in local machine)
-------------------

To test and run the Streamlit application locally, on Windows, in VSCode or your own Python IDE:

* Clone this repository on your local machine, then open the IDE with the folder of this project. Make sure you have installed a Python version supported by Snowpark (v8, v9, or v10 at this moment).
* Optional: In a Terminal window, create a virtual environment with **`python -m venv venv`**. Switch to this new environment with **`venv/scripts/activate`**.
* Run **`pip install -r requirements.txt`**, to install the Snowpark and Streamlit dependencies.
* Call **`streamlit run app.py`** to open the web app in your browser. Type **CTRL+C** in the Terminal to stop the web app.






License 
--------------------------
This project is based on the Streamlit ERD by Cristian Scutaru (https://github.com/cristiscu/streamlit-erd-viewer).
This project is under the license CC0 1.0 Universal (./LICENSE) from the original repository.