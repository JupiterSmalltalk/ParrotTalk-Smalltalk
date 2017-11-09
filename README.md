# ParrotTalk-Smalltalk
Reference platform for ParrotTalk.

## Installing

#### Metacello / FileTree
ParrotTalk-Smalltalk uses Monticello/Metacello and FileTree to load and save sources. These are installed by default in [GemStone](http://www.gemtalksystems.com/) (if you're using tODE), and [Pharo](http://pharo.org). For [Squeak](http://squeak.org), follow the Squeak install instructions [here](https://github.com/Metacello/metacello).

#### ParrotTalk and dependencies
If you have Metacello and FileTree loaded, evaluate the following in a Workspace/Playground to load ParrotTalk and it's dependencies.

```
Metacello new
    baseline: 'ParrotTalk';
    repository: 'github://CallistoHouseLtd/ParrotTalk-Smalltalk/repository';
    load
```

## Contributing

Fork ParrotTalk-Smalltalk to your own organisation and clone it locally on your development machine.

Then load from your local repo:

```
Metacello new
    baseline: 'ParrotTalk';
    repository: 'filetree:///<pathToYourLocalGitRepository>/ParrotTalk-Smalltalk/repository';
    load
```

More coming soon...