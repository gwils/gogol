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
-- Module      : Network.Google.Resource.AdExchangeBuyer.PretargetingConfig.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves a list of the authenticated user\'s pretargeting
-- configurations.
--
-- /See:/ <https://developers.google.com/ad-exchange/buyer-rest Ad Exchange Buyer API Reference> for @AdexchangebuyerPretargetingConfigList@.
module Network.Google.Resource.AdExchangeBuyer.PretargetingConfig.List
    (
    -- * REST Resource
      PretargetingConfigListResource

    -- * Creating a Request
    , pretargetingConfigList'
    , PretargetingConfigList'

    -- * Request Lenses
    , pclQuotaUser
    , pclPrettyPrint
    , pclUserIP
    , pclAccountId
    , pclKey
    , pclOAuthToken
    , pclFields
    ) where

import           Network.Google.AdExchangeBuyer.Types
import           Network.Google.Prelude

-- | A resource alias for @AdexchangebuyerPretargetingConfigList@ which the
-- 'PretargetingConfigList'' request conforms to.
type PretargetingConfigListResource =
     "pretargetingconfigs" :>
       Capture "accountId" Int64 :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "fields" Text :>
                 QueryParam "key" Key :>
                   QueryParam "oauth_token" OAuthToken :>
                     QueryParam "alt" AltJSON :>
                       Get '[JSON] PretargetingConfigList

-- | Retrieves a list of the authenticated user\'s pretargeting
-- configurations.
--
-- /See:/ 'pretargetingConfigList'' smart constructor.
data PretargetingConfigList' = PretargetingConfigList'
    { _pclQuotaUser   :: !(Maybe Text)
    , _pclPrettyPrint :: !Bool
    , _pclUserIP      :: !(Maybe Text)
    , _pclAccountId   :: !Int64
    , _pclKey         :: !(Maybe Key)
    , _pclOAuthToken  :: !(Maybe OAuthToken)
    , _pclFields      :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'PretargetingConfigList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pclQuotaUser'
--
-- * 'pclPrettyPrint'
--
-- * 'pclUserIP'
--
-- * 'pclAccountId'
--
-- * 'pclKey'
--
-- * 'pclOAuthToken'
--
-- * 'pclFields'
pretargetingConfigList'
    :: Int64 -- ^ 'accountId'
    -> PretargetingConfigList'
pretargetingConfigList' pPclAccountId_ =
    PretargetingConfigList'
    { _pclQuotaUser = Nothing
    , _pclPrettyPrint = True
    , _pclUserIP = Nothing
    , _pclAccountId = pPclAccountId_
    , _pclKey = Nothing
    , _pclOAuthToken = Nothing
    , _pclFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
pclQuotaUser :: Lens' PretargetingConfigList' (Maybe Text)
pclQuotaUser
  = lens _pclQuotaUser (\ s a -> s{_pclQuotaUser = a})

-- | Returns response with indentations and line breaks.
pclPrettyPrint :: Lens' PretargetingConfigList' Bool
pclPrettyPrint
  = lens _pclPrettyPrint
      (\ s a -> s{_pclPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
pclUserIP :: Lens' PretargetingConfigList' (Maybe Text)
pclUserIP
  = lens _pclUserIP (\ s a -> s{_pclUserIP = a})

-- | The account id to get the pretargeting configs for.
pclAccountId :: Lens' PretargetingConfigList' Int64
pclAccountId
  = lens _pclAccountId (\ s a -> s{_pclAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
pclKey :: Lens' PretargetingConfigList' (Maybe Key)
pclKey = lens _pclKey (\ s a -> s{_pclKey = a})

-- | OAuth 2.0 token for the current user.
pclOAuthToken :: Lens' PretargetingConfigList' (Maybe OAuthToken)
pclOAuthToken
  = lens _pclOAuthToken
      (\ s a -> s{_pclOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
pclFields :: Lens' PretargetingConfigList' (Maybe Text)
pclFields
  = lens _pclFields (\ s a -> s{_pclFields = a})

instance GoogleAuth PretargetingConfigList' where
        authKey = pclKey . _Just
        authToken = pclOAuthToken . _Just

instance GoogleRequest PretargetingConfigList' where
        type Rs PretargetingConfigList' =
             PretargetingConfigList
        request = requestWithRoute defReq adExchangeBuyerURL
        requestWithRoute r u PretargetingConfigList'{..}
          = go _pclAccountId _pclQuotaUser
              (Just _pclPrettyPrint)
              _pclUserIP
              _pclFields
              _pclKey
              _pclOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy PretargetingConfigListResource)
                      r
                      u
