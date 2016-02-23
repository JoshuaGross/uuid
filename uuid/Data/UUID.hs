{- |
Module      : Data.UUID
Copyright   : (c) 2008,2012 Antoine Latter
Copyright   : (c) 2016 Joshua Gross

License     : BSD-style

Maintainer  : aslatter@gmail.com
Stability   : experimental
Portability : portable


This library is useful for comparing, parsing and
printing Universally Unique Identifiers.
See <http://en.wikipedia.org/wiki/UUID> for the general idea.
See <http://tools.ietf.org/html/rfc4122> for the specification.

* Random UUIDs may be generated using 'Data.UUID.V4.nextRandom' or
your favorite instance of 'System.Random.Random'.

* We have an implementation of generating a UUID from the hardware
MAC address and current system time in "Data.UUID.V1".

* For name-based generation of UUIDs using SHA-1 hashing see
"Data.UUID.V5".
-}
module Data.UUID(UUID(..)
                ,toString
                ,fromString
                ,toText
                ,fromText
                ,toASCIIBytes
                ,fromASCIIBytes
                ,toLazyASCIIBytes
                ,fromLazyASCIIBytes
                ,toByteString
                ,fromByteString
                ,toWords
                ,fromWords
                ,null
                ,nil
                ) where

import           Data.UUID.Types
import           Prelude         ()

-- We use explicit re-exports of everything from Data.UUID.Types in
-- preference to just re-exporting the whole module. This is to avoid
-- unforeseen transitive API breakage if the Data.UUID.Types module
-- should change.
