{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.AdminReports.Types
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.AdminReports.Types
    (
    -- * Service URL
      adminReportsURL

    -- * ActivityEvents
    , ActivityEvents
    , activityEvents
    , aeName
    , aeParameters
    , aeType

    -- * UsageReports
    , UsageReports
    , usageReports
    , urEtag
    , urNextPageToken
    , urUsageReports
    , urKind
    , urWarnings

    -- * ActivityId
    , ActivityId
    , activityId
    , aiTime
    , aiUniqueQualifier
    , aiCustomerId
    , aiApplicationName

    -- * Activities
    , Activities
    , activities
    , aEtag
    , aNextPageToken
    , aKind
    , aItems

    -- * UsageReport
    , UsageReport
    , usageReport
    , uEtag
    , uKind
    , uDate
    , uParameters
    , uEntity

    -- * UsageReportParametersMsgValue
    , UsageReportParametersMsgValue
    , usageReportParametersMsgValue

    -- * Channel
    , Channel
    , channel
    , cResourceUri
    , cResourceId
    , cKind
    , cExpiration
    , cToken
    , cAddress
    , cPayload
    , cParams
    , cId
    , cType

    -- * UsageReportsWarningsData
    , UsageReportsWarningsData
    , usageReportsWarningsData
    , urwdValue
    , urwdKey

    -- * UsageReportsWarnings
    , UsageReportsWarnings
    , usageReportsWarnings
    , urwData
    , urwCode
    , urwMessage

    -- * ChannelParams
    , ChannelParams
    , channelParams

    -- * Activity
    , Activity
    , activity
    , actEtag
    , actIpAddress
    , actKind
    , actActor
    , actOwnerDomain
    , actEvents
    , actId

    -- * ActivityEventsParameters
    , ActivityEventsParameters
    , activityEventsParameters
    , aepBoolValue
    , aepIntValue
    , aepValue
    , aepMultiIntValue
    , aepName
    , aepMultiValue

    -- * UsageReportEntity
    , UsageReportEntity
    , usageReportEntity
    , ureProfileId
    , ureCustomerId
    , ureUserEmail
    , ureType

    -- * ActivityActor
    , ActivityActor
    , activityActor
    , aaEmail
    , aaCallerType
    , aaProfileId
    , aaKey

    -- * UsageReportParameters
    , UsageReportParameters
    , usageReportParameters
    , urpDatetimeValue
    , urpBoolValue
    , urpIntValue
    , urpStringValue
    , urpName
    , urpMsgValue

    -- * Alt
    , Alt (..)
    ) where

import           Network.Google.AdminReports.Types.Product
import           Network.Google.AdminReports.Types.Sum
import           Network.Google.Prelude

-- | URL referring to version 'reports_v1' of the Admin Reports API.
adminReportsURL :: BaseUrl
adminReportsURL
  = BaseUrl Https
      "https://www.googleapis.com/admin/reports/v1/"
      443