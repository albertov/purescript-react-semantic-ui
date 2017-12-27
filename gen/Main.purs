module Gen.Main where

import Prelude

import Control.Monad.Aff (Aff, launchAff)
import Control.Monad.Aff.Console (CONSOLE, log)
import Control.Monad.Eff (Eff)
import Control.Monad.Eff.Exception (EXCEPTION)
import Data.Array (catMaybes, concat, mapMaybe)
import Data.Either (Either(..))
import Data.Foldable (for_)
import Data.Maybe (Maybe(..))
import Data.String (Pattern(..), joinWith, split)
import Data.String.Regex (match, regex)
import Data.String.Regex.Flags (noFlags)
import Data.String.Yarn (lines)
import Data.Traversable (for)
import Node.Encoding (Encoding(..))
import Node.FS.Aff (FS, readTextFile)
import Partial.Unsafe (unsafePartial)

right (Right x) = x

regexImport = unsafePartial $ right $ regex """[{,] ((?:(?:[,{])?[A-Z][A-Za-z]*)+) } from '.\/dist\/commonjs\/(.*)';""" noFlags
regexDefaultImport = unsafePartial $ right $ regex """{ default as.* from '.\/dist\/commonjs\/([^'].*)';""" noFlags

main :: forall eff. Eff ( fs :: FS, console :: CONSOLE, exception :: EXCEPTION | eff) Unit
main = void $ launchAff do
  ls <- lines <$> readTextFile UTF8 "node_modules/semantic-ui-react/index.d.ts"
  let files = ls <#> \l ->
              case match regexImport l of
                Just [ _, Just exports, Just name ] -> split (Pattern ", ") exports <#>
                  (\export -> "node_modules/semantic-ui-react/src/" <> name <> ".js")
                  
                _ -> []
  let filesDef = ls <#> \l ->
                case match regexDefaultImport l of
                  Just [ _, Just name ] -> Just $ "node_modules/semantic-ui-react/src/" <> name <> "/" <> name <> ".js"
                  _ -> Nothing
  log $ joinWith "\n" $ concat files <> catMaybes filesDef
