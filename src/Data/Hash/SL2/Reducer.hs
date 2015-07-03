{-# LANGUAGE MultiParamTypeClasses #-}

module Data.Hash.SL2.Reducer where

import Data.ByteString (ByteString)
import Data.Hash.SL2
import Data.Semigroup
import Data.Semigroup.Reducer

instance Semigroup Hash where
  (<>) = mappend

instance Reducer ByteString Hash where
  unit = mempty
  snoc = append
  cons = prepend
