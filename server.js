import express from "express"
const PORT = 4000;

const app = express();

app.use("/health", (req,res)=>{
    res.send("all good")
})

app.listen(PORT, ()=>{
    console.log(`app is running on port ${PORT}`)
})