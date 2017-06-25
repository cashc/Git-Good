// # Place all the behaviors and hooks related to the matching controller here.
// # All this logic will automatically be available in application.js.
// # You can use CoffeeScript in this file: http://coffeescript.org/


var tab = "&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp";
var commands = ["echo Hello, World!",
    "!Hello, World!",
    "echo -e 'Let's learn some Git!\\nFollow along with this terminal for an example of what you'll learn with Git-Good.'",
    "!Let's learn some Git!<br>Follow along with this terminal for an example of what you'll learn with Git-Good.",
    "ls",
    "!code"+tab+tab+"downloads",
    "mkdir Git-Good",
    "ls",
    "!code"+tab+tab+"downloads"+tab+tab+"Git-Good",
    "cd Git-Good",
    "git init",
    "!Initialized empty Git repository in ~/Git-Good/.git/",
    "git status",
    "!On branch master<br><br>Initial commit<br><br>nothing to commit (create/copy files and use 'git add' to track)",
    "echo Start Gittin' Good! > README.md",
    "git status",
    "!On branch master<br><br>Initial commit<br><br>Untracked files:<br><br>"+tab+"(use 'git add 'file'...' to include in what will be committed)<br><br>"+tab+tab+"<span class='red'>README.md</span><br><br>nothing added to commit but untracked files present (use 'git add' to track)",
    "git add .",
    "git commit -m 'Updated README with project title'",
    "![master (root-commit) 556c670] Updated README with project title<br>1 file changed, 1 insertion(+)<br>create mode 100644 README.md",
    "git status",
    "!On branch master<br>nothing to commit, working tree clean",
    "touch index.html",
    "touch style.css main.js",
    "git status",
    "!On branch master<br>Untracked files:<br>"+tab+"(use 'git add `file`...' to include in what will be committed)<br><br>"+tab+tab+"<span class='red'>index.html<br>"+tab+tab+"main.js<br>"+tab+tab+"style.css</span><br><br>nothing added to commit but untracked files present (use 'git add' to track)",
    "echo -e 'Ok...\\nIf you're confused by any of this, download Git-Good now!\\nClick the Download button in the center of the page and start using the Git-Good app.'",
    "!Ok...<br>If you're confused by any of this, download Git-Good now!<br>Click the Download button in the center of the page and start using the Git-Good app.",
    ""];

var user = " cashc$ ";
var lineBeginning = "~"+user;

document.onreadystatechange = function() {
    if (document.readyState === 'complete') {
        main();
    }
};

const lineTime = 1700;
const charTime = 100;
var content;
var printedNewLine;
var time = -1200;

function main(){
    line(lineBeginning, 0);

    for(var i=0; i<commands.length; i++){
        if(commands[i].indexOf('!') == 0){
            content = commands[i].substr(1)+'<br>\n';
            line(content, time);
            printedNewLine = false;
        } else{
            content = commands[i];
            printChars(content, time+lineTime);
            time += (content.length*charTime)+lineTime;
            printedNewLine = true;

            if(content.indexOf('cd') == 0){
                lineBeginning = content.substr(3)+user;
            }
        }

        if(commands[i+1].indexOf('!') != 0){
            line(lineBeginning, (printedNewLine) ? time : time);
        }
    }
}

function line(content, t) {
    setTimeout(function(){
        document.getElementById("console").innerHTML += content;
    }, t);
}

function printChars(content, t){
    for(var j=0; j<content.length; j++){
        char(content.substr(j,1), t+(j*charTime))
    }
    char('<br>', t+(content.length*charTime));
}

function char(char, t) {
    setTimeout(function(){
        document.getElementById("console").innerHTML += char;
    }, t);
}