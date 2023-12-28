let fs = require("fs");
let  path = require("path");
let  OpenAI = require("openai");

const openai = new OpenAI();

async function main(inputFile, outputFile   ) {
    if(!inputFile || !outputFile) {
        throw new Error("Usage: node text2mp3.js <input file> <output file>");
    }
    let text = fs.readFileSync(inputFile).toLocaleString();
    const speechFile = path.resolve(outputFile);
    console.log(`Creating mp3 in ${speechFile} from ${text.length} chars: ${text}  `);

    const mp3 = await openai.audio.speech.create({
        model: "tts-1-hd",
        voice: "echo",
        input: text,
        response_format: "mp3"
    });

    const buffer = Buffer.from(await mp3.arrayBuffer());
    await fs.promises.writeFile(speechFile, buffer);
}
//gove to main the first argument is the input file and the second is the output file
main(process.argv[2], process.argv[3]).catch(console.error);
