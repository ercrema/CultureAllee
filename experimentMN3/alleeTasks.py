#!/usr/bin/python3

from scipy import arange

def main():
    """
    # 1 - exploration lambda/z
    competitionValues = [0.0]
    zValues = [0.05, 0.2]
    lambdaValues = [0.5, 0.75, 1]
    """
    """
    # 2 - exploration lambda/z (relative figure)
    competitionValues = [0.0]
    zValues = arange(0,1.1,0.1)
    lambdaValues = arange(0.5,1.05,0.05)
    """
    # 3 - exploration competition/z 
    competitionValues = [0.1,0.25,0.5]
    zValues = [0.05, 0.2]
    lambdaValues = [0.75]
    """
    # 4 - z (figure 3)
    competitionValues = [0.0]
    zValues = [0,0.05]
    lambdaValues = [2/3]
    """

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
 
