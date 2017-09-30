
source ./YourTasks/config.sh
source ./shell_privite_lib/pch.sh

shellPath="./YourTasks"

shellPrivateLibPath="./shell_privite_lib"

function f_doWork
{
	(f_echo)

	(f_echo "基于私有repo、git管理的任务指令列表")

	local taskGroup="[
	
		1、main项目 ，pod update

		2、私有pod库 ， pod update
					
		3、私有pod库 ， pod push
					
		4、私有pod库 ， 打包

		5、清除私有repo相关库cache

		6、私有repo update

		7、退出
					]"

	(f_echo "$taskGroup")

	(f_echo "请输入任务指令 [如：1]:")

	read taskID

	case $taskID in
		
		'1' )
			source $shellPath/main_project_update.sh
			;;

		'2' )
			source $shellPath/lib_pod_update.sh
			;;

		'3' )
			source $shellPath/lib_pod_push.sh
			;;

		'4' )
			source $shellPath/lib_pod_archive.sh
			;;
		
		'5' )
			'f_privite_repo_cache_clean'
			;;
			
		'6' )
			'f_privite_repos_update'
			;;

		'7' )
			'exit'
			;;
	esac

	'f_doWork'
}

'f_doWork'

