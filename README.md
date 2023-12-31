﻿# Document Classifier
 A program that performs binary classification (Contract/Invoice) using a fine-tuned BERT model.

 ## Installation
 
  ### Recommended option
  The fastest way to get this application running is from a [Docker](https://www.docker.com/) image.

  0. [Install Docker](https://docs.docker.com/engine/install/)
  1. Pull the Docker image `docker pull yysyss/doc-classifier:v1.2`
  2. Run the Docker container `docker run -d -p 5500:5500 --name doc-classifier-container yysyss/doc-classifier:v1.2`
  3. On your web browser, go to **http://localhost:5500** to access the program.
  4. To terminate the service use `docker stop doc-classifier-container`
  5. To delete the container use `docker rm doc-classifier-container`
  > Depending on your Linux distribution, you may need to run Docker commands with elevated privileges (using `sudo`) to avoid privilege errors.

 
 ### Windows
 Since there are no tensorflow-text releases for TensorFlow's latest version, we have to use earlier versions.

 Install TensorFlow and TensorFlow Text
 You'll have to manually download TensorFlow 2.10 from [Python Package Index](https://pypi.org/).

 > Make sure that Python 3.10.0 is installed.

 Navigate to the directory of the downloaded files:
 `cd path/to/file/`
 
 Open the terminal and run the commands:
 ```
 pip install tensorflow-2.10.0-cp310-cp310-win_amd64.whl
 pip install tensorflow_text-2.10.0-cp310-cp310-win_amd64.whl
```
  
  > Note: Ensure that both versions are the same if you decide to use different versions.

  Install pytesseract:
  `pip install pytesseract`
  
  Install PyMuPDF:
  `pip install PyMuPDF`

  Install Streamlit:
  `pip install streamlit`

  To resolve conflicts with protobuf, run `pip install protobuf==3.20`

  ### Linux / macOS
  For Linux and macOS, you can install everything normally:

  Install TensorFlow and TensorFlow Text:
  ```
  pip install tensorflow
  pip install tensorflow-text
  ```

  Install pytesseract:
  `pip install pytesseract`

  Install PyMuPDF:
  `pip install PyMuPDF`

  Install Streamlit:
  `pip install streamlit`

  [Install Tesseract-OCR](https://github.com/tesseract-ocr/tesseract)

  #### Linux
  To install Tesseract-OCR, run: 
  `sudo apt install tesseract-ocr`

  #### macOS
  To install Tesseract-OCR, [install MacPorts](https://www.macports.org/install.php) and then run:
  `sudo port install tesseract`
