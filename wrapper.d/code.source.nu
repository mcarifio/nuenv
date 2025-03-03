def code.ext.list [] {
    code --list-extensions | each { |ext| { name: $ext } } | to json | from json
}

def code.ext.install [...exts] {
    for e in $exts {
        code --install-extensions $e
    }    
}

def code.ext.quickstart [] {
    code.ext.install "eamodio.gitlens" "kakumei.ts-debug" "ms-python.debugpy" "ms-python.python" "ms-python.vscode-pylance" "njqdev.vscode-python-typehint" "rust-lang.rust-analyzer" "tamasfe.even-better-toml" "thenuprojectcontributors.vscode-nushell-lang" "tuttieee.emacs-mcx" "waderyan.gitblame"
}
