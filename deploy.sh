dir='/Users/kevin/code/kevinkowalew/unknown/helm-values'
files=( $(ls $dir) )

for file in "${files[@]}"; do
  deploy=$(echo $file | cut -d"." -f1)  
  helm upgrade --install $deploy . --values=$dir/$file
done
