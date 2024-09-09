#base image 
FROM python:3.8

#working directory 
WORKDIR /app

#copy requiremtn.txt
COPY requirements.txt .

#install requirement.txt
RUN pip install -r requirements.txt

#copy app code to directory 
COPY . .

#expoe port
EXPOSE 5000

#run flask app
RUN ["python", "app.py"]