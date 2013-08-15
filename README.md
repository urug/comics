Comic Collection
================

This application is a simple comic book collection. It manages books and issues. There are no advanced features, such as user accounts.

This application is a starting point for the URUG Frontend Battle Royale. There will be branches for frontend implementations in [Ember.js](http://emberjs.com/), [AngularJS](http://angularjs.org/), [Polymer](http://www.polymer-project.org/), and Rails UJS + [Sync](https://github.com/chrismccord/sync).

Design Specification
--------------------

The user experience for this application is kept intentionally simple so that the implementations can be presented and understood in a short time period. We don't expect to production quality applications here. We want just enough implementation to compare and contrast the various frontend frameworks. 

The application consists of two resources: books and issues nested within a book. The book list is a grid of cover art with names as captions to the cover art. The book detail shows a grid of issue cover art with the issue titles as captions. The issue display shows the data for the issue.

### Book List

![Book List](https://raw.github.com/urug/comics/master/public/images/book-list.png)

Don't worry about pagination or anything too fancy on this stage. Just order the comic books alphabetically by title and show the cover art above the name of the comic book.

### Book Detail

![Book Detail](https://raw.github.com/urug/comics/master/public/images/book-detail.png)

The top of this page contains some aggregate data like the total price of all issues and the total number of issues. This data should be kept in sync as new issues are added.

Below the summary data there is a grid of issues for this comic book. The grid will show a small image of the cover of that issue, and optinally the issue number, the title of the issue and the price of that issue. The grid must be maintained in order of the issue number.

> Please do not do anything crazy like install RMagick to make the thumbnail. Just stick a width/height attribute on the image tag.

On the book detail page there will be an in-line form so that a new issue can be added directly on this page. After adding an issue the summary data and the issue grid should be updated.

Getting Started
---------------

```bash
$ git clone ...
$ bundle install
$ rake db:setup db:fixtures:load
$ rails s
```
