uses statebag to track if occupied
resmon low only to check if player has exited the seat scenario or pressed button to stand

there is a slight delay after sitting down before standing up
we do a check to see if player has made it into the seat with a delay
some seats are too close to table and player cant actually walk tot hem to sit down, after delay we check if player is still trying to get into the seat, if so we redo the scenario with the teleport flag to true teleporting them into the seat, this allows more flexiiblity in the chairs tah can be sat in


TOOD
instructions for how to add new charis (using delete laser to select props, some chairs in MLOs are baked in and cannot be selected this way, but if they use the actual prop it will work)
also using plebmasters