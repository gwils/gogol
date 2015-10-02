{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Genomics.Readgroupsets.Patch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates a read group set. This method supports patch semantics.
--
-- /See:/ <https://developers.google.com/genomics/v1beta2/reference Genomics API Reference> for @GenomicsReadgroupsetsPatch@.
module Network.Google.Resource.Genomics.Readgroupsets.Patch
    (
    -- * REST Resource
      ReadgroupsetsPatchResource

    -- * Creating a Request
    , readgroupsetsPatch'
    , ReadgroupsetsPatch'

    -- * Request Lenses
    , rpQuotaUser
    , rpPrettyPrint
    , rpReadGroupSetId
    , rpUserIP
    , rpKey
    , rpReadGroupSet
    , rpOAuthToken
    , rpFields
    ) where

import           Network.Google.Genomics.Types
import           Network.Google.Prelude

-- | A resource alias for @GenomicsReadgroupsetsPatch@ which the
-- 'ReadgroupsetsPatch'' request conforms to.
type ReadgroupsetsPatchResource =
     "readgroupsets" :>
       Capture "readGroupSetId" Text :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "fields" Text :>
                 QueryParam "key" Key :>
                   QueryParam "oauth_token" OAuthToken :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] ReadGroupSet :>
                         Patch '[JSON] ReadGroupSet

-- | Updates a read group set. This method supports patch semantics.
--
-- /See:/ 'readgroupsetsPatch'' smart constructor.
data ReadgroupsetsPatch' = ReadgroupsetsPatch'
    { _rpQuotaUser      :: !(Maybe Text)
    , _rpPrettyPrint    :: !Bool
    , _rpReadGroupSetId :: !Text
    , _rpUserIP         :: !(Maybe Text)
    , _rpKey            :: !(Maybe Key)
    , _rpReadGroupSet   :: !ReadGroupSet
    , _rpOAuthToken     :: !(Maybe OAuthToken)
    , _rpFields         :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ReadgroupsetsPatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rpQuotaUser'
--
-- * 'rpPrettyPrint'
--
-- * 'rpReadGroupSetId'
--
-- * 'rpUserIP'
--
-- * 'rpKey'
--
-- * 'rpReadGroupSet'
--
-- * 'rpOAuthToken'
--
-- * 'rpFields'
readgroupsetsPatch'
    :: Text -- ^ 'readGroupSetId'
    -> ReadGroupSet -- ^ 'ReadGroupSet'
    -> ReadgroupsetsPatch'
readgroupsetsPatch' pRpReadGroupSetId_ pRpReadGroupSet_ =
    ReadgroupsetsPatch'
    { _rpQuotaUser = Nothing
    , _rpPrettyPrint = True
    , _rpReadGroupSetId = pRpReadGroupSetId_
    , _rpUserIP = Nothing
    , _rpKey = Nothing
    , _rpReadGroupSet = pRpReadGroupSet_
    , _rpOAuthToken = Nothing
    , _rpFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
rpQuotaUser :: Lens' ReadgroupsetsPatch' (Maybe Text)
rpQuotaUser
  = lens _rpQuotaUser (\ s a -> s{_rpQuotaUser = a})

-- | Returns response with indentations and line breaks.
rpPrettyPrint :: Lens' ReadgroupsetsPatch' Bool
rpPrettyPrint
  = lens _rpPrettyPrint
      (\ s a -> s{_rpPrettyPrint = a})

-- | The ID of the read group set to be updated. The caller must have WRITE
-- permissions to the dataset associated with this read group set.
rpReadGroupSetId :: Lens' ReadgroupsetsPatch' Text
rpReadGroupSetId
  = lens _rpReadGroupSetId
      (\ s a -> s{_rpReadGroupSetId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
rpUserIP :: Lens' ReadgroupsetsPatch' (Maybe Text)
rpUserIP = lens _rpUserIP (\ s a -> s{_rpUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
rpKey :: Lens' ReadgroupsetsPatch' (Maybe Key)
rpKey = lens _rpKey (\ s a -> s{_rpKey = a})

-- | Multipart request metadata.
rpReadGroupSet :: Lens' ReadgroupsetsPatch' ReadGroupSet
rpReadGroupSet
  = lens _rpReadGroupSet
      (\ s a -> s{_rpReadGroupSet = a})

-- | OAuth 2.0 token for the current user.
rpOAuthToken :: Lens' ReadgroupsetsPatch' (Maybe OAuthToken)
rpOAuthToken
  = lens _rpOAuthToken (\ s a -> s{_rpOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
rpFields :: Lens' ReadgroupsetsPatch' (Maybe Text)
rpFields = lens _rpFields (\ s a -> s{_rpFields = a})

instance GoogleAuth ReadgroupsetsPatch' where
        authKey = rpKey . _Just
        authToken = rpOAuthToken . _Just

instance GoogleRequest ReadgroupsetsPatch' where
        type Rs ReadgroupsetsPatch' = ReadGroupSet
        request = requestWithRoute defReq genomicsURL
        requestWithRoute r u ReadgroupsetsPatch'{..}
          = go _rpReadGroupSetId _rpQuotaUser
              (Just _rpPrettyPrint)
              _rpUserIP
              _rpFields
              _rpKey
              _rpOAuthToken
              (Just AltJSON)
              _rpReadGroupSet
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ReadgroupsetsPatchResource)
                      r
                      u
