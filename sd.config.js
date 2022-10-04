module.exports = {
    source: ["tokens.json"],
    platforms : {
        clarity: {
            transformGroup: "web",
            buildPath: "dist/",
            files: [{
                destination: "_variables.scss",
                format: "scss/variables"
            }]
        }
    }
}