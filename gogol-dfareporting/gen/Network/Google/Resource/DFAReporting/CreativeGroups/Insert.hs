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
-- Module      : Network.Google.Resource.DFAReporting.CreativeGroups.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Inserts a new creative group.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingCreativeGroupsInsert@.
module Network.Google.Resource.DFAReporting.CreativeGroups.Insert
    (
    -- * REST Resource
      CreativeGroupsInsertResource

    -- * Creating a Request
    , creativeGroupsInsert'
    , CreativeGroupsInsert'

    -- * Request Lenses
    , cgiQuotaUser
    , cgiPrettyPrint
    , cgiUserIP
    , cgiProfileId
    , cgiCreativeGroup
    , cgiKey
    , cgiOAuthToken
    , cgiFields
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingCreativeGroupsInsert@ which the
-- 'CreativeGroupsInsert'' request conforms to.
type CreativeGroupsInsertResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "creativeGroups" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "fields" Text :>
                   QueryParam "key" Key :>
                     QueryParam "oauth_token" OAuthToken :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] CreativeGroup :>
                           Post '[JSON] CreativeGroup

-- | Inserts a new creative group.
--
-- /See:/ 'creativeGroupsInsert'' smart constructor.
data CreativeGroupsInsert' = CreativeGroupsInsert'
    { _cgiQuotaUser     :: !(Maybe Text)
    , _cgiPrettyPrint   :: !Bool
    , _cgiUserIP        :: !(Maybe Text)
    , _cgiProfileId     :: !Int64
    , _cgiCreativeGroup :: !CreativeGroup
    , _cgiKey           :: !(Maybe Key)
    , _cgiOAuthToken    :: !(Maybe OAuthToken)
    , _cgiFields        :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CreativeGroupsInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cgiQuotaUser'
--
-- * 'cgiPrettyPrint'
--
-- * 'cgiUserIP'
--
-- * 'cgiProfileId'
--
-- * 'cgiCreativeGroup'
--
-- * 'cgiKey'
--
-- * 'cgiOAuthToken'
--
-- * 'cgiFields'
creativeGroupsInsert'
    :: Int64 -- ^ 'profileId'
    -> CreativeGroup -- ^ 'CreativeGroup'
    -> CreativeGroupsInsert'
creativeGroupsInsert' pCgiProfileId_ pCgiCreativeGroup_ =
    CreativeGroupsInsert'
    { _cgiQuotaUser = Nothing
    , _cgiPrettyPrint = True
    , _cgiUserIP = Nothing
    , _cgiProfileId = pCgiProfileId_
    , _cgiCreativeGroup = pCgiCreativeGroup_
    , _cgiKey = Nothing
    , _cgiOAuthToken = Nothing
    , _cgiFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
cgiQuotaUser :: Lens' CreativeGroupsInsert' (Maybe Text)
cgiQuotaUser
  = lens _cgiQuotaUser (\ s a -> s{_cgiQuotaUser = a})

-- | Returns response with indentations and line breaks.
cgiPrettyPrint :: Lens' CreativeGroupsInsert' Bool
cgiPrettyPrint
  = lens _cgiPrettyPrint
      (\ s a -> s{_cgiPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
cgiUserIP :: Lens' CreativeGroupsInsert' (Maybe Text)
cgiUserIP
  = lens _cgiUserIP (\ s a -> s{_cgiUserIP = a})

-- | User profile ID associated with this request.
cgiProfileId :: Lens' CreativeGroupsInsert' Int64
cgiProfileId
  = lens _cgiProfileId (\ s a -> s{_cgiProfileId = a})

-- | Multipart request metadata.
cgiCreativeGroup :: Lens' CreativeGroupsInsert' CreativeGroup
cgiCreativeGroup
  = lens _cgiCreativeGroup
      (\ s a -> s{_cgiCreativeGroup = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
cgiKey :: Lens' CreativeGroupsInsert' (Maybe Key)
cgiKey = lens _cgiKey (\ s a -> s{_cgiKey = a})

-- | OAuth 2.0 token for the current user.
cgiOAuthToken :: Lens' CreativeGroupsInsert' (Maybe OAuthToken)
cgiOAuthToken
  = lens _cgiOAuthToken
      (\ s a -> s{_cgiOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
cgiFields :: Lens' CreativeGroupsInsert' (Maybe Text)
cgiFields
  = lens _cgiFields (\ s a -> s{_cgiFields = a})

instance GoogleAuth CreativeGroupsInsert' where
        authKey = cgiKey . _Just
        authToken = cgiOAuthToken . _Just

instance GoogleRequest CreativeGroupsInsert' where
        type Rs CreativeGroupsInsert' = CreativeGroup
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u CreativeGroupsInsert'{..}
          = go _cgiProfileId _cgiQuotaUser
              (Just _cgiPrettyPrint)
              _cgiUserIP
              _cgiFields
              _cgiKey
              _cgiOAuthToken
              (Just AltJSON)
              _cgiCreativeGroup
          where go
                  = clientWithRoute
                      (Proxy :: Proxy CreativeGroupsInsertResource)
                      r
                      u
