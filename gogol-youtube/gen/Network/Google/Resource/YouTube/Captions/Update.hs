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
-- Module      : Network.Google.Resource.YouTube.Captions.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates a caption track. When updating a caption track, you can change
-- the track\'s draft status, upload a new caption file for the track, or
-- both.
--
-- /See:/ <https://developers.google.com/youtube/v3 YouTube Data API Reference> for @YouTubeCaptionsUpdate@.
module Network.Google.Resource.YouTube.Captions.Update
    (
    -- * REST Resource
      CaptionsUpdateResource

    -- * Creating a Request
    , captionsUpdate'
    , CaptionsUpdate'

    -- * Request Lenses
    , capOnBehalfOf
    , capQuotaUser
    , capPart
    , capPrettyPrint
    , capUserIP
    , capCaption
    , capMedia
    , capOnBehalfOfContentOwner
    , capKey
    , capSync
    , capOAuthToken
    , capFields
    ) where

import           Network.Google.Prelude
import           Network.Google.YouTube.Types

-- | A resource alias for @YouTubeCaptionsUpdate@ which the
-- 'CaptionsUpdate'' request conforms to.
type CaptionsUpdateResource =
     "captions" :>
       QueryParam "onBehalfOf" Text :>
         QueryParam "onBehalfOfContentOwner" Text :>
           QueryParam "sync" Bool :>
             QueryParam "part" Text :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "key" Key :>
                         QueryParam "oauth_token" OAuthToken :>
                           QueryParam "alt" AltJSON :>
                             MultipartRelated '[JSON] Caption Body :>
                               Put '[JSON] Caption

-- | Updates a caption track. When updating a caption track, you can change
-- the track\'s draft status, upload a new caption file for the track, or
-- both.
--
-- /See:/ 'captionsUpdate'' smart constructor.
data CaptionsUpdate' = CaptionsUpdate'
    { _capOnBehalfOf             :: !(Maybe Text)
    , _capQuotaUser              :: !(Maybe Text)
    , _capPart                   :: !Text
    , _capPrettyPrint            :: !Bool
    , _capUserIP                 :: !(Maybe Text)
    , _capCaption                :: !Caption
    , _capMedia                  :: !Body
    , _capOnBehalfOfContentOwner :: !(Maybe Text)
    , _capKey                    :: !(Maybe Key)
    , _capSync                   :: !(Maybe Bool)
    , _capOAuthToken             :: !(Maybe OAuthToken)
    , _capFields                 :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CaptionsUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'capOnBehalfOf'
--
-- * 'capQuotaUser'
--
-- * 'capPart'
--
-- * 'capPrettyPrint'
--
-- * 'capUserIP'
--
-- * 'capCaption'
--
-- * 'capMedia'
--
-- * 'capOnBehalfOfContentOwner'
--
-- * 'capKey'
--
-- * 'capSync'
--
-- * 'capOAuthToken'
--
-- * 'capFields'
captionsUpdate'
    :: Text -- ^ 'part'
    -> Caption -- ^ 'Caption'
    -> Body -- ^ 'media'
    -> CaptionsUpdate'
captionsUpdate' pCapPart_ pCapCaption_ pCapMedia_ =
    CaptionsUpdate'
    { _capOnBehalfOf = Nothing
    , _capQuotaUser = Nothing
    , _capPart = pCapPart_
    , _capPrettyPrint = True
    , _capUserIP = Nothing
    , _capCaption = pCapCaption_
    , _capMedia = pCapMedia_
    , _capOnBehalfOfContentOwner = Nothing
    , _capKey = Nothing
    , _capSync = Nothing
    , _capOAuthToken = Nothing
    , _capFields = Nothing
    }

-- | ID of the Google+ Page for the channel that the request is be on behalf
-- of
capOnBehalfOf :: Lens' CaptionsUpdate' (Maybe Text)
capOnBehalfOf
  = lens _capOnBehalfOf
      (\ s a -> s{_capOnBehalfOf = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
capQuotaUser :: Lens' CaptionsUpdate' (Maybe Text)
capQuotaUser
  = lens _capQuotaUser (\ s a -> s{_capQuotaUser = a})

-- | The part parameter serves two purposes in this operation. It identifies
-- the properties that the write operation will set as well as the
-- properties that the API response will include. Set the property value to
-- snippet if you are updating the track\'s draft status. Otherwise, set
-- the property value to id.
capPart :: Lens' CaptionsUpdate' Text
capPart = lens _capPart (\ s a -> s{_capPart = a})

-- | Returns response with indentations and line breaks.
capPrettyPrint :: Lens' CaptionsUpdate' Bool
capPrettyPrint
  = lens _capPrettyPrint
      (\ s a -> s{_capPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
capUserIP :: Lens' CaptionsUpdate' (Maybe Text)
capUserIP
  = lens _capUserIP (\ s a -> s{_capUserIP = a})

-- | Multipart request metadata.
capCaption :: Lens' CaptionsUpdate' Caption
capCaption
  = lens _capCaption (\ s a -> s{_capCaption = a})

capMedia :: Lens' CaptionsUpdate' Body
capMedia = lens _capMedia (\ s a -> s{_capMedia = a})

-- | Note: This parameter is intended exclusively for YouTube content
-- partners. The onBehalfOfContentOwner parameter indicates that the
-- request\'s authorization credentials identify a YouTube CMS user who is
-- acting on behalf of the content owner specified in the parameter value.
-- This parameter is intended for YouTube content partners that own and
-- manage many different YouTube channels. It allows content owners to
-- authenticate once and get access to all their video and channel data,
-- without having to provide authentication credentials for each individual
-- channel. The actual CMS account that the user authenticates with must be
-- linked to the specified YouTube content owner.
capOnBehalfOfContentOwner :: Lens' CaptionsUpdate' (Maybe Text)
capOnBehalfOfContentOwner
  = lens _capOnBehalfOfContentOwner
      (\ s a -> s{_capOnBehalfOfContentOwner = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
capKey :: Lens' CaptionsUpdate' (Maybe Key)
capKey = lens _capKey (\ s a -> s{_capKey = a})

-- | Note: The API server only processes the parameter value if the request
-- contains an updated caption file. The sync parameter indicates whether
-- YouTube should automatically synchronize the caption file with the audio
-- track of the video. If you set the value to true, YouTube will
-- automatically synchronize the caption track with the audio track.
capSync :: Lens' CaptionsUpdate' (Maybe Bool)
capSync = lens _capSync (\ s a -> s{_capSync = a})

-- | OAuth 2.0 token for the current user.
capOAuthToken :: Lens' CaptionsUpdate' (Maybe OAuthToken)
capOAuthToken
  = lens _capOAuthToken
      (\ s a -> s{_capOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
capFields :: Lens' CaptionsUpdate' (Maybe Text)
capFields
  = lens _capFields (\ s a -> s{_capFields = a})

instance GoogleAuth CaptionsUpdate' where
        authKey = capKey . _Just
        authToken = capOAuthToken . _Just

instance GoogleRequest CaptionsUpdate' where
        type Rs CaptionsUpdate' = Caption
        request = requestWithRoute defReq youTubeURL
        requestWithRoute r u CaptionsUpdate'{..}
          = go _capMedia _capOnBehalfOf
              _capOnBehalfOfContentOwner
              _capSync
              (Just _capPart)
              _capQuotaUser
              (Just _capPrettyPrint)
              _capUserIP
              _capFields
              _capKey
              _capOAuthToken
              (Just AltJSON)
              _capCaption
          where go
                  = clientWithRoute
                      (Proxy :: Proxy CaptionsUpdateResource)
                      r
                      u
