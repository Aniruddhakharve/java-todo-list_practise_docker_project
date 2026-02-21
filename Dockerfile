FROM alpine/java:22-jdk

WORKDIR /app

COPY . /app

WORKDIR /app/src

# --- DEBUGGING STEP ---
# This will list all files in the terminal so we can see the exact spelling/case
RUN ls -la

# Compile the code
RUN javac -d . ToDoList.java

# Run the app
CMD ["java", "todolist.ToDoList"]
