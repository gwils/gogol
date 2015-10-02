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
-- Module      : Network.Google.Resource.Dataflow.Projects.Jobs.Create
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Creates a dataflow job.
--
-- /See:/ <https://cloud.google.com/dataflow Google Dataflow API Reference> for @DataflowProjectsJobsCreate@.
module Network.Google.Resource.Dataflow.Projects.Jobs.Create
    (
    -- * REST Resource
      ProjectsJobsCreateResource

    -- * Creating a Request
    , projectsJobsCreate'
    , ProjectsJobsCreate'

    -- * Request Lenses
    , pjcXgafv
    , pjcQuotaUser
    , pjcPrettyPrint
    , pjcUploadProtocol
    , pjcPp
    , pjcAccessToken
    , pjcUploadType
    , pjcBearerToken
    , pjcKey
    , pjcJob
    , pjcView
    , pjcProjectId
    , pjcOAuthToken
    , pjcReplaceJobId
    , pjcFields
    , pjcCallback
    ) where

import           Network.Google.Dataflow.Types
import           Network.Google.Prelude

-- | A resource alias for @DataflowProjectsJobsCreate@ which the
-- 'ProjectsJobsCreate'' request conforms to.
type ProjectsJobsCreateResource =
     "v1b3" :>
       "projects" :>
         Capture "projectId" Text :>
           "jobs" :>
             QueryParam "$.xgafv" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "bearer_token" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "pp" Bool :>
                       QueryParam "replaceJobId" Text :>
                         QueryParam "uploadType" Text :>
                           QueryParam "upload_protocol" Text :>
                             QueryParam "view" Text :>
                               QueryParam "quotaUser" Text :>
                                 QueryParam "prettyPrint" Bool :>
                                   QueryParam "fields" Text :>
                                     QueryParam "key" Key :>
                                       QueryParam "oauth_token" OAuthToken :>
                                         QueryParam "alt" AltJSON :>
                                           ReqBody '[JSON] Job :>
                                             Post '[JSON] Job

