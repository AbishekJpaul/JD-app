# 1️⃣ Use official Python image
FROM python:3.11-slim

# 2️⃣ Set working directory in container
WORKDIR /app

# 3️⃣ Copy requirements and install
COPY requirements.txt /app/
RUN pip install --no-cache-dir -r requirements.txt

# 4️⃣ Copy all project files
COPY . /app/

# 5️⃣ Expose port (change 8000 if needed)
EXPOSE 8000

# 6️⃣ Run the application (change to your app’s run command)
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
