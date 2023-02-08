import tarfile
import glob

## List files

path = r'./*.tgz'
files = glob.glob(path)
print(files)

## Untar/gzip
for file in files:
    tar = tarfile.open(file)
    tar.extractall(f'./uncompressed/{file.replace(".tgz", "")}')
    tar.close()