const FILENAME = encodeURIComponent("YouTube Must Download");
const VAULT = "obsidian-vault";

var markdown = "[" + document.title + "](" + window.location.href + ")";
let encodedMarkdown = encodeURIComponent(markdown)

const finalUrl = `obsidian://new?vault=${VAULT}&file=${FILENAME}&content=${encodedMarkdown}&append`;

window.open(finalUrl, "_blank")

