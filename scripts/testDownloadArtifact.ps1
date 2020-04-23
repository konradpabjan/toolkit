$file1 = "artifact-1-directory/artifact-path/world.txt"
if(!(Test-Path -path $file1))
{
    Write-Error "artifact-1-directory/artifact-path/world.txt file does not exist"
}
if(!((Get-Content $file1) -ceq 'hello'))
{
    cat $file1
    Write-Error "File contents of world.txt are incorrect"
}
$file2 = "artifact-2-directory/artifact-path/gzip.txt"
if(!(Test-Path -path $file2))
{
    Write-Error "artifact-2-directory/artifact-path/gzip.txt does not exist"
}
if(!((Get-Content $file2) -ceq 'Some large amount of text that has a compression ratio that is greater than 100%. If greater than 100%, gzip is used to upload the file'))
{
    cat $file2
    Write-Error "File contents of gzip.txt are incorrect"
}
