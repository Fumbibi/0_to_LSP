# nvim_0_to_LSP
A guided tour of neovim
or the notes along the way

This is the continuation of my story from the introduction that I began to write in Doc, which includes this information as well, thus making this whole line completely redundant.

Sue me...

I am less than 4 minutes into the 30-minute video and there is no telling how often I'll need to pause, but I can feel it in my bones, muscles, blood, and saliva that this is good.

Worth...

I am running into an issue with the step to find my remap file. I think it is looking in /lua and not /lua/fumbibi, and maybe that means I added the "require" line to the wrong .lua file
I think there was another issue I ran into, but they both definitely fall clearly, firmly, and completely into the same category

Skill issue...

This solution was learning to spell. F-u-m-b-i-b-i != Fumbibi
"Now we're cruisin'" - Youtuber 2023

I'm gonna get my package manager, but not because an AI told me to. Also, grabbing a fuzzy finder is going to be extremely useful.

"Touch Fuzzy, Get Dizzy" - Yoshi's Story, 1 - 7

Next obstacle with installing the package manager (hehehe) is that the Youtuber can use ctrl+v to paste the code from the repo.
Since I can't, I will be manually typing it and hoping I don't cross my fingers.

"Give it a go, and look at that, we got a package manager!" Youtuber

The next obstacle has presented itself. This guy has "~/.config/nvim/after/plugin/telescope.lua"
I got... not a skill issue. Rather, bro flew through his lines like the show must go on, but he's also technically on fire

"create a directory called after, go into after, create a directory called plugin, go into plugin"
So, what threw me for a loop was nvim/plugin which was automatically created even though after/plugin is manual

I completed the step at 5:53 and noticed my file was only 155B while the Youtuber had 156B
Checking everything twice was super important because even if I could copy paste, which I can't, 
there was a section where he manually edited an additional line. All the characters checked out.
Then, I noticed he had a blank line at the end. 

I'm just more efficient, what can I say?

<insert meme node_module_heaviest_objects_in_the_universe.jpg>

Okay, I updated to 0.1.3 for Telescope and it fixed the issue with it just failing.
I have the error code back in the Doc I started to write this in. Searched it up, saw it had been fixed in 0.1.3

Practically advent of code

I saw a comment on the video warning that the GREP only works if you have GREP. 
I have Grep
I tried to find the word "requires" without quotes. Like the Youtuber did. 
I got 0 results compared to the 1 I expected.
I double checked the input. r-e-q-u-i-r-e-s-return 

Facepalm frfr

The next milestone is about the 9-minute mark. I decided against the rose-pine theme as the one I would be using.
It was too much of a false political outrage activist dog and pony show.

That said, my colors.lua is not making the background transparent like it did for the Youtuber
I'm not sure if that's because I'm on a chromebook using the linux beta or something else, but it means little as today that Youtuber who is also a Twitcher, guided a vim veteran through configuring Neovim.

I will review that after I finish this and compare the results and the processes. 
A major benefit of doing this one first is that the other one will be much much easier to follow because
I will have already grown in my knowledge and power.

"This is to go even further beyond"

Oh, man I am finding the silly mistakes I keep making quicker than I expected. A comma here, a parenthese there.
The lack of transparency? my file is in the wrong directory.
Gonna hop out of Neovim to sudo move it.

Moved it and now two things are true. 

First, the background still isn't transparent
Second, running the :so command on the file changes the color to either nightfox or default I haven't stopped to test
because the main thing is, it is different from what it is when it starts--which definitely is Duskfox

I did stop to test because I wanted to know for the sake of being able to diagnose what the problem might have been. 

I tested terminator and it did allow for much more fun and functionality than the native terminal, but I didn't want to over-complicate things before I finish--at least not more than I already do.
The Youtuber had me install nvim-treesitter/nvim-treesitter, and now he is saying, "look at this! It is still disgusting looking! We don't have any parsers or anything set up we need!"

So, I'm gonna fix that issue and then roll out for the night.

Update: my latest change didn't fix the issue I was having, but I did again notice significant difference between my setup and the Youtubers. His top-level (ish) directory /nvim/, but now they match

../
./
after/
lua/
plugin/ 
init.lua

and this file because I figure my journal should be easily accessible and not buried

thecrawl.txt

This update is about 30 minutes after the last. I have corrected the issues with Treesitter
The first issue is that it didn't want to install the

I've successfully implemented Harpoon and can easily navigate back to this document using _a<C-e> to open
the quick menu to add it if it doesn't already exist and <C-t> while it is #2 on the list
In Windows terms that would be " a" followed by "Ctrl+e" for adding and "Ctrl+t" for navigating, respectively.

Adding the Tpope's fugitive plugin marks the milestone for the final plugin for navigation and management, as far as I know.
The Youtber says the next step is to set up the LSP. lsp-zero.vim is the repo for it, probably going to add it to package
like I did the rest of them.

I'm at a road bump again. This is the first glance. I haven't even looked into it, but I see that the youtuber lsp.lua is
roughly 80B more than the file I wrote up using the tutorial. I don't know where, but hopefully it will work anyway.
I would much rather the file sizes match. 

A compromise of sorts, I changed the tabs into spaces and racked up more Bytes... too may because I did quad-space
instead of double spaces like the youtuber.So, now I"m over. 

I am not much further from where I last left off with the LSP stuff. It is working for some things 
but throws errors for others. The tsserver and eslint are the ones that claim to fail to install, but
I've also seen a status message at the bottom saying eslint did install. 

So, I'm just going to move on
That way I can finish the tutorial and see what differences there are between this one and the new one. (TODO)

This one, if I haven't mentioned it, is from 1 year ago, in youtube time, who knows how long that is in real time, and the new one is from the past week. I couldn't catch it live on twitch--the Youtuber streams there.

Let it ride

Okay, I typed <leader>gd and it jumped to the file based on the path for the file being the string of text I was highlighting
That's super sweet. Also, it happened right after I found out that I when I put Fumbibi. the suggestions included set. 

I tried to fix the above sentence, but I don’t know what I meant when I wrote it. Enjoy!

So, I hit the down arrow and it then opened to the right of that box a preview box for the file. 

ascii_head_explode.jpg
	  ['<C-Space>'] = cmp.mapping.complete(),	

I don't know how that got there, but I'm leaving it there. Also, my relative line numbers disappeared.
I totally had them and now I've lost them. I won't trouble shoot that now. I must move forward to the finish.

The time has come, I have reached the end of the video and this tutorial.
Now I see that I have regularly gone past the 80-character line in this and that's okay. 

In case anyone wasn't able to tell by now, who this mysterious youtuber is.

His name: ThePrimeagen.


