import tensorflow as tf
import tensorflow_text
import streamlit as st
from PIL import Image
import pytesseract
import fitz
from io import BytesIO

# pytesseract.pytesseract.tesseract_cmd = r'C:\Program Files\Tesseract-OCR\tesseract.exe'


def extract_text_from_pdf(pdf_bytes):
    doc = fitz.open(stream=pdf_bytes, filetype="pdf")
    text = ''
    for page in doc:
        text += page.get_text()
    return text


def perform_ocr(img):
    extracted_image_text = pytesseract.image_to_string(img)
    return extracted_image_text


classifier_model = tf.saved_model.load("doc_classifier/doc_classifier_SavedModel")

st.title('Document Classifier')

# Upload a text file
uploaded_file = st.file_uploader("Choose a text file", type=["txt"])
if uploaded_file is not None:
    st.write("File uploaded successfully:")
    file_contents = uploaded_file.read().decode('utf-8')
    st.code(file_contents, language="text")

# Upload a PDF file
uploaded_pdf = st.file_uploader("Choose a PDF file", type=["pdf"])
if uploaded_pdf is not None:
    st.write("PDF uploaded successfully:")
    pdf_bytes = uploaded_pdf.read()  # Read the PDF file as bytes
    pdf_text = extract_text_from_pdf(BytesIO(pdf_bytes))
    file_contents = pdf_text
    st.code(file_contents, language="text")

# Upload an image file
uploaded_image = st.file_uploader("Choose an image file", type=['jpg', 'png', 'jpeg'])

if uploaded_image is not None:
    st.image(uploaded_image, caption="Uploaded image", use_column_width=True)

    image = Image.open(uploaded_image)
    file_contents = perform_ocr(image)

    st.write("Extracted Text:")
    st.code(file_contents, language="text")

# Show response if a file is uploaded
if 'file_contents' in locals() or 'file_contents' in globals():
    prediction = tf.sigmoid(classifier_model(tf.constant([file_contents])))
    if prediction > 0.5:
        st.write("Document Type: Invoice")
    if prediction < 0.5:
        st.write("Document Type: Contract")
    elif prediction == 0.5:
        st.write("Indecisive")
