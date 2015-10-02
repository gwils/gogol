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
-- Module      : Network.Google.Resource.Compute.URLMaps.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Update the entire content of the UrlMap resource.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @ComputeURLMapsUpdate@.
module Network.Google.Resource.Compute.URLMaps.Update
    (
    -- * REST Resource
      URLMapsUpdateResource

    -- * Creating a Request
    , urlMapsUpdate'
    , URLMapsUpdate'

    -- * Request Lenses
    , umuQuotaUser
    , umuURLMap
    , umuPrettyPrint
    , umuURLMap
    , umuProject
    , umuUserIP
    , umuKey
    , umuOAuthToken
    , umuFields
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @ComputeURLMapsUpdate@ which the
-- 'URLMapsUpdate'' request conforms to.
type URLMapsUpdateResource =
     Capture "project" Text :>
       "global" :>
         "urlMaps" :>
           Capture "urlMap" Text :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "key" Key :>
                       QueryParam "oauth_token" OAuthToken :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] URLMap :> Put '[JSON] Operation

-- | Update the entire content of the UrlMap resource.
--
-- /See:/ 'urlMapsUpdate'' smart constructor.
data URLMapsUpdate' = URLMapsUpdate'
    { _umuQuotaUser   :: !(Maybe Text)
    , _umuURLMap      :: !Text
    , _umuPrettyPrint :: !Bool
    , _umuURLMap      :: !URLMap
    , _umuProject     :: !Text
    , _umuUserIP      :: !(Maybe Text)
    , _umuKey         :: !(Maybe Key)
    , _umuOAuthToken  :: !(Maybe OAuthToken)
    , _umuFields      :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'URLMapsUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'umuQuotaUser'
--
-- * 'umuURLMap'
--
-- * 'umuPrettyPrint'
--
-- * 'umuURLMap'
--
-- * 'umuProject'
--
-- * 'umuUserIP'
--
-- * 'umuKey'
--
-- * 'umuOAuthToken'
--
-- * 'umuFields'
urlMapsUpdate'
    :: Text -- ^ 'urlMap'
    -> URLMap -- ^ 'URLMap'
    -> Text -- ^ 'project'
    -> URLMapsUpdate'
urlMapsUpdate' pUmuURLMap_ pUmuURLMap_ pUmuProject_ =
    URLMapsUpdate'
    { _umuQuotaUser = Nothing
    , _umuURLMap = pUmuURLMap_
    , _umuPrettyPrint = True
    , _umuURLMap = pUmuURLMap_
    , _umuProject = pUmuProject_
    , _umuUserIP = Nothing
    , _umuKey = Nothing
    , _umuOAuthToken = Nothing
    , _umuFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
umuQuotaUser :: Lens' URLMapsUpdate' (Maybe Text)
umuQuotaUser
  = lens _umuQuotaUser (\ s a -> s{_umuQuotaUser = a})

-- | Name of the UrlMap resource to update.
umuURLMap :: Lens' URLMapsUpdate' Text
umuURLMap
  = lens _umuURLMap (\ s a -> s{_umuURLMap = a})

-- | Returns response with indentations and line breaks.
umuPrettyPrint :: Lens' URLMapsUpdate' Bool
umuPrettyPrint
  = lens _umuPrettyPrint
      (\ s a -> s{_umuPrettyPrint = a})

-- | Multipart request metadata.
umuURLMap :: Lens' URLMapsUpdate' URLMap
umuURLMap
  = lens _umuURLMap (\ s a -> s{_umuURLMap = a})

-- | Name of the project scoping this request.
umuProject :: Lens' URLMapsUpdate' Text
umuProject
  = lens _umuProject (\ s a -> s{_umuProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
umuUserIP :: Lens' URLMapsUpdate' (Maybe Text)
umuUserIP
  = lens _umuUserIP (\ s a -> s{_umuUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
umuKey :: Lens' URLMapsUpdate' (Maybe Key)
umuKey = lens _umuKey (\ s a -> s{_umuKey = a})

-- | OAuth 2.0 token for the current user.
umuOAuthToken :: Lens' URLMapsUpdate' (Maybe OAuthToken)
umuOAuthToken
  = lens _umuOAuthToken
      (\ s a -> s{_umuOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
umuFields :: Lens' URLMapsUpdate' (Maybe Text)
umuFields
  = lens _umuFields (\ s a -> s{_umuFields = a})

instance GoogleAuth URLMapsUpdate' where
        authKey = umuKey . _Just
        authToken = umuOAuthToken . _Just

instance GoogleRequest URLMapsUpdate' where
        type Rs URLMapsUpdate' = Operation
        request = requestWithRoute defReq computeURL
        requestWithRoute r u URLMapsUpdate'{..}
          = go _umuProject _umuURLMap _umuQuotaUser
              (Just _umuPrettyPrint)
              _umuUserIP
              _umuFields
              _umuKey
              _umuOAuthToken
              (Just AltJSON)
              _umuURLMap
          where go
                  = clientWithRoute
                      (Proxy :: Proxy URLMapsUpdateResource)
                      r
                      u
