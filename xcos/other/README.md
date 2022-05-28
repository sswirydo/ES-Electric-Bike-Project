# START

When you open the project in Xcos, the first thing to do is to execute
the file `init_project.sci` in the scilab interpreter. This file reads
the track data (elevation along the track), and populates it into the
variables `distances` and `gradients`. Before executing the file,
open it and set the correct path to the file `Parc_Ten__Parc_de_la_Heronniere.csv`.
Then execute in the scilab interpreter:

    exec('<full-path-to-init_project.sci>')

After that, you can simulate the project by clicking "Simulate". Note
that we already set all the needed parameters. You should see the
window with many graphs. This window is plotted by the component
`scope`. It is quite self-explanatory what is plotted there, once
you see what is connected to the scope. (The red clock tells how often
the scope shall print the data, its current period is 0.05 seconds.)

# TASKS

See the tasks descriptions in the PDF project description.

The length of the track is 1800m. The default simulation time of
400 seconds should be sufficient for both cases, with and without e-assistance.


# QUESTIONS

Post your questions to our forum or by email: ayrat.khalimov@ulb.be
Enjoy!