-- | Creates a dataflow job.
--
-- /See:/ 'projectsJobsCreate'' smart constructor.
data ProjectsJobsCreate' = ProjectsJobsCreate'
    { _pjcXgafv          :: !(Maybe Text)
    , _pjcQuotaUser      :: !(Maybe Text)
    , _pjcPrettyPrint    :: !Bool
    , _pjcUploadProtocol :: !(Maybe Text)
    , _pjcPp             :: !Bool
    , _pjcAccessToken    :: !(Maybe Text)
    , _pjcUploadType     :: !(Maybe Text)
    , _pjcBearerToken    :: !(Maybe Text)
    , _pjcKey            :: !(Maybe Key)
    , _pjcJob            :: !Job
    , _pjcView           :: !(Maybe Text)
    , _pjcProjectId      :: !Text
    , _pjcOAuthToken     :: !(Maybe OAuthToken)
    , _pjcReplaceJobId   :: !(Maybe Text)
    , _pjcFields         :: !(Maybe Text)
    , _pjcCallback       :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsJobsCreate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pjcXgafv'
--
-- * 'pjcQuotaUser'
--
-- * 'pjcPrettyPrint'
--
-- * 'pjcUploadProtocol'
--
-- * 'pjcPp'
--
-- * 'pjcAccessToken'
--
-- * 'pjcUploadType'
--
-- * 'pjcBearerToken'
--
-- * 'pjcKey'
--
-- * 'pjcJob'
--
-- * 'pjcView'
--
-- * 'pjcProjectId'
--
-- * 'pjcOAuthToken'
--
-- * 'pjcReplaceJobId'
--
-- * 'pjcFields'
--
-- * 'pjcCallback'
projectsJobsCreate'
    :: Job -- ^ 'Job'
    -> Text -- ^ 'projectId'
    -> ProjectsJobsCreate'
projectsJobsCreate' pPjcJob_ pPjcProjectId_ =
    ProjectsJobsCreate'
    { _pjcXgafv = Nothing
    , _pjcQuotaUser = Nothing
    , _pjcPrettyPrint = True
    , _pjcUploadProtocol = Nothing
    , _pjcPp = True
    , _pjcAccessToken = Nothing
    , _pjcUploadType = Nothing
    , _pjcBearerToken = Nothing
    , _pjcKey = Nothing
    , _pjcJob = pPjcJob_
    , _pjcView = Nothing
    , _pjcProjectId = pPjcProjectId_
    , _pjcOAuthToken = Nothing
    , _pjcReplaceJobId = Nothing
    , _pjcFields = Nothing
    , _pjcCallback = Nothing
    }

-- | V1 error format.
pjcXgafv :: Lens' ProjectsJobsCreate' (Maybe Text)
pjcXgafv = lens _pjcXgafv (\ s a -> s{_pjcXgafv = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters.
pjcQuotaUser :: Lens' ProjectsJobsCreate' (Maybe Text)
pjcQuotaUser
  = lens _pjcQuotaUser (\ s a -> s{_pjcQuotaUser = a})

-- | Returns response with indentations and line breaks.
pjcPrettyPrint :: Lens' ProjectsJobsCreate' Bool
pjcPrettyPrint
  = lens _pjcPrettyPrint
      (\ s a -> s{_pjcPrettyPrint = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pjcUploadProtocol :: Lens' ProjectsJobsCreate' (Maybe Text)
pjcUploadProtocol
  = lens _pjcUploadProtocol
      (\ s a -> s{_pjcUploadProtocol = a})

-- | Pretty-print response.
pjcPp :: Lens' ProjectsJobsCreate' Bool
pjcPp = lens _pjcPp (\ s a -> s{_pjcPp = a})

-- | OAuth access token.
pjcAccessToken :: Lens' ProjectsJobsCreate' (Maybe Text)
pjcAccessToken
  = lens _pjcAccessToken
      (\ s a -> s{_pjcAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pjcUploadType :: Lens' ProjectsJobsCreate' (Maybe Text)
pjcUploadType
  = lens _pjcUploadType
      (\ s a -> s{_pjcUploadType = a})

-- | OAuth bearer token.
pjcBearerToken :: Lens' ProjectsJobsCreate' (Maybe Text)
pjcBearerToken
  = lens _pjcBearerToken
      (\ s a -> s{_pjcBearerToken = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
pjcKey :: Lens' ProjectsJobsCreate' (Maybe Key)
pjcKey = lens _pjcKey (\ s a -> s{_pjcKey = a})

-- | Multipart request metadata.
pjcJob :: Lens' ProjectsJobsCreate' Job
pjcJob = lens _pjcJob (\ s a -> s{_pjcJob = a})

-- | Level of information requested in response.
pjcView :: Lens' ProjectsJobsCreate' (Maybe Text)
pjcView = lens _pjcView (\ s a -> s{_pjcView = a})

-- | The project which owns the job.
pjcProjectId :: Lens' ProjectsJobsCreate' Text
pjcProjectId
  = lens _pjcProjectId (\ s a -> s{_pjcProjectId = a})

-- | OAuth 2.0 token for the current user.
pjcOAuthToken :: Lens' ProjectsJobsCreate' (Maybe OAuthToken)
pjcOAuthToken
  = lens _pjcOAuthToken
      (\ s a -> s{_pjcOAuthToken = a})

-- | DEPRECATED. This field is now on the Job message.
pjcReplaceJobId :: Lens' ProjectsJobsCreate' (Maybe Text)
pjcReplaceJobId
  = lens _pjcReplaceJobId
      (\ s a -> s{_pjcReplaceJobId = a})

-- | Selector specifying which fields to include in a partial response.
pjcFields :: Lens' ProjectsJobsCreate' (Maybe Text)
pjcFields
  = lens _pjcFields (\ s a -> s{_pjcFields = a})

-- | JSONP
pjcCallback :: Lens' ProjectsJobsCreate' (Maybe Text)
pjcCallback
  = lens _pjcCallback (\ s a -> s{_pjcCallback = a})

instance GoogleAuth ProjectsJobsCreate' where
        authKey = pjcKey . _Just
        authToken = pjcOAuthToken . _Just

instance GoogleRequest ProjectsJobsCreate' where
        type Rs ProjectsJobsCreate' = Job
        request = requestWithRoute defReq dataflowURL
        requestWithRoute r u ProjectsJobsCreate'{..}
          = go _pjcXgafv _pjcAccessToken _pjcBearerToken
              _pjcCallback
              (Just _pjcPp)
              _pjcReplaceJobId
              _pjcUploadType
              _pjcUploadProtocol
              _pjcView
              _pjcProjectId
              _pjcQuotaUser
              (Just _pjcPrettyPrint)
              _pjcFields
              _pjcKey
              _pjcOAuthToken
              (Just AltJSON)
              _pjcJob
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ProjectsJobsCreateResource)
                      r
                      u
