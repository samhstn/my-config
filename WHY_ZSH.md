# Why zsh over bash

One of the most compelling reasons to try zsh is the abundance of articles praising using it over bash.
The main reason I chose to use zsh is the awesome themes you can find from the [oh-my-zsh community](https://github.com/robbyrussell/oh-my-zsh).
And I have also gained a fair bit of shell knowledge from looking through the oh-my-zsh source code.

The main features of zsh that stand out for me are the nicer globbing patterns, the lovely tab completion and the ease of customizability.

There are so many more reasons to use zsh and instead of repeating what you can find from a quick google search,

I'll instead address the potential downsides to using it over bash since [I don't think this is addressed well enough](https://www.quora.com/What-are-the-advantages-and-disadvantages-of-using-zsh-instead-of-bash-or-other-shells).

As with any shell, if your whole team is using the same one then you shouldn't face this problem, but if there are shell differences, you should certainly be aware of [the compatibility between shells](http://slopjong.de/2012/07/02/compatibility-between-zsh-and-bash/)

Zsh is in a way a superset of bash which has some great benefits, but because of this you should be aware of publishing shell scripts which may only work with zsh.
When sharing shell scripts with non zsh users if you don't include the `#!/bin/bash`, then you should be weary of things not working.
You should especially make a note of this if you have any shell scripts which you are passing on to clients and assuming the next developers will be using zsh.

