SassCompassCompiler
===================

Automatically compiles sass files (.scss,.sass) with compass

I work on multiple projects and didn't want to have to use the [Compass Manual Setup](http://compass-style.org/help/ "Compass Help") each time I set up a new project and work on it

    compass create /path/to/project
    cd /path/to/project
    compass watch

so I decided to automate the process using Ant.  Now I no longer have to create a Compass project nor do I have to manually run the watch command.  It's all automatic.  Plus I am creating an expanded and indented source version for development and testing and at the same time creating a compressed version for production.  I use Eclipse as an IDE and Ant is already there for me so I wrote a builder to help me accomplish the task.

Setup
-----
I'll show Windows-specifics in this example.  Others can tweak to meet their respective Operating System environment.  Only two files are required, the rest of this project is documentation.

All you need is

1. **config.rb**
2. **build.xml**

The directory paths in **config.rb** for the _css\_dir_ and _sass\_dir_  are Windows-specific directory separators.  Change the directory separator if you are not using Windows.

You will need to change some configuration settings in **build.xml**.
> Windows users:  you do _not_ change the directory separator in the ant build file.  If you need to change the path, do so but use / as the directory separator.

At the top of the code block you will find a comment block that is fairly self-explanatory:

```ant
    <!-- ================================= 
          Global properties
            cfg = your compass configuration
            src = location of your sass files
            css = location of your development css
            min = location of your minified production css
         ================================= -->
    <property name="cfg" location="/var/tools/compass/config.rb"/>
    <property name="src" value="css/src"/>
    <property name="css" value="css/src"/>
    <property name="min" value="css"/>
```
_cfg_ is the path to the **config.rb** configuration on your system.
_src_ is where you keep your sass "source" files
I have multiple subdomains in my projects so each time I modify any of the sass development files the builder handles it.  I'm using regular expression matching to locate any "css/src" directory anywhere within the project directory structure and autmoatically build out an exploded source and a minified production version whenever changes are made to sass files within these directories.

Once I have the build.xml in my project folder root all I need to do is right click on my project and set the

    Properties > Builders > New ... > Ant Builder

and configure using something like the following:

1. ![Main Tab](/ant/screenshots-eclipse/1-main.png)
2. ![Refresh Tab](/ant/screenshots-eclipse/2-refresh.png)
3. ![Targets Tab](/ant/screenshots-eclipse/3-targets.png)
4. ![Classpath Tab](/ant/screenshots-eclipse/4-classpath.png)
5. ![Properties Tab](/ant/screenshots-eclipse/5-properties.png)
6. ![JRE Tab](/ant/screenshots-eclipse/6-jre.png)
7. ![Environment Tab](/ant/screenshots-eclipse/7-environment.png)
8. ![Build Options Tab](/ant/screenshots-eclipse/8-build-options.png)

Improvements are always welcome so please feel free to contribute!
