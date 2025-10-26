dir='/Users/kevin/code/kevinkowalew/unknown/helm-values'
files=( $(ls $dir) )

if [ $# -eq 0 ]; then
	for file in "${files[@]}"; do
	  deploy=$(echo $file | cut -d"." -f1)  
	  helm upgrade --install -n prod $deploy . --values=$dir/$file
	done
elif [ $# -lt 2 ]; then
	for (( i=1; i<=$#; i++ )); do
	  path="${dir}/${!i}.yaml"
	  if [ -e $path ]; then
		  helm upgrade --install -n prod ${!i} . --values=$path
		  echo $path
	  fi
	done
fi
