# BrainModes 2025 Conference Website Repo

Welcome friend.

This is the **website source** for the BrainModes 2025 conference

The actual conference website can be viewed [here](brainmodes2025.org).

The following information is directed at people developing this website, editing its contents, or copying it to make a new one. 


## Summary

The website is written using the Hugo static website engine, built using github actions CI, served on gh-pages in the usual github fashion, and deployed to a custom domain name. 

## Hugo stuff

The Hugo theme is called 'dimension'. It is a pretty one but is a bit complicated to customize. 

We have used it often in the past on other websits (eeg. [ccnsmeeting.ca](ccnsmeeting.ca), [kcnischool.org](kcnischool.org)).

This time I am not doing the 'standard' hugo approach of having the theme as a submodule, as this proved brittle in the past. 

As a result there are a lot of 'hard' customizations in the theme code that cannot be easily summarized. 

The Hugo model would, I suppose, be to add customizations to folders outside of the base theme. 

I have done a bit of both. 

It is a bit hacky. 


## Build 

The site will re-build upon each new commit to this repo. 

To see changes, wait 20 secs or so, and then refresh the page. 

The github text editor should be sufficient for minor changes. 

In general however, best to work on a local clone. 

Github codespaces works very well for this. 


## Develeoping in github Codespaces 

I now work almost entirely in github codespaces for the extensive editing phase of hugo websites. 

When the main development phase is over and its down to small tweaks, I often just do those in the github website editor. 

To work in codespaces: 

- Fork this repo  
- Create a codespace on it  
- Make a git branch for current edits  
- To test review the build after making some changes:  
  ```bash  
  hugo --minify  
  python -m http.server -d public  ```  
- or, use the short script that wraps these two steps together  
  ```bash  
  bash buildandview.sh    
  ```   
- when you're satisfied, commit and pull request on your branch  


## CI

I decided to stop using the hugo github action as it seemed to obscure what was going on a bit and was failing for unclear reasons. 

So, because it is such a light operations, the CI runs the script `getlatesthugoext.sh`, which downloads the latest version of hugo *extended*.


### Structure: 

- Landing page and title are specified in config.toml

- Main pages are specified in 'content' folder

- Text is mostly written in markdown

