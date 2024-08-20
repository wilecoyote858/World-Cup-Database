# World-Cup-Database

<h2>Instructions</h2>
Follow the instructions and get all the user stories below to pass to finish the project.

You start with several files, one of them is <code>games.csv</code>. It contains a comma-separated list of all games of the final three rounds of the World Cup tournament since 2014; the titles are at the top. It includes the year of each game, the round of the game, the winner, their opponent, and the number of goals each team scored. You need to do three things for this project:

<h2>Part 1: Create the database</h2>

Log into the psql interactive terminal with <code>psql --username=freecodecamp --dbname=postgres</code> and create your database structure according to the user stories below.

Don't forget to connect to the database after you create it.

<h2>Part 2: Insert the data</h2>

Complete the <code>insert_data.sh</code> script to correctly insert all the data from <code>games.csv</code> into the database. The file is started for you. Do not modify any of the code you start with. Using the <code>PSQL</code> variable defined, you can make database queries like this: <code>$($PSQL "<query_here>")</code>. The tests have a 20 second limit, so try to make your script efficient. The less you have to query the database, the faster it will be. You can empty the rows in the tables of your database with <code>TRUNCATE TABLE games, teams;</code>

<h2>Part 3: Query the database</h2>

Complete the empty <code>echo</code> commands in the <code>queries.sh</code> file to produce output that matches the <code>expected_output.txt</code> file. The file has some starter code, and the first query is completed for you. Use the <code>PSQL</code> variable defined to complete rest of the queries. Note that you need to have your database filled with the correct data from the script to get the correct results from your queries. <b>Hint: Test your queries in the psql prompt first and then add them to the script file.</b>

<h2>Notes:</h2>
If you leave your virtual machine, your database may not be saved. You can make a dump of it by entering <code>pg_dump -cC --inserts -U freecodecamp worldcup > worldcup.sql</code> in a bash terminal (not the psql one). It will save the commands to rebuild your database in <code>worldcup.sql</code>. The file will be located where the command was entered. If it's anything inside the project folder, the file will be saved in the VM. You can rebuild the database by entering <code>psql -U postgres < worldcup.sql</code> in a terminal where the .sql file is.
<br>
  <br>
If you are saving your progress on freeCodeCamp.org, after getting all the tests to pass, follow the instructions above to save a dump of your database. Save the <code>worldcup.sql</code> file, as well as the final version of your <code>insert_data.sh</code> and <code>queries.sh</code> files, in a public repository and submit the URL to it on freeCodeCamp.org.

<hr>

Complete the tasks below
<ul>
<li>You should create a database named <code>worldcup</code></li>
<li>You should connect to your worldcup database and then create <code>teams</code> and <code>games</code> tables</li>
<li>Your <code>teams</code> table should have a <code>team_id</code> column that is a type of <code>SERIAL</code> and is the <code>primary key</code>, and a <code>name</code> column that has to be <code>UNIQUE</code></li>
<li>Your <code>games</code> table should have a <code>game_id</code> column that is a type of <code>SERIAL</code> and is the <code>primary key</code>, a <code>year</code> column of type <code>INT</code>, and a <code>round</code> column of type <code>VARCHAR</li></code>
<li>Your <code>games</code> table should have <code>winner_id</code> and <code>opponent_id</code> foreign key columns that each reference <code>team_id</code> from the <code>teams</code> table</li>
<li>Your <code>games</code> table should have <code>winner_goals</code> and <code>opponent_goals</code> columns that are type <code>INT</code></li>
<li>All of your columns should have the <code>NOT NULL</code> constraint</li>
<li>Your two script (<code>.sh</code>) files should have executable permissions. Other tests involving these two files will fail until permissions are correct. When these permissions are enabled, the tests will take significantly longer to run.</li>
<li>When you run your <code>insert_data.sh</code> script, it should add each unique team to the <code>teams</code> table. There should be 24 rows</li>
<li>When you run your <code>insert_data.sh</code> script, it should insert a row for each line in the <code>games.csv</code> file (other than the top line of the file). There should be 32 rows. Each row should have every column filled in with the appropriate info. Make sure to add the correct ID's from the teams table (you cannot hard-code the values)</li>
<li>You should correctly complete the queries in the <code>queries.sh</code> file. Fill in each empty <code>echo</code> command to get the output of what is suggested with the command above it. Only use a single line like the first query. The output should match what is in the <code>expected_output.txt</code> file exactly, take note of the number of decimal places in some of the query results</li>
</ul>
