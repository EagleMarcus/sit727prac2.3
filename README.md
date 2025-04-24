📚 Burwood Library Membership App
A Django-based web application for managing library membership registrations. This app features a professional Bootstrap-styled frontend, MVC architecture, and is setup for containerised deployment with Docker and Kubernetes.

Features
MVC Architecture:

Model: Defines the database structure (SQLite) and business logic.

View: Handles user requests and routes them to appropriate controllers.

Controller: The views in Django act as controllers by processing requests and deciding the response.

Template: Utilizes HTML templates to render dynamic content with Bootstrap styling.

SQLite Database: Data is stored in a local SQLite database, with easy interaction and management through SQLite3 Browser.

Responsive UI: The frontend is styled using Bootstrap, providing a clean and mobile-friendly design for users.

Containerization with Docker: The app is Dockerized for easy deployment, providing a consistent environment for development and production.

Kubernetes Deployment: Deployed using MicroK8s (Kubernetes) for local cloud orchestration, allowing easy scaling and management of containers.

Technologies Used
Django: A high-level Python web framework used for building web applications.

Bootstrap: A popular frontend framework for building responsive and modern web interfaces.

SQLite: A lightweight relational database used for storing library membership data.

Docker: A tool for containerizing applications, ensuring consistency across environments.

Kubernetes (MicroK8s): A platform for automating deployment, scaling, and operations of containerized applications.

Python: Programming language used to build the backend of the web application.

Getting Started
Prerequisites
Python 3.x

Docker

Kubernetes (or MicroK8s for local clusters)

SQLite3 Browser (for viewing database data)

Installation Instructions

Clone the Repository:
git clone https://github.com/EagleMarcus/sit727prac2.3.git
cd sit727prac2.3

Set up the Virtual Environment:
python3 -m venv env
source env/bin/activate  # On Windows use env\Scripts\activate

Install Dependencies:
pip install -r requirements.txt

Running Locally
Apply Database Migrations:
python manage.py migrate

Start the Django Development Server:
python manage.py runserver
The application will be available at http://127.0.0.1:8000.

Deployment
Docker Deployment
Build the Docker Image:
docker build -t localhost:5000/library-app:latest .

Push the Docker Image to the Registry:
docker push localhost:5000/library-app:latest

Kubernetes Deployment
Apply the Kubernetes Deployment and Service Configurations:
kubectl apply -f scripts/deployment.yaml
kubectl apply -f scripts/service.yaml

Check the Pods Status:
kubectl get pods

Port Forwarding to Access the App Locally:
kubectl port-forward svc/library-app-service 8001:8001
The app should now be accessible at http://127.0.0.1:8001

