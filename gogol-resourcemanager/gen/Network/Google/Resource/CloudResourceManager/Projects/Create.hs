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
-- Module      : Network.Google.Resource.CloudResourceManager.Projects.Create
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Creates a project resource. Initially, the project resource is owned by
-- its creator exclusively. The creator can later grant permission to
-- others to read or update the project. Several APIs are activated
-- automatically for the project, including Google Cloud Storage.
--
-- /See:/ <https://cloud.google.com/resource-manager Google Cloud Resource Manager API Reference> for @CloudResourceManagerProjectsCreate@.
module Network.Google.Resource.CloudResourceManager.Projects.Create
    (
    -- * REST Resource
      ProjectsCreateResource

    -- * Creating a Request
    , projectsCreate'
    , ProjectsCreate'

    -- * Request Lenses
    , pcXgafv
    , pcQuotaUser
    , pcPrettyPrint
    , pcUploadProtocol
    , pcProject
    , pcPp
    , pcAccessToken
    , pcUploadType
    , pcBearerToken
    , pcKey
    , pcOAuthToken
    , pcFields
    , pcCallback
    ) where

import           Network.Google.Prelude
import           Network.Google.ResourceManager.Types

-- | A resource alias for @CloudResourceManagerProjectsCreate@ which the
-- 'ProjectsCreate'' request conforms to.
type ProjectsCreateResource =
     "v1beta1" :>
       "projects" :>
         QueryParam "$.xgafv" Text :>
           QueryParam "access_token" Text :>
             QueryParam "bearer_token" Text :>
               QueryParam "callback" Text :>
                 QueryParam "pp" Bool :>
                   QueryParam "uploadType" Text :>
                     QueryParam "upload_protocol" Text :>
                       QueryParam "quotaUser" Text :>
                         QueryParam "prettyPrint" Bool :>
                           QueryParam "fields" Text :>
                             QueryParam "key" Key :>
                               QueryParam "oauth_token" OAuthToken :>
                                 QueryParam "alt" AltJSON :>
                                   ReqBody '[JSON] Project :>
                                     Post '[JSON] Project

-- | Creates a project resource. Initially, the project resource is owned by
-- its creator exclusively. The creator can later grant permission to
-- others to read or update the project. Several APIs are activated
-- automatically for the project, including Google Cloud Storage.
--
-- /See:/ 'projectsCreate'' smart constructor.
data ProjectsCreate' = ProjectsCreate'
    { _pcXgafv          :: !(Maybe Text)
    , _pcQuotaUser      :: !(Maybe Text)
    , _pcPrettyPrint    :: !Bool
    , _pcUploadProtocol :: !(Maybe Text)
    , _pcProject        :: !Project
    , _pcPp             :: !Bool
    , _pcAccessToken    :: !(Maybe Text)
    , _pcUploadType     :: !(Maybe Text)
    , _pcBearerToken    :: !(Maybe Text)
    , _pcKey            :: !(Maybe Key)
    , _pcOAuthToken     :: !(Maybe OAuthToken)
    , _pcFields         :: !(Maybe Text)
    , _pcCallback       :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsCreate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pcXgafv'
--
-- * 'pcQuotaUser'
--
-- * 'pcPrettyPrint'
--
-- * 'pcUploadProtocol'
--
-- * 'pcProject'
--
-- * 'pcPp'
--
-- * 'pcAccessToken'
--
-- * 'pcUploadType'
--
-- * 'pcBearerToken'
--
-- * 'pcKey'
--
-- * 'pcOAuthToken'
--
-- * 'pcFields'
--
-- * 'pcCallback'
projectsCreate'
    :: Project -- ^ 'Project'
    -> ProjectsCreate'
projectsCreate' pPcProject_ =
    ProjectsCreate'
    { _pcXgafv = Nothing
    , _pcQuotaUser = Nothing
    , _pcPrettyPrint = True
    , _pcUploadProtocol = Nothing
    , _pcProject = pPcProject_
    , _pcPp = True
    , _pcAccessToken = Nothing
    , _pcUploadType = Nothing
    , _pcBearerToken = Nothing
    , _pcKey = Nothing
    , _pcOAuthToken = Nothing
    , _pcFields = Nothing
    , _pcCallback = Nothing
    }

-- | V1 error format.
pcXgafv :: Lens' ProjectsCreate' (Maybe Text)
pcXgafv = lens _pcXgafv (\ s a -> s{_pcXgafv = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters.
pcQuotaUser :: Lens' ProjectsCreate' (Maybe Text)
pcQuotaUser
  = lens _pcQuotaUser (\ s a -> s{_pcQuotaUser = a})

-- | Returns response with indentations and line breaks.
pcPrettyPrint :: Lens' ProjectsCreate' Bool
pcPrettyPrint
  = lens _pcPrettyPrint
      (\ s a -> s{_pcPrettyPrint = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pcUploadProtocol :: Lens' ProjectsCreate' (Maybe Text)
pcUploadProtocol
  = lens _pcUploadProtocol
      (\ s a -> s{_pcUploadProtocol = a})

-- | Multipart request metadata.
pcProject :: Lens' ProjectsCreate' Project
pcProject
  = lens _pcProject (\ s a -> s{_pcProject = a})

-- | Pretty-print response.
pcPp :: Lens' ProjectsCreate' Bool
pcPp = lens _pcPp (\ s a -> s{_pcPp = a})

-- | OAuth access token.
pcAccessToken :: Lens' ProjectsCreate' (Maybe Text)
pcAccessToken
  = lens _pcAccessToken
      (\ s a -> s{_pcAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pcUploadType :: Lens' ProjectsCreate' (Maybe Text)
pcUploadType
  = lens _pcUploadType (\ s a -> s{_pcUploadType = a})

-- | OAuth bearer token.
pcBearerToken :: Lens' ProjectsCreate' (Maybe Text)
pcBearerToken
  = lens _pcBearerToken
      (\ s a -> s{_pcBearerToken = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
pcKey :: Lens' ProjectsCreate' (Maybe Key)
pcKey = lens _pcKey (\ s a -> s{_pcKey = a})

-- | OAuth 2.0 token for the current user.
pcOAuthToken :: Lens' ProjectsCreate' (Maybe OAuthToken)
pcOAuthToken
  = lens _pcOAuthToken (\ s a -> s{_pcOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
pcFields :: Lens' ProjectsCreate' (Maybe Text)
pcFields = lens _pcFields (\ s a -> s{_pcFields = a})

-- | JSONP
pcCallback :: Lens' ProjectsCreate' (Maybe Text)
pcCallback
  = lens _pcCallback (\ s a -> s{_pcCallback = a})

instance GoogleAuth ProjectsCreate' where
        authKey = pcKey . _Just
        authToken = pcOAuthToken . _Just

instance GoogleRequest ProjectsCreate' where
        type Rs ProjectsCreate' = Project
        request = requestWithRoute defReq resourceManagerURL
        requestWithRoute r u ProjectsCreate'{..}
          = go _pcXgafv _pcAccessToken _pcBearerToken
              _pcCallback
              (Just _pcPp)
              _pcUploadType
              _pcUploadProtocol
              _pcQuotaUser
              (Just _pcPrettyPrint)
              _pcFields
              _pcKey
              _pcOAuthToken
              (Just AltJSON)
              _pcProject
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ProjectsCreateResource)
                      r
                      u
