# Gratch
Block-style programming environment for tackling graph structure and algorithm, based on MIT Scratch. 

(This is an alpha release for checking concepts.)

![Entire Screen](https://raw.githubusercontent.com/EiichiroIto/Gratch/master/src/images/Gratch.png)

## Install repository on Pharo
Gratch sources available on github (https://github.com/EiichiroIto/Gratch/).
```
Metacello new
    baseline: 'Gratch';
    repository: 'github://EiichiroIto/Gratch/filetree';
    load.
```

Then copy Examples directory of this repository to your image directory.

## Examples
1. Select Open from File menu.
2. Click Examples button on the file open dialog.
3. Select file and press OK.
4. Click Setup button on right side pane to setup the program.
5. Click Loop button to start.

## License
MIT License

## Programs
### Graph coloring algorithm based on Welsh-Powell algorithm
#### for graph
![welsh-powell1.png](https://raw.githubusercontent.com/EiichiroIto/Gratch/master/src/images/welsh-powell1.png)
#### for node
![welsh-powell2.png](https://raw.githubusercontent.com/EiichiroIto/Gratch/master/src/images/welsh-powell2.png)

## Screenshots
### Shortest Path algorithm based on Dijkstra's algorithm
![04-dijkstra.png](https://raw.githubusercontent.com/EiichiroIto/Gratch/master/src/images/04-dijkstra.png)

### Animations on other algorithms
![gratch-anim.gif](https://raw.githubusercontent.com/EiichiroIto/Gratch/master/src/images/gratch-anim.gif)
