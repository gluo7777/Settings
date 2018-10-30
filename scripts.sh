#!/bin/bash

# contains utility functions to update config files

pluginFile="vscode.txt"

exportVsCodePlugins(){
	code --list-extensions | xargs -L 1 echo code --install-extension >> $pluginFile; 
}

importVsCodePlugins(){
	xargs -0 chmod 755 < <(tr \\n \\0 <$pluginFile);
}
