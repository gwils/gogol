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
-- Module      : Network.Google.Resource.Genomics.AnnotationSets.Create
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Creates a new annotation set. Caller must have WRITE permission for the
-- associated dataset.
--
-- /See:/ <https://developers.google.com/genomics/v1beta2/reference Genomics API Reference> for @GenomicsAnnotationSetsCreate@.
module Network.Google.Resource.Genomics.AnnotationSets.Create
    (
    -- * REST Resource
      AnnotationSetsCreateResource

    -- * Creating a Request
    , annotationSetsCreate'
    , AnnotationSetsCreate'

    -- * Request Lenses
    , ascQuotaUser
    , ascPrettyPrint
    , ascUserIP
    , ascKey
    , ascAnnotationSet
    , ascOAuthToken
    , ascFields
    ) where

import           Network.Google.Genomics.Types
import           Network.Google.Prelude

-- | A resource alias for @GenomicsAnnotationSetsCreate@ which the
-- 'AnnotationSetsCreate'' request conforms to.
type AnnotationSetsCreateResource =
     "annotationSets" :>
       QueryParam "quotaUser" Text :>
         QueryParam "prettyPrint" Bool :>
           QueryParam "userIp" Text :>
             QueryParam "fields" Text :>
               QueryParam "key" Key :>
                 QueryParam "oauth_token" OAuthToken :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] AnnotationSet :>
                       Post '[JSON] AnnotationSet

-- | Creates a new annotation set. Caller must have WRITE permission for the
-- associated dataset.
--
-- /See:/ 'annotationSetsCreate'' smart constructor.
data AnnotationSetsCreate' = AnnotationSetsCreate'
    { _ascQuotaUser     :: !(Maybe Text)
    , _ascPrettyPrint   :: !Bool
    , _ascUserIP        :: !(Maybe Text)
    , _ascKey           :: !(Maybe Key)
    , _ascAnnotationSet :: !AnnotationSet
    , _ascOAuthToken    :: !(Maybe OAuthToken)
    , _ascFields        :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AnnotationSetsCreate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ascQuotaUser'
--
-- * 'ascPrettyPrint'
--
-- * 'ascUserIP'
--
-- * 'ascKey'
--
-- * 'ascAnnotationSet'
--
-- * 'ascOAuthToken'
--
-- * 'ascFields'
annotationSetsCreate'
    :: AnnotationSet -- ^ 'AnnotationSet'
    -> AnnotationSetsCreate'
annotationSetsCreate' pAscAnnotationSet_ =
    AnnotationSetsCreate'
    { _ascQuotaUser = Nothing
    , _ascPrettyPrint = True
    , _ascUserIP = Nothing
    , _ascKey = Nothing
    , _ascAnnotationSet = pAscAnnotationSet_
    , _ascOAuthToken = Nothing
    , _ascFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
ascQuotaUser :: Lens' AnnotationSetsCreate' (Maybe Text)
ascQuotaUser
  = lens _ascQuotaUser (\ s a -> s{_ascQuotaUser = a})

-- | Returns response with indentations and line breaks.
ascPrettyPrint :: Lens' AnnotationSetsCreate' Bool
ascPrettyPrint
  = lens _ascPrettyPrint
      (\ s a -> s{_ascPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
ascUserIP :: Lens' AnnotationSetsCreate' (Maybe Text)
ascUserIP
  = lens _ascUserIP (\ s a -> s{_ascUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
ascKey :: Lens' AnnotationSetsCreate' (Maybe Key)
ascKey = lens _ascKey (\ s a -> s{_ascKey = a})

-- | Multipart request metadata.
ascAnnotationSet :: Lens' AnnotationSetsCreate' AnnotationSet
ascAnnotationSet
  = lens _ascAnnotationSet
      (\ s a -> s{_ascAnnotationSet = a})

-- | OAuth 2.0 token for the current user.
ascOAuthToken :: Lens' AnnotationSetsCreate' (Maybe OAuthToken)
ascOAuthToken
  = lens _ascOAuthToken
      (\ s a -> s{_ascOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
ascFields :: Lens' AnnotationSetsCreate' (Maybe Text)
ascFields
  = lens _ascFields (\ s a -> s{_ascFields = a})

instance GoogleAuth AnnotationSetsCreate' where
        authKey = ascKey . _Just
        authToken = ascOAuthToken . _Just

instance GoogleRequest AnnotationSetsCreate' where
        type Rs AnnotationSetsCreate' = AnnotationSet
        request = requestWithRoute defReq genomicsURL
        requestWithRoute r u AnnotationSetsCreate'{..}
          = go _ascQuotaUser (Just _ascPrettyPrint) _ascUserIP
              _ascFields
              _ascKey
              _ascOAuthToken
              (Just AltJSON)
              _ascAnnotationSet
          where go
                  = clientWithRoute
                      (Proxy :: Proxy AnnotationSetsCreateResource)
                      r
                      u
