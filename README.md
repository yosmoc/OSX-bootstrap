# Auto setup my Mac OS X

## Requirement
- Mac OSX (I checked only for Yosemite)
- homebrew
- Ansbile


## Install Xcode
```
xcode-select -—install
```

## Install homebrew
See http://brew.sh/
```
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)”
```

## Install ansible
```
brew install ansible
```

## Usage
```
ansible-playbook -i hosts main.yml -K
```
