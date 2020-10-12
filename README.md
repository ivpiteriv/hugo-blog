# How To Use

## First thing to do after cloning this repository
### Update Submodules 
The folders `/public` and `themes/...` use files from different repositories.
After cloning this repository you have to update the submodules by using the following command: 
```
git submodule update --init --recursive
```

--- 

## Starting Hugo Server locally
The Hugo Server can be started locally by using the command:
```
hugo server
```
</br>

**Install Hugo**

However, the host machine must have Hugo installed beforehand.
This can be done my using the [Install Guide](https://gohugo.io/getting-started/installing/). 

As I use Windows right now, the command to install it on my setup goes as following:

**Windows - Chocolatey**
```
choco install hugo -confirm
```

## Making changes to the Website

## Saving your work
Once changes has been made in the root directory you can validate them by running `hugo server`. If everysthings alright you should make a `commit` and `push` the changes to your repo.



## Adding new Themes
Adding new themes in Hugo is usually done by cloning GitHub repositories. 
Usually you would simply do a `git clone https://examplerepo`.
But because we need to sync our local folder using git sustainably, what we want to do is using the the [`submodul`](https://git-scm.com/book/de/v2/Git-Tools-Submodule) feature. 

So instead of using `clone` you have to add the themes as `git submodules`.

To do so, simply do this command in the root directory of your Hugo folder and let it clone the theme files into the theme directory:
```
git submodule add https://github.com/your-theme themes/name-of-your-theme
```

Don't forget to select the new theme by adjusting the name in the `config.toml` file!