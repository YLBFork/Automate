#! bin/bash

#$1 = podspec path
function f_git_push ()
{
    (f_echo "本地repo有  ::")
    (pod repo list)

    (f_echo "git remote信息:::")
    (git remote -v)

	(f_echo " 当前 $ProjectName，是否进行 pod push [y/n]:")
	
    isPodPush='y'
	read -t $TIMEOUT isPodPush 

    if [[ 'y' = $isPodPush || '' = $isPodPush ]] ; then
	 	#statements --verbose

        (f_echo "请选择要推送的repo:::")

        repoName='Syswin'

        read -t $TIMEOUT repoName 

        eval $2 pod repo push $repoName $1 --use-libraries --allow-warnings --verbose
    fi
}
