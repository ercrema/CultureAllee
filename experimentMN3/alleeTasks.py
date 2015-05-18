#!/usr/bin/python3

from scipy import arange

def main():   
    competitionValues = [0.0]
    zValues = [0.05, 0.2]
    lambdaValues = [0.5, 0.75, 1]

    tasksFile = open('allee.tasks', 'w')
    numRun = 0
    for i in competitionValues:
        for j in zValues:
            for z in lambdaValues:
                # params: run competition z lambda
                tasksFile.write('/apps/R/3.0.2/bin/Rscript run.R '+str(numRun)+' '+str(i)+' '+str(j)+' '+str(z)+'\n')
                numRun += 1
    tasksFile.close()

if __name__ == "__main__":
    main()
 
