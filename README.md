**The Marvel_Fight App**

Installation and Use
0) You will need Ruby 2.5.3 in order to run this.
1) Clone this repository.
2) In the command line, type `ruby marvel_fight.rb` and hit Enter.
3) Obey the prompts.
4) Don't worry if you make mistakes entering your choices.

Development
Initially I planned to write the API calls myself, but while trying to write that part I came across a Stack Overflow question about exactly my problem with the API and a link to an existing Ruby gem (https://github.com/O-I/marvel). Rather than try to reinvent the wheel, I opted to copy that gem's functionality and integrate it with some basic control flow steps.

Some assumptions I made that turned out to be wrong:
1) The API would let me use a server to make calls in the same way a browser would.
2) All Marvel characters would be available.
3) All available characters would have descriptions.
4) Users would always correctly spell names.
5) Users would always input the correct data type.
6) It would be possible for me to suppress the Hashie enumerable warning.

Some assumptions that (so far) have turned out to be right:
1) No word in any character description will be long enough to overcome a 1000 point advantage given by an auto-win word.
2) In the case of both characters having an equal length word or both having gamma or radioactive in their descriptions, neither should win.