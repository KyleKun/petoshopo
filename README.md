# petoshopo

SMS Feedback & Analytics for pet shops.

## About

Available at product hunt: 
- [Petoshopo: by Augusto Raveli, Samuel Marques and Caio Pedroso](https://www.producthunt.com/posts/petoshopo)

This project was made for a Brazilian Hackathon promoted by Totalvoice.
The challenge was to use their API to explore new ways to integrate their services such as
SMS and Calls in a potential solution that would solve some market issue related to communication.

We developed a Flutter app with Flare animations, Flask API integration that was deployed with
pythonanywhere (thanks Conrad for setting the API on their service's whitelist), Hive for local
data saving, Syncfusion charts, and some free images from sources as Unsplash. 

My huge thanks to all the creators of resources that we used in our app, such as:

- [Logo: made by S.A. Sadik](https://rive.app/a/sadik5397/files/flare/cat-washing-machine-loading/preview)
- [Stats Animation: made by Ricardo Markiewicz](https://github.com/Gazer/como-gasto)

## Getting Started

A few steps to get you started testing our app:

- [Python: Flask](https://www.palletsprojects.com/p/flask/)


You will need to create an account at TotalVoice's page, and deploy locally your api
(which can be found in our code on the file app.py) using your TotalVoice API Key generated.

After that, you will be able to call and send SMS using Petoshopo, passing your phone number
registered at TotalVoice's website as parameters to the Python API.
