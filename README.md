# 🎂 **Cakery**

An online bakery platform where customers can browse, customize, and order cakes and pastries, with features for store staff to manage logistics and operations.

---

## 🚀 **Deployed Application Links**

- 🌐 **Frontend (Client Server Link)**: [http://cakery-mark-dev.vercel.app](http://cakery-mark-dev.vercel.app)  
- 🌐 **Backend API Documentation**: [https://cakerybackendapp.azurewebsites.net/apidocs](https://cakerybackendapp.azurewebsites.net/apidocs) *(Default page contains API documentation with the ability to test all endpoints)*

---

## 🗂️ **Project Structure**

- **`app/`** – Backend API files (Flask, PostgreSQL)  
  - Contains `.env.example` for backend environment configuration.
- **`frontend/`** – Client server files (Next.js)  
  - Contains `.env.example` for frontend environment configuration.

Each folder (`app/` and `frontend/`) has its own `.env.example` file for environment variable setup.

---

# 🛠️ **Setup and Installation**

### 1️⃣ **Clone the Repository**
```bash
git clone https://github.com/Anas-Ah25/Cakery.git
cd Cakery
```

---

### 2️⃣ **Backend Setup**
1. Navigate to the backend directory:
```bash
cd app
```
2. Install dependencies:
```bash
pip install -r requirements.txt
```
3. Create a `.env` file from the example:
```bash
cp .env.example .env
```
4. Update the `.env` file with the following connection string for a testing DB:

```plaintext
DATABASE_URL=postgresql+psycopg2://Anas:testServer1@cakery.postgres.database.azure.com:5432/CakeryMainDB
```

5. Start the backend server:
```bash
flask run
```
Backend runs at: [http://127.0.0.1:5000](http://127.0.0.1:5000)

---

### 3️⃣ **Frontend Setup**

1. Navigate to the frontend directory:  
```bash
cd frontend
```

2. Install dependencies:  
```bash
npm install
# If you encounter dependency conflicts, use:
npm install --legacy-peer-deps
```

3. Start the development server:  
```bash
npm run dev
```

Frontend runs at: [http://localhost:3000](http://localhost:3000)

---

### 4️⃣ **Run the Application**

-  **Frontend:** [http://localhost:3000](http://localhost:3000)  
-  **Backend:** [http://127.0.0.1:5000](http://127.0.0.1:5000)  



