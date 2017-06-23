// # Place all the behaviors and hooks related to the matching controller here.
// # All this logic will automatically be available in application.js.
// # You can use CoffeeScript in this file: http://coffeescript.org/

var content = "";
var lineBeginning = "Git-Good cashc$";
var commands = ["echo Hello, World!", "Hello, World!]", "ls", "!my_proj&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbspexercise1",
    "mkdir yo-yo-yo", "cd yo-yo-yo", "git init", "!Initialized empty Git repository in /yo-yo-yo/.git/",
    "git status", "!On branch master<br><br>Initial commit<br><br>nothing to commit (create/copy files and use 'git add' to track)",
    "echo Yo Yo Yo Project! > README.md", "!On branch master<br><br>Initial commit<br><br>Untracked files:<br><br>(use 'git add <file>...' to include in what will be committed)<br><br>README.md<br><br>nothing added to commit but untracked files present (use 'git add' to track)",
    "git add .", "git commit -m 'Updated README with project title'", "![master (root-commit) 556c670] Updated README with project title<br>1 file changed, 1 insertion(+)<br>create mode 100644 README.md",
    "git status", "!On branch master<br>nothing to commit, working tree clean", ""];

var i = 0;

var interval = setInterval(function() {
    content = (commands[i].indexOf('!') == 0) ? commands[i].substr(1)+'<br>\n' : lineBeginning+' '+commands[i]+'<br>\n';
    document.getElementById("console").innerHTML += content;
    i++;

    if(i >= commands.length){
        clearInterval(interval);
    }
}, 1200);