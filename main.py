import tensorflow as tf
import tensorflow_text
import streamlit as st
from PIL import Image
import pytesseract
import fitz
from io import BytesIO
import platform

if platform.system() == "Windows":
    pytesseract.pytesseract.tesseract_cmd = r'C:\Program Files\Tesseract-OCR\tesseract.exe'

def extract_text_from_pdf(pdf_bytes):
    doc = fitz.open(stream=pdf_bytes, filetype="pdf")
    text = ''
    for page in doc:
        text += page.get_text()
    return text


def perform_ocr(img):
    try:
        extracted_image_text = pytesseract.image_to_string(img)
    except pytesseract.TesseractNotFoundError:
        st.error("Tesseract was not found. Please install Tesseract OCR and specify the correct path.")
        tesseract_path = st.text_input("Tesseract path: ")
        if tesseract_path is not None:
            pytesseract.pytesseract.tesseract_cmd = tesseract_path
        return None
    return extracted_image_text

# Make a prediction
def make_prediction(file_contents):
    prediction = tf.sigmoid(classifier_model(tf.constant([file_contents])))
    if prediction > 0.5:
        st.write("Document Type: Invoice")
    if prediction < 0.5:
        st.write("Document Type: Contract")
    elif prediction == 0.5:
        st.write("Indecisive")
        
    

classifier_model = tf.saved_model.load("doc_classifier_SavedModel")

st.title('Document Classifier')

# Upload a text file
uploaded_file = st.file_uploader("Choose a text file", type=["txt"])
if uploaded_file is not None:
    st.write("File uploaded successfully:")
    file_contents = uploaded_file.read().decode('utf-8')
    make_prediction(file_contents)

# Upload a PDF file
uploaded_pdf = st.file_uploader("Choose a PDF file", type=["pdf"])
if uploaded_pdf is not None:
    st.write("PDF uploaded successfully:")
    pdf_bytes = uploaded_pdf.read()  # Read the PDF file as bytes
    pdf_text = extract_text_from_pdf(BytesIO(pdf_bytes))
    file_contents = pdf_text
    make_prediction(file_contents)

# Upload an image file
uploaded_image = st.file_uploader("Choose an image file", type=['jpg', 'png', 'jpeg'])

if uploaded_image is not None:
    st.image(uploaded_image, caption="Uploaded image", use_column_width=True)

    image = Image.open(uploaded_image)
    try:
        file_contents = perform_ocr(image)
        make_prediction(file_contents)
    except Exception:
        if 'file_contents' in locals():
            del file_contents