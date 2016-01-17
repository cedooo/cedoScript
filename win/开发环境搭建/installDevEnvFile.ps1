$client = new-object System.Net.WebClient 
$client.DownloadFile('http://jaist.dl.sourceforge.net/project/sevenzip/7-Zip/15.14/7z1514-x64.msi','C:\7z1514-x64.msi')