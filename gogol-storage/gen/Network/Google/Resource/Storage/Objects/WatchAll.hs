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
-- Module      : Network.Google.Resource.Storage.Objects.WatchAll
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Watch for changes on all objects in a bucket.
--
-- /See:/ <https://developers.google.com/storage/docs/json_api/ Cloud Storage API Reference> for @StorageObjectsWatchAll@.
module Network.Google.Resource.Storage.Objects.WatchAll
    (
    -- * REST Resource
      ObjectsWatchAllResource

    -- * Creating a Request
    , objectsWatchAll'
    , ObjectsWatchAll'

    -- * Request Lenses
    , owaQuotaUser
    , owaPrettyPrint
    , owaPrefix
    , owaUserIP
    , owaChannel
    , owaBucket
    , owaVersions
    , owaKey
    , owaProjection
    , owaPageToken
    , owaOAuthToken
    , owaDelimiter
    , owaMaxResults
    , owaFields
    ) where

import           Network.Google.Prelude
import           Network.Google.Storage.Types

-- | A resource alias for @StorageObjectsWatchAll@ which the
-- 'ObjectsWatchAll'' request conforms to.
type ObjectsWatchAllResource =
     "b" :>
       Capture "bucket" Text :>
         "o" :>
           "watch" :>
             QueryParam "delimiter" Text :>
               QueryParam "maxResults" Word32 :>
                 QueryParam "pageToken" Text :>
                   QueryParam "prefix" Text :>
                     QueryParam "projection"
                       StorageObjectsWatchAllProjection
                       :>
                       QueryParam "versions" Bool :>
                         QueryParam "quotaUser" Text :>
                           QueryParam "prettyPrint" Bool :>
                             QueryParam "userIp" Text :>
                               QueryParam "fields" Text :>
                                 QueryParam "key" Key :>
                                   QueryParam "oauth_token" OAuthToken :>
                                     QueryParam "alt" AltJSON :>
                                       ReqBody '[JSON] Channel :>
                                         Post '[JSON] Channel

-- | Watch for changes on all objects in a bucket.
--
-- /See:/ 'objectsWatchAll'' smart constructor.
data ObjectsWatchAll' = ObjectsWatchAll'
    { _owaQuotaUser   :: !(Maybe Text)
    , _owaPrettyPrint :: !Bool
    , _owaPrefix      :: !(Maybe Text)
    , _owaUserIP      :: !(Maybe Text)
    , _owaChannel     :: !Channel
    , _owaBucket      :: !Text
    , _owaVersions    :: !(Maybe Bool)
    , _owaKey         :: !(Maybe Key)
    , _owaProjection  :: !(Maybe StorageObjectsWatchAllProjection)
    , _owaPageToken   :: !(Maybe Text)
    , _owaOAuthToken  :: !(Maybe OAuthToken)
    , _owaDelimiter   :: !(Maybe Text)
    , _owaMaxResults  :: !(Maybe Word32)
    , _owaFields      :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ObjectsWatchAll'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'owaQuotaUser'
--
-- * 'owaPrettyPrint'
--
-- * 'owaPrefix'
--
-- * 'owaUserIP'
--
-- * 'owaChannel'
--
-- * 'owaBucket'
--
-- * 'owaVersions'
--
-- * 'owaKey'
--
-- * 'owaProjection'
--
-- * 'owaPageToken'
--
-- * 'owaOAuthToken'
--
-- * 'owaDelimiter'
--
-- * 'owaMaxResults'
--
-- * 'owaFields'
objectsWatchAll'
    :: Channel -- ^ 'Channel'
    -> Text -- ^ 'bucket'
    -> ObjectsWatchAll'
objectsWatchAll' pOwaChannel_ pOwaBucket_ =
    ObjectsWatchAll'
    { _owaQuotaUser = Nothing
    , _owaPrettyPrint = True
    , _owaPrefix = Nothing
    , _owaUserIP = Nothing
    , _owaChannel = pOwaChannel_
    , _owaBucket = pOwaBucket_
    , _owaVersions = Nothing
    , _owaKey = Nothing
    , _owaProjection = Nothing
    , _owaPageToken = Nothing
    , _owaOAuthToken = Nothing
    , _owaDelimiter = Nothing
    , _owaMaxResults = Nothing
    , _owaFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
owaQuotaUser :: Lens' ObjectsWatchAll' (Maybe Text)
owaQuotaUser
  = lens _owaQuotaUser (\ s a -> s{_owaQuotaUser = a})

-- | Returns response with indentations and line breaks.
owaPrettyPrint :: Lens' ObjectsWatchAll' Bool
owaPrettyPrint
  = lens _owaPrettyPrint
      (\ s a -> s{_owaPrettyPrint = a})

-- | Filter results to objects whose names begin with this prefix.
owaPrefix :: Lens' ObjectsWatchAll' (Maybe Text)
owaPrefix
  = lens _owaPrefix (\ s a -> s{_owaPrefix = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
owaUserIP :: Lens' ObjectsWatchAll' (Maybe Text)
owaUserIP
  = lens _owaUserIP (\ s a -> s{_owaUserIP = a})

-- | Multipart request metadata.
owaChannel :: Lens' ObjectsWatchAll' Channel
owaChannel
  = lens _owaChannel (\ s a -> s{_owaChannel = a})

-- | Name of the bucket in which to look for objects.
owaBucket :: Lens' ObjectsWatchAll' Text
owaBucket
  = lens _owaBucket (\ s a -> s{_owaBucket = a})

-- | If true, lists all versions of a file as distinct results.
owaVersions :: Lens' ObjectsWatchAll' (Maybe Bool)
owaVersions
  = lens _owaVersions (\ s a -> s{_owaVersions = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
owaKey :: Lens' ObjectsWatchAll' (Maybe Key)
owaKey = lens _owaKey (\ s a -> s{_owaKey = a})

-- | Set of properties to return. Defaults to noAcl.
owaProjection :: Lens' ObjectsWatchAll' (Maybe StorageObjectsWatchAllProjection)
owaProjection
  = lens _owaProjection
      (\ s a -> s{_owaProjection = a})

-- | A previously-returned page token representing part of the larger set of
-- results to view.
owaPageToken :: Lens' ObjectsWatchAll' (Maybe Text)
owaPageToken
  = lens _owaPageToken (\ s a -> s{_owaPageToken = a})

-- | OAuth 2.0 token for the current user.
owaOAuthToken :: Lens' ObjectsWatchAll' (Maybe OAuthToken)
owaOAuthToken
  = lens _owaOAuthToken
      (\ s a -> s{_owaOAuthToken = a})

-- | Returns results in a directory-like mode. items will contain only
-- objects whose names, aside from the prefix, do not contain delimiter.
-- Objects whose names, aside from the prefix, contain delimiter will have
-- their name, truncated after the delimiter, returned in prefixes.
-- Duplicate prefixes are omitted.
owaDelimiter :: Lens' ObjectsWatchAll' (Maybe Text)
owaDelimiter
  = lens _owaDelimiter (\ s a -> s{_owaDelimiter = a})

-- | Maximum number of items plus prefixes to return. As duplicate prefixes
-- are omitted, fewer total results may be returned than requested.
owaMaxResults :: Lens' ObjectsWatchAll' (Maybe Word32)
owaMaxResults
  = lens _owaMaxResults
      (\ s a -> s{_owaMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
owaFields :: Lens' ObjectsWatchAll' (Maybe Text)
owaFields
  = lens _owaFields (\ s a -> s{_owaFields = a})

instance GoogleAuth ObjectsWatchAll' where
        authKey = owaKey . _Just
        authToken = owaOAuthToken . _Just

instance GoogleRequest ObjectsWatchAll' where
        type Rs ObjectsWatchAll' = Channel
        request = requestWithRoute defReq storageURL
        requestWithRoute r u ObjectsWatchAll'{..}
          = go _owaDelimiter _owaMaxResults _owaPageToken
              _owaPrefix
              _owaProjection
              _owaVersions
              _owaBucket
              _owaQuotaUser
              (Just _owaPrettyPrint)
              _owaUserIP
              _owaFields
              _owaKey
              _owaOAuthToken
              (Just AltJSON)
              _owaChannel
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ObjectsWatchAllResource)
                      r
                      u
