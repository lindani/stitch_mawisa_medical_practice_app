@echo off
echo Installing stitch skills...
call npx.cmd -y skills add google-labs-code/stitch-skills --skill react:components --global -y
call npx.cmd -y skills add google-labs-code/stitch-skills --skill shadcn-ui --global -y
call npx.cmd -y skills add google-labs-code/stitch-skills --skill stitch-design --global -y
call npx.cmd -y skills add google-labs-code/stitch-skills --skill stitch-loop --global -y
call npx.cmd -y skills add google-labs-code/stitch-skills --skill design-md --global -y
call npx.cmd -y skills add google-labs-code/stitch-skills --skill enhance-prompt --global -y
call npx.cmd -y skills add google-labs-code/stitch-skills --skill taste-design --global -y
echo Done.
