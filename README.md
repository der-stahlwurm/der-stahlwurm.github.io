# Blog: blog.der-stahlwurm.de

German Blog hosted on [blog.der-stahlwurm.de](http://blog.der-stahlwurm.de/) and powered by ([Jekyll Repository](https://github.com/jekyll/jekyll)).
 
**Jekyll** is a static site generator that's perfect for GitHub hosted blogs ([Jekyll Repository](https://github.com/jekyll/jekyll))

For bootstraping the Blog [Jekyll Now](https://github.com/barryclark/jekyll-now#quick-start) was used. An excellent way to minimize the setup time for a blog based on GitHub Pages.

Content of the Blog is Chainmaille (Chainmail) and Crafting in common.

## Usage during Development

To be able to see the blog also on my local machine I am using a [Docker Machine](https://docs.docker.com/machine/) setup.


    docker-machine start blog
    eval "$(docker-machine env blog)"
    ./docker/start-dev.sh
    
`start-dev.sh` includes drafts and the dev settings (for example without comments). `start.sh` includes only the real posts and starts the engine with the production settings.    

Both ways do support a watch mechanism. So I am able to write my articles and watch the changes live in the browser without having the need to restart the engine.

Call the blog

    docker-machine ip blog
    <ip is returned here, e.g 192.168.99.100>
    
Enjoy: `http://<ip>:4000`    


## Credits

- [Jekyll](https://github.com/jekyll/jekyll) - Thanks to its creators, contributors and maintainers.
- [Jekyll Now](https://github.com/barryclark/jekyll-now) - Thanks for this blog template.
