**The Marvel_Fight App**

<h4>Installation and Use</h4>
<ul><li>0) You will need Ruby 2.5.3 and the bundler gem in order to run this.</li>
<li>1) Clone this repository, change directory into the new folder, then run `bundle install`.</li>
<li>2) In the command line, type `ruby marvel_fight.rb` and hit Enter.</li>
<li>3) Obey the prompts.</li>
<li>4) Don't worry if you make mistakes entering your choices.</li></ul>

<h4>Development</h4>
Initially I planned to write the API calls myself, but while trying to write that part I came across a Stack Overflow question about exactly my problem with the API and a link to an existing Ruby gem (https://github.com/O-I/marvel). Rather than try to reinvent the wheel, I opted to copy that gem's functionality and integrate it with some basic control flow steps.

<h5>Some assumptions I made that turned out to be wrong:</h5>
<ul><li>1) The API would let me use a server to make calls in the same way a browser would.</li>
<li>2) All Marvel characters would be available.</li>
<li>3) All available characters would have descriptions.</li>
<li>4) Users would always correctly spell names.</li>
<li>5) Users would always input the correct data type.</li>
<li>6) It would be possible for me to suppress the Hashie enumerable warning.</li></ul>

<h5>Some assumptions that (so far) have turned out to be right:</h5>
<ul><li>1) No word in any character description will be long enough to overcome a 1000 point advantage given by an auto-win word.</li>
<li>2) In the case of both characters having an equal length word or both having gamma or radioactive in their descriptions, neither should win.</li></ul>
