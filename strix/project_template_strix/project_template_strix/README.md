The file `sample,json` represents the sample template to upload the JSON file.
Specify the assumptions and guarantees as a list of comma separated LTL specifications.
Similarly, specify the input and output atomic propositions as a list of comma seperated propositions.

The file `sample_automata,hoa` represents the sample automata template to upload the automata in HOA format.

To run `strix`, specify the command in the following format in command line:
`strix -f <LTL-formula> --ins=<INPUT-ATOMIC-PROPOSITIONS> --outs=<OUTPUT-ATOMIC-PROPOSITIONS>`

For example:
`strix -f "G(req0) -> (G (req0 -> F grant0) & G (req1 -> F grant1) & G (!(grant0 & grant1)))" --ins="req0,req1" --outs="grant0,grant1"`

Additionally, it would be preferred that if the project folder could be structured where each task and subtask of the Strix section has its own folders and subfolders where the JSON and HOA files are uploaded.
This helps in readability.
# TASKS

See the tasks descriptions in the PDF project description.

# QUESTIONS

Post your questions to our forum or by email: Mrudula.Balachander@ulb.be
Enjoy!