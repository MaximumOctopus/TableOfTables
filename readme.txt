=================================================================================
== About                                                                       ==
=================================================================================

  Paul A Freshney, June 2nd 2020

  paul@freshney.org

  http://maximumoctopus.com

  http://twitter.com/maximumoctopus

  https://sourceforge.net/projects/table-of-tables/

=================================================================================
== Installation                                                                ==
=================================================================================

Important!

Always delete the old \data\ folder before unzipping the new version! But don't 
forget to make a copy of any custom content (which should be located in
\data\tables\_custom)

The application doesn't need installing, just copy the contents of the zip to
a location of your choice.

=================================================================================
== Tables of Tables                                                            ==
=================================================================================

This application is based on the contents of the popular "Behind the Tables" 
sub-reddit:

  https://www.reddit.com/r/BehindTheTables/wiki/index

and also contains some content from here:

  https://github.com/nickolusroy/npc-generator

and also some from here:

  https://docs.google.com/spreadsheets/d/1G_PmUM9ONAND7qwiS2ZPHxsT4Le1A8ts9Ig2c18VAHc/edit#gid=796186040

If you have any suggestions, bug reports or feedback then PLEASE send me an
email to the address at the top of this readme.

Get the latest version here:

  http://maximumoctopus.com/tot/tot.zip

Get the source code from here:

  http://maximumoctopus.com/tot/tot_sourcecode.zip

or here:
 
  https://sourceforge.net/projects/table-of-tables/  


Creating your own content is easy, see the readme file in the \data\ folder for
more information on how the data is formatted.

Please consider sharing anything you create with the rest of the Table of Tables,
and D&D communities.


=================================================================================
== Release History                                                             ==
=================================================================================

beta 0.7.0 (June 2nd 2020)

- Updated to include all the new tables (except some very large custom tables
  for users' websites).

beta 0.6.11 (August 17th 2017)

- Updated to include all new tables from the Table of Tables subreddit
  (55 new tables!)

beta 0.6.10 (April 6th 2017)

- Updated to include all new tables from the Table of Tables subreddit

- Added Misc tab, and Hoard Calculator. Calculate the weight and volume of 
  treasure!

- Added "colours" to library.data

beta 0.6.9 (January 11th 2017)

- Added more random options to "default" NPC

- Added support for more than one NPC, see the readme

- Improved tolerance for errors in input tables/data
  Added more debug output
  
- Added more debug options
  (Useful for anyone creating their own content)

- Added more stats (see Help->About)

- Implement Shop search.

- Improved search display (for Table and Shop search)
  Items containing search term are bold in the list displays
  
- Moved Name Gen and NPC Gen to a new tab.
  In future we'll hopefully have more of these so they'll
  need to be moved eventually (to keep things uncluttered)

beta 0.6.8 (January 5th 2017)

- Fixed: logo on About box now transparent!

- Added new content: NPC Gen
  Quickly generate a nice NPC, with description
  
- Added many more tables, now in sync with Reddit ToT thread
  (I think. Some stuff isn't well suited to random table format)

- Added more shop items

- Added new debug option (Roll all tables)
  (Good for quickly testing every table)

- Minor bug fixes, and tweaks to content

beta 0.6.7 (November 18th 2016)

- Fixed bug causing Sub-categories to not display!

beta 0.6.6 (November 14th 2016)

- Added list of previously generated names to Name Generator tab

- Added new content: Shop 
  Extensive list of buyable items: Armour, weapons, magic items... 
  
- Fixed a couple of minor bugs

beta 0.6.5 (November 1st 2016)

- Added ability to add (internal) references to rollable items. These appear in a 
  "Table References" menu within the right mouse button menu (on the text display)
  See the readme in \data\ for more information
  (I've added many references already, I will add many more over the next week or so)

- Added data update function (from Help menu), will update data files to latest
  version (doesn't support update of executable, yet)

- Viewer window now shows all categories, and also named tables

- Added a debug menu, currently only function is auto-generate a roll from a named
  table; will add more to this over time

- Fixed spelling of "highlight" on Preferences window :)

beta 0.6.4 (October 26th 2016)

- Fixed Plot -> Strange crimes

- Added sortcuts to Add New Tab (CTRL+T) and Remove Current Tab (CTRL+W)

- Added Rename tab button (CTRL+R)

beta 0.6.3 (October 25th 2016)

- Added Missions -> Rogue missions

- Added Object, Items, and Miscellany -> Bag of holding

- Added Plot -> Political plot

- Fixed hints not showing.

- Code tweaks and prettying(!)

beta 0.6.2 (September 8th 2016)

- Added Settlements -> Pub Names

- Added Plot -> Rumour Factory

beta 0.6.1 (August 27th 2016)

- Added Mutant Creatures and Mage Towers tables

- Updated the ToT_Tool source (improved handling of inputs)

beta 0.6 (August 22nd 2016)

- Added more powerful table option: 
  Allows any table to receive a random entry from any other table
  (see readme in \data\ for more information - it's very cool)

- Added "library.data", a collection of useful tables of common data that can
  be used with the new feature above. This table will be updated regularly.
  These tables are not visible, they are designed to be used as look-up tables.

- Added the ability to generate dice rolls on the fly within table entries
  E.g. you receive =2d6 gp
  The =2d6 part will be replaced by a number represented by the dice roll. Supports + and - modifiers too.

- Added the ability to create a table that outputs all entries
  So rather picking one from a list, it will will output all.

- Added the ability to re-roll a single entry in a table

- Added; save table rolls as a favourite. Three new buttons on the Tables toolbar

- Added new Fantasy name generator (over 11200 text items!)
  Removed medieval.txt

- F5 to refresh is now context sensitive; reroll if table tab is active, a
  new name if name tab is active

- Added Names to all NPC tables
  If you think I've missed somewhere that could do with a random name then let me know.

- Tidied up many tables
  This includes ensuring that they all make the best use of the new features (table look-ups and random number dice rolls)
  Plus other minor tweaks.

beta 0.5 (August 16th 2016)

- Added content viewer. Let's you see everything contained with a table

- Improved Search

- Other minor tweaks to content/code

beta 0.4.1 (August 13th 2016)

- Fixed an error when trying to delete tabs

- Fixed a bug where changing tabs caused the contents to be re-rolled

beta 0.4 (August 10th 2016)

- Added "World building" category (and tables)

- Added Trinkets to "Objects, Items and Miscellany" category

- Added multi-tabs to Tables display. Display as many tables within tabs as your
  heart desires

- Load and save multi-tab layout

- Added Name Generator tab

- A few minor tweaks and fixes

beta 0.3.1 (August 6th 2016)

- Fixed a few tables

- Added more error checking and error reporting code

beta 0.3 (August 5th 2016)

- Added colour options for text, roll items, and header text.
  Customisable through Edit->Preferences.

- Added ability to lock-in any rolled value (also unlock, of course!).

  Select, by clicking the appropriate text in the output pane, and either right
  mouse button for menu options - or select from the toolbar buttons.

  When an option that can be locked/unlocked is selected, it will be displayed
  in the status bar at the bottom on the main application window.

- Added buttons to the toolbar to:
     Lock all items
     Unlock all items
     Toggle (lock/unlock) the currently selected item

- Added Images tab
     Add a list of images, and view them on screen
     Save the list for later


beta 0.2 (August 3rd 2016)

- Added ability to show text either line-by-line or by paragraph

- Added button on the toolbar to reroll (refresh) current


beta 0.1 (August 2nd 2016)

- First public release.

=================================================================================
==                                                                             ==
=================================================================================