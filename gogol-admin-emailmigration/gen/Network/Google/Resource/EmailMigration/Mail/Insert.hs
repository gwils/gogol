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
-- Module      : Network.Google.Resource.EmailMigration.Mail.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Insert Mail into Google\'s Gmail backends
--
-- /See:/ <https://developers.google.com/admin-sdk/email-migration/v2/ Email Migration API v2 Reference> for @EmailMigrationMailInsert@.
module Network.Google.Resource.EmailMigration.Mail.Insert
    (
    -- * REST Resource
      MailInsertResource

    -- * Creating a Request
    , mailInsert'
    , MailInsert'

    -- * Request Lenses
    , miMailItem
    , miQuotaUser
    , miPrettyPrint
    , miUserIP
    , miMedia
    , miKey
    , miOAuthToken
    , miUserKey
    , miFields
    ) where

import           Network.Google.AdminEmailMigration.Types
import           Network.Google.Prelude

-- | A resource alias for @EmailMigrationMailInsert@ which the
-- 'MailInsert'' request conforms to.
type MailInsertResource =
     Capture "userKey" Text :>
       "mail" :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "fields" Text :>
                 QueryParam "key" Key :>
                   QueryParam "oauth_token" OAuthToken :>
                     QueryParam "alt" AltJSON :>
                       MultipartRelated '[JSON] MailItem Body :>
                         Post '[JSON] ()

-- | Insert Mail into Google\'s Gmail backends
--
-- /See:/ 'mailInsert'' smart constructor.
data MailInsert' = MailInsert'
    { _miMailItem    :: !MailItem
    , _miQuotaUser   :: !(Maybe Text)
    , _miPrettyPrint :: !Bool
    , _miUserIP      :: !(Maybe Text)
    , _miMedia       :: !Body
    , _miKey         :: !(Maybe Key)
    , _miOAuthToken  :: !(Maybe OAuthToken)
    , _miUserKey     :: !Text
    , _miFields      :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'MailInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'miMailItem'
--
-- * 'miQuotaUser'
--
-- * 'miPrettyPrint'
--
-- * 'miUserIP'
--
-- * 'miMedia'
--
-- * 'miKey'
--
-- * 'miOAuthToken'
--
-- * 'miUserKey'
--
-- * 'miFields'
mailInsert'
    :: MailItem -- ^ 'MailItem'
    -> Body -- ^ 'media'
    -> Text -- ^ 'userKey'
    -> MailInsert'
mailInsert' pMiMailItem_ pMiMedia_ pMiUserKey_ =
    MailInsert'
    { _miMailItem = pMiMailItem_
    , _miQuotaUser = Nothing
    , _miPrettyPrint = True
    , _miUserIP = Nothing
    , _miMedia = pMiMedia_
    , _miKey = Nothing
    , _miOAuthToken = Nothing
    , _miUserKey = pMiUserKey_
    , _miFields = Nothing
    }

-- | Multipart request metadata.
miMailItem :: Lens' MailInsert' MailItem
miMailItem
  = lens _miMailItem (\ s a -> s{_miMailItem = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
miQuotaUser :: Lens' MailInsert' (Maybe Text)
miQuotaUser
  = lens _miQuotaUser (\ s a -> s{_miQuotaUser = a})

-- | Returns response with indentations and line breaks.
miPrettyPrint :: Lens' MailInsert' Bool
miPrettyPrint
  = lens _miPrettyPrint
      (\ s a -> s{_miPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
miUserIP :: Lens' MailInsert' (Maybe Text)
miUserIP = lens _miUserIP (\ s a -> s{_miUserIP = a})

miMedia :: Lens' MailInsert' Body
miMedia = lens _miMedia (\ s a -> s{_miMedia = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
miKey :: Lens' MailInsert' (Maybe Key)
miKey = lens _miKey (\ s a -> s{_miKey = a})

-- | OAuth 2.0 token for the current user.
miOAuthToken :: Lens' MailInsert' (Maybe OAuthToken)
miOAuthToken
  = lens _miOAuthToken (\ s a -> s{_miOAuthToken = a})

-- | The email or immutable id of the user
miUserKey :: Lens' MailInsert' Text
miUserKey
  = lens _miUserKey (\ s a -> s{_miUserKey = a})

-- | Selector specifying which fields to include in a partial response.
miFields :: Lens' MailInsert' (Maybe Text)
miFields = lens _miFields (\ s a -> s{_miFields = a})

instance GoogleAuth MailInsert' where
        authKey = miKey . _Just
        authToken = miOAuthToken . _Just

instance GoogleRequest MailInsert' where
        type Rs MailInsert' = ()
        request
          = requestWithRoute defReq adminEmailMigrationURL
        requestWithRoute r u MailInsert'{..}
          = go _miMedia _miUserKey _miQuotaUser
              (Just _miPrettyPrint)
              _miUserIP
              _miFields
              _miKey
              _miOAuthToken
              (Just AltJSON)
              _miMailItem
          where go
                  = clientWithRoute (Proxy :: Proxy MailInsertResource)
                      r
                      u
