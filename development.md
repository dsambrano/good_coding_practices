# To Do List:



# Required for launch

- TOC As sidebar and moves with you (https://www.w3schools.com/howto/howto_css_fixed_sidebar.asp) (https://github.com/allejo/jekyll-toc)
- Categories flushed out to multi-part ones [idea1](https://blog.webjeda.com/jekyll-related-posts/) [idea2](https://digitaldrummerj.me/blogging-on-github-part-13-creating-an-article-series/) [idea3](https://www.ayush.nz/2022/02/creating-article-series-posts-navigation-jekyll) [idea4](https://engineering.chrobinson.com/how-to/linking-a-series-of-jekyll-posts/)
  - Meaning permalinks as well as next/previous (could be in sidebar?) ordering required
- Review content for typos and formatting issues (e.g., image names, line breaks, all links, Date)
- about page gets revamped
- add my website(/CV?) to footer
- Reassess Skill Level (probs none of what I have so far is beginner, since I assume variables so probs adjust)
  - Add Loop for the Difficulties
  - Change order for diff: beginner, intermediate, advanced, expert
  - figure out better color schemes, cuz they are currently unseeable
- Change categories.md name and permalink
- Fix Dates and order


Before Launch: Also need to split the git post into the series (what is git/Git Example/Branches/Recover Mistakes?/GitHub)
Same thing but with python (each level two should be its one file)
Series should have a completed tag in data and that should be reflected in the sidebar


Add Post types:
- Blog (productivity)
- Series (tyipcally long turorial: eg cli/computational modeling)
- Tutorial (one off tutorial; like when I split up the pythong best practices)
- Snippets (when I bring over code_samples and have it as a submodule inside a snippets collection folder with each language having their own folder in their); need to make sure they don't all get added to the title bar page

Upcoming Post option: Check date and only had to home if it is past that date otherwise say coming soon (wont autopublish tho, so probs need to have a github workflow to have it recompile every D/W). It check upcoming posts and only shows the most recent option or two

---

Add a Copy code button: https://remarkablemark.org/blog/2021/06/01/add-copy-code-to-clipboard-button-to-jeyll-site/

Add Related posts to bottom of posts by default if they are not a part of a series. (should probably make them similar but distinct also)

Adding Darkmode toggle
https://derekkedziora.com/blog/dark-mode-revisited

after launch:
- Add CSS variables to make this much easier to manage in the future
- Categories are also links
- difficulty are added to home page and are also links
- adding coding samples
- Adding different post types
  - See text for types. Each type can just change the color of the link, with type color key combo in sidebar? or just in content above posts. The latter being slightly easier, probs
- Dark Mode (https://medium.com/@derekkedziora/how-to-add-a-dark-mode-toggle-to-a-jekyll-site-a76dac00128d)
- Have a menu with drop down called categores with either Topics, Blog Series, Samples, or Skill Level (https://thinkshout.com/blog/2014/12/creating-dynamic-menus-in-jekyll/)




- Figure out the ordering of the posts? (Seems like naming order but New Post does not follow that)
- Figure out why excerpts are not showing for my new ones. (Probably because its a list, if so just add the <!--more--> option)
- Move the `_includes` and the `_layouts` folders from the theme over (symlink with GH?)
- Show Categories for the posts above the excerts
- Make dark mode (ideally with JS so it can be togglable)
- Fix/Configure the categories to be Consistent across all of them

- Add a `_data` folder to store topics, authors, etc. https://jekyllrb.com/docs/datafiles/
- Fix Front Matter to include time, difficulty, new data folder, YT_links (if applicable) and takeaways
  - CSS for difficulty
  - Home and each page for time
  - post layout to adjust the template to have the takeaways look the same
  - post layout for the new data created and the Yt links

- allow images
- See if you can use variables in CSS
- Create related posts probably in Front Matter
- Investigate collectsion as a solution to related posts/the order problem in the yaml

# Solution 

Solved the Clustering (for the perma link)
- Move everything to a tag then have the groupings be folder clusters exclusively
- Make a new Page about the clusters which for the layout it only selects the clusters in normal ordering
- Add page to do the same thing for the sample and symlink it from code samples move all to samples folder and then symlink


Use this for inspiration especially on the Lesson the home page and what really counts as beginner
Also see the home page for a python to get some infor about a setup
finally look at the index.html file for image ideas on the posts/organization strategies
https://www.mikedane.com/programming-languages/python/



Other Themes that I think are worth writing down somewhere:
- https://github.com/poole/hyde
- https://github.com/alshedivat/al-folio
