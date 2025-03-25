import express from "express";
import cors from "cors";
import helmet from "helmet";
import dotenv from "dotenv";
import authRoutes from "./routes/auth.routes";


dotenv.config();

const app = express();

// Middleware
app.use(cors());
app.use(helmet());
app.use(express.json());

// Default route
app.get("/", (req, res) => {
  res.send("E-commerce Backend API is running!");
});
app.use("/api/auth", authRoutes);

export default app;
