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
-- Module      : Network.Google.Resource.Drive.Comments.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Creates a new comment on the given file.
--
-- /See:/ <https://developers.google.com/drive/ Drive API Reference> for @DriveCommentsInsert@.
module Network.Google.Resource.Drive.Comments.Insert
    (
    -- * REST Resource
      CommentsInsertResource

    -- * Creating a Request
    , commentsInsert'
    , CommentsInsert'

    -- * Request Lenses
    , ciQuotaUser
    , ciPrettyPrint
    , ciUserIP
    , ciKey
    , ciFileId
    , ciOAuthToken
    , ciComment
    , ciFields
    ) where

import           Network.Google.Drive.Types
import           Network.Google.Prelude

-- | A resource alias for @DriveCommentsInsert@ which the
-- 'CommentsInsert'' request conforms to.
type CommentsInsertResource =
     "files" :>
       Capture "fileId" Text :>
         "comments" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "fields" Text :>
                   QueryParam "key" Key :>
                     QueryParam "oauth_token" OAuthToken :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] Comment :> Post '[JSON] Comment

-- | Creates a new comment on the given file.
--
-- /See:/ 'commentsInsert'' smart constructor.
data CommentsInsert' = CommentsInsert'
    { _ciQuotaUser   :: !(Maybe Text)
    , _ciPrettyPrint :: !Bool
    , _ciUserIP      :: !(Maybe Text)
    , _ciKey         :: !(Maybe Key)
    , _ciFileId      :: !Text
    , _ciOAuthToken  :: !(Maybe OAuthToken)
    , _ciComment     :: !Comment
    , _ciFields      :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CommentsInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ciQuotaUser'
--
-- * 'ciPrettyPrint'
--
-- * 'ciUserIP'
--
-- * 'ciKey'
--
-- * 'ciFileId'
--
-- * 'ciOAuthToken'
--
-- * 'ciComment'
--
-- * 'ciFields'
commentsInsert'
    :: Text -- ^ 'fileId'
    -> Comment -- ^ 'Comment'
    -> CommentsInsert'
commentsInsert' pCiFileId_ pCiComment_ =
    CommentsInsert'
    { _ciQuotaUser = Nothing
    , _ciPrettyPrint = True
    , _ciUserIP = Nothing
    , _ciKey = Nothing
    , _ciFileId = pCiFileId_
    , _ciOAuthToken = Nothing
    , _ciComment = pCiComment_
    , _ciFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
ciQuotaUser :: Lens' CommentsInsert' (Maybe Text)
ciQuotaUser
  = lens _ciQuotaUser (\ s a -> s{_ciQuotaUser = a})

-- | Returns response with indentations and line breaks.
ciPrettyPrint :: Lens' CommentsInsert' Bool
ciPrettyPrint
  = lens _ciPrettyPrint
      (\ s a -> s{_ciPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
ciUserIP :: Lens' CommentsInsert' (Maybe Text)
ciUserIP = lens _ciUserIP (\ s a -> s{_ciUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
ciKey :: Lens' CommentsInsert' (Maybe Key)
ciKey = lens _ciKey (\ s a -> s{_ciKey = a})

-- | The ID of the file.
ciFileId :: Lens' CommentsInsert' Text
ciFileId = lens _ciFileId (\ s a -> s{_ciFileId = a})

-- | OAuth 2.0 token for the current user.
ciOAuthToken :: Lens' CommentsInsert' (Maybe OAuthToken)
ciOAuthToken
  = lens _ciOAuthToken (\ s a -> s{_ciOAuthToken = a})

-- | Multipart request metadata.
ciComment :: Lens' CommentsInsert' Comment
ciComment
  = lens _ciComment (\ s a -> s{_ciComment = a})

-- | Selector specifying which fields to include in a partial response.
ciFields :: Lens' CommentsInsert' (Maybe Text)
ciFields = lens _ciFields (\ s a -> s{_ciFields = a})

instance GoogleAuth CommentsInsert' where
        authKey = ciKey . _Just
        authToken = ciOAuthToken . _Just

instance GoogleRequest CommentsInsert' where
        type Rs CommentsInsert' = Comment
        request = requestWithRoute defReq driveURL
        requestWithRoute r u CommentsInsert'{..}
          = go _ciFileId _ciQuotaUser (Just _ciPrettyPrint)
              _ciUserIP
              _ciFields
              _ciKey
              _ciOAuthToken
              (Just AltJSON)
              _ciComment
          where go
                  = clientWithRoute
                      (Proxy :: Proxy CommentsInsertResource)
                      r
                      u
