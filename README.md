# 🤖 AI Virtual Assistant

[![React](https://img.shields.io/badge/React-20232A?style=for-the-badge&logo=react&logoColor=61DAFB)](https://reactjs.org/)
[![Vite](https://img.shields.io/badge/Vite-B73BFE?style=for-the-badge&logo=vite&logoColor=FFD62E)](https://vitejs.dev/)
[![Node.js](https://img.shields.io/badge/Node.js-43853D?style=for-the-badge&logo=node.js&logoColor=white)](https://nodejs.org/)
[![Express.js](https://img.shields.io/badge/Express.js-404D59?style=for-the-badge)](https://expressjs.com/)
[![MongoDB](https://img.shields.io/badge/MongoDB-4EA94B?style=for-the-badge&logo=mongodb&logoColor=white)](https://www.mongodb.com/)
[![Tailwind CSS](https://img.shields.io/badge/Tailwind_CSS-38B2AC?style=for-the-badge&logo=tailwind-css&logoColor=white)](https://tailwindcss.com/)

A full-stack, state-of-the-art AI Virtual Assistant integrating the power of generative AI models for intuitive, fast, and seamless natural language interactions. Built with modern web technologies for scalability, performance, and a stunning user experience.

---

## ✨ Features

- **Conversational AI Interface:** Harnesses generative AI (via Google Gemini) for intelligent, human-like responses.
- **Robust Full-Stack Architecture:** 
  - **Frontend:** Fast and responsive UI built with React, Vite, and Tailwind CSS.
  - **Backend:** Secure and scalable Node.js/Express.js RESTful API.
- **Database Integration:** MongoDB for efficient data storage and retrieval.
- **Modern Authentication:** Secure access utilizing JWT and bcrypt encryption.
- **File & Media Handling:** Support for rich media processing via Cloudinary and Multer.

---

## 🛠️ Tech Stack

### Frontend
- **React (v19)** with **Vite** for blazing fast HMR and builds.
- **Tailwind CSS** for a highly customizable and responsive design system.
- **Axios** for seamless API communication.
- **React Router** for declarative routing.

### Backend
- **Node.js** & **Express.js** for the core server architecture.
- **MongoDB** & **Mongoose** for data persistence.
- **Google Gemini API** integration for advanced natural language processing.
- **Cloudinary** for cloud-based media management.
- **JWT** (JSON Web Tokens) for stateless authentication.

---

## 🚀 Getting Started

### Prerequisites

- Node.js (v18 or higher)
- MongoDB instance (local or Atlas)
- Google Gemini API Key
- Cloudinary Account (for media uploads)

### Installation

1. **Clone the repository:**
   ```bash
   git clone https://github.com/aditya0563/AI-Virtual-Assistant.git
   cd AI-Virtual-Assistant
   ```

2. **Setup the Backend:**
   ```bash
   cd backend
   npm install
   ```
   Create a `.env` file in the `backend` directory and configure the necessary environment variables (e.g., `MONGO_URI`, `JWT_SECRET`, `GEMINI_API_KEY`, Cloudinary keys).

3. **Setup the Frontend:**
   ```bash
   cd ../frontend
   npm install
   ```

### Running the Application

1. **Start the backend server:**
   ```bash
   cd backend
   npm run dev
   ```

2. **Start the frontend development server:**
   ```bash
   cd frontend
   npm run dev
   ```

Visit `http://localhost:5173` to interact with the application.

---

## 👨‍💻 Author

**Aditya Thakur**
- LinkedIn: [https://www.linkedin.com/in/aditya-thakur-1507091aa/](https://www.linkedin.com/in/aditya-thakur-1507091aa/)
- GitHub: [https://github.com/aditya0563](https://github.com/aditya0563)

---

## 📝 License

This project is licensed under the ISC License.
