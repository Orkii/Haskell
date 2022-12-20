import Data.List
import qualified Data.ByteString

main :: IO ()
main = do
    print $ isInfixOf "Haskell" "I really like Haskell."
    print $ isInfixOf "Ial" "I really like Haskell."