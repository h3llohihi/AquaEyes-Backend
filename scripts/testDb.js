const config = require("../src/config");

console.log("Testing MongoDB connection...");
console.log("MONGODB_URI:", process.env.MONGODB_URI ? "✅ Set" : "❌ Not set");
console.log("Connecting to:", config.mongoURI);

config
  .connectDB()
  .then(() => {
    console.log("✅ Database connection successful!");
    process.exit(0);
  })
  .catch((err) => {
    console.error("❌ Database connection failed:", err.message);
    process.exit(1);
  });

