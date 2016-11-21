# Auto setup my Mac OS X

## Requirement
- Mac OSX (Yosemite or El Capitan)
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

### run all roles

```
$ ansible-playbook -i hosts main.yml -K
```

### run specific roles

```
$ ansible-playbook -i hosts main.yml -K --tags "homebrew,git"
```

### Run all tasks except specific roles

```
$ ansible-playbook -i hosts main.yml -K --skip-tags "homebrew,git"
```
