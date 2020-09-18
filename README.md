<p align="center">
  <a href="https://github.com/EricZimmerman/KapeFiles">
    <img src="kapeLogo.png" alt="Logo" width="300" height="197">
  </a>
  
  <h3 align="center">KAPE Files</h3>
	
  <p align="center">
  <a href="LICENSE" alt="License">
    <img src="https://img.shields.io/github/license/EricZimmerman/KapeFiles?style=flat-square" /></a>
  <a href="https://github.com/EricZimmerman/KapeFiles/issues" alt="Issues">
    <img src="https://img.shields.io/github/issues/EricZimmerman/KapeFiles?style=flat-square" /></a>
  <a href="https://github.com/EricZimmerman/KapeFiles/graphs/contributors" alt="Contributors">
    <img src="https://img.shields.io/github/contributors/EricZimmerman/KapeFiles?style=flat-square" /></a>
  <a href="https://github.com/EricZimmerman/KapeFiles/pulls?q=is%3Apr+is%3Aclosed" alt="Closed PRs">
    <img src="https://img.shields.io/github/issues-pr-closed/EricZimmerman/KapeFiles?style=flat-square" /></a>
  <a href="https://github.com/EricZimmerman/KapeFiles/network/members/" alt="Forks">
		<img src="https://img.shields.io/github/forks/EricZimmerman/KapeFiles?style=flat-square" /></a>
  <a href="https://github.com/EricZimmerman/KapeFiles/stargazers/" alt="Stars">
		<img src="https://img.shields.io/github/stars/EricZimmerman/KapeFiles?style=flat-square" /></a>
  
  </p>
  <p align="center">
    Community-created Targets and Modules for use with KAPE
    <br />
    <a href="https://www.kroll.com/en/insights/publications/cyber/kroll-artifact-parser-extractor-kape">Download KAPE</a>
    ·
    <a href="https://github.com/EricZimmerman/KapeFiles/issues/new?labels=bug">Report a Bug</a>
    ·
    <a href="https://github.com/EricZimmerman/KapeFiles/issues/new?labels=enhancement">Request Feature</a>
  </p>
</p>

# QUICK START

KAPE is an efficient and highly configurable triage program that will target essentially any device or storage location, find forensically useful artifacts, and parse them within a few minutes. KAPE can be downloaded [HERE](https://www.kroll.com/en/insights/publications/cyber/kroll-artifact-parser-extractor-kape).

For thorough documentation, go [HERE](https://ericzimmerman.github.io/KapeDocs/#!index.md)!! This URL will always be the latest documentation.

It is also possible to attend KAPE training from Kroll instructors. Details can be found [HERE](training.md)!!

### NOTE: We have clarified KAPE usage permissions for commerial applications. See details [here](https://ericzimmerman.github.io/KapeDocs/#!Pages\50-Frequently-asked-questions.md)

# Downloading Kape Files for Kape

To download the latest files, click the "Sync with Github" button in gkape.exe or run `kape.exe --sync`

# Contributing

This repository serves as a place for community created Targets and Modules for use with KAPE.

Please send PRs should you come up with new targets or modules for inclusion in the project!

Be sure to point the BinaryUrl property to the download location in Module files!

All other info including requirements, etc. should be documented at the end of the module in comment blocks.

## NOTE: BEFORE INITIATING A PR, PLEASE ENSURE YOU HAVE DONE THE FOLLOWING:

1. Generated a unique GUID for the target or module
2. Place the file in the appropriate sub-folder in Targets or Modules. Use 'Misc' if a better category does not exist
3. Verified KAPE parses the target or module cleanly via kape.exe --tlist . or kape.exe --mlist . (Check for any reported errors and correct as necessary)

Thanks!!!

Eric Zimmerman
