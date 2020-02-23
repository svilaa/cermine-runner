java -cp .\cermine.jar pl.edu.icm.cermine.ContentExtractor -path ./pdfs -outputs text,zones
dir ./pdfs/*.cermtxt | rename-item -newname { [io.path]::ChangeExtension($_.name, "txt") }
Move-item -Force -Verbose .\pdfs\* -Destination .\results\
