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
-- Module      : Network.Google.Resource.Compute.GlobalAddresses.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Deletes the specified address resource.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @ComputeGlobalAddressesDelete@.
module Network.Google.Resource.Compute.GlobalAddresses.Delete
    (
    -- * REST Resource
      GlobalAddressesDeleteResource

    -- * Creating a Request
    , globalAddressesDelete'
    , GlobalAddressesDelete'

    -- * Request Lenses
    , gadQuotaUser
    , gadPrettyPrint
    , gadProject
    , gadUserIP
    , gadAddress
    , gadKey
    , gadOAuthToken
    , gadFields
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @ComputeGlobalAddressesDelete@ which the
-- 'GlobalAddressesDelete'' request conforms to.
type GlobalAddressesDeleteResource =
     Capture "project" Text :>
       "global" :>
         "addresses" :>
           Capture "address" Text :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "key" Key :>
                       QueryParam "oauth_token" OAuthToken :>
                         QueryParam "alt" AltJSON :> Delete '[JSON] Operation

-- | Deletes the specified address resource.
--
-- /See:/ 'globalAddressesDelete'' smart constructor.
data GlobalAddressesDelete' = GlobalAddressesDelete'
    { _gadQuotaUser   :: !(Maybe Text)
    , _gadPrettyPrint :: !Bool
    , _gadProject     :: !Text
    , _gadUserIP      :: !(Maybe Text)
    , _gadAddress     :: !Text
    , _gadKey         :: !(Maybe Key)
    , _gadOAuthToken  :: !(Maybe OAuthToken)
    , _gadFields      :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'GlobalAddressesDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gadQuotaUser'
--
-- * 'gadPrettyPrint'
--
-- * 'gadProject'
--
-- * 'gadUserIP'
--
-- * 'gadAddress'
--
-- * 'gadKey'
--
-- * 'gadOAuthToken'
--
-- * 'gadFields'
globalAddressesDelete'
    :: Text -- ^ 'project'
    -> Text -- ^ 'address'
    -> GlobalAddressesDelete'
globalAddressesDelete' pGadProject_ pGadAddress_ =
    GlobalAddressesDelete'
    { _gadQuotaUser = Nothing
    , _gadPrettyPrint = True
    , _gadProject = pGadProject_
    , _gadUserIP = Nothing
    , _gadAddress = pGadAddress_
    , _gadKey = Nothing
    , _gadOAuthToken = Nothing
    , _gadFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
gadQuotaUser :: Lens' GlobalAddressesDelete' (Maybe Text)
gadQuotaUser
  = lens _gadQuotaUser (\ s a -> s{_gadQuotaUser = a})

-- | Returns response with indentations and line breaks.
gadPrettyPrint :: Lens' GlobalAddressesDelete' Bool
gadPrettyPrint
  = lens _gadPrettyPrint
      (\ s a -> s{_gadPrettyPrint = a})

-- | Project ID for this request.
gadProject :: Lens' GlobalAddressesDelete' Text
gadProject
  = lens _gadProject (\ s a -> s{_gadProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
gadUserIP :: Lens' GlobalAddressesDelete' (Maybe Text)
gadUserIP
  = lens _gadUserIP (\ s a -> s{_gadUserIP = a})

-- | Name of the address resource to delete.
gadAddress :: Lens' GlobalAddressesDelete' Text
gadAddress
  = lens _gadAddress (\ s a -> s{_gadAddress = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
gadKey :: Lens' GlobalAddressesDelete' (Maybe Key)
gadKey = lens _gadKey (\ s a -> s{_gadKey = a})

-- | OAuth 2.0 token for the current user.
gadOAuthToken :: Lens' GlobalAddressesDelete' (Maybe OAuthToken)
gadOAuthToken
  = lens _gadOAuthToken
      (\ s a -> s{_gadOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
gadFields :: Lens' GlobalAddressesDelete' (Maybe Text)
gadFields
  = lens _gadFields (\ s a -> s{_gadFields = a})

instance GoogleAuth GlobalAddressesDelete' where
        authKey = gadKey . _Just
        authToken = gadOAuthToken . _Just

instance GoogleRequest GlobalAddressesDelete' where
        type Rs GlobalAddressesDelete' = Operation
        request = requestWithRoute defReq computeURL
        requestWithRoute r u GlobalAddressesDelete'{..}
          = go _gadProject _gadAddress _gadQuotaUser
              (Just _gadPrettyPrint)
              _gadUserIP
              _gadFields
              _gadKey
              _gadOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy GlobalAddressesDeleteResource)
                      r
                      u
