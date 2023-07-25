import System.IO
import Control.Monad

cveRead :: IO ()
cveRead = do
        let list = []
        csv <- openFile "/xxxx/xxxx" ReadMode
        contents <- hGetContents csv
        putStrLn ("The CVEs are: " ++ "\n" ++ contents)
        hClose csv


-- Read CVE list
CveList :: IO ()
CveList = do
        let list = []
        handle <- openFile "/xxxxxx/xxx/xxxxx/" ReadMode
        contents <- hGetContents handle
        putStrLn ("The CVEs are: " ++ "\n" ++ contents)
        hClose handle


main :: IO ()
main = do
        cveRead
        CveList