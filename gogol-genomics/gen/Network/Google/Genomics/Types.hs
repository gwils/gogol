{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.Genomics.Types
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.Genomics.Types
    (
    -- * Service URL
      genomicsURL

    -- * FastqMetadata
    , FastqMetadata
    , fastqMetadata
    , fmPlatformUnit
    , fmReadGroupName
    , fmLibraryName
    , fmPlatformName
    , fmSampleName

    -- * CallInfo
    , CallInfo
    , callInfo

    -- * ReadInfo
    , ReadInfo
    , readInfo

    -- * KeyValue
    , KeyValue
    , keyValue
    , kvValue
    , kvKey

    -- * ReadGroupExperiment
    , ReadGroupExperiment
    , readGroupExperiment
    , rgeInstrumentModel
    , rgePlatformUnit
    , rgeSequencingCenter
    , rgeLibraryId

    -- * ListBasesResponse
    , ListBasesResponse
    , listBasesResponse
    , lbrNextPageToken
    , lbrOffset
    , lbrSequence

    -- * InterleavedFastqSource
    , InterleavedFastqSource
    , interleavedFastqSource
    , ifsMetadata
    , ifsSourceURIs

    -- * Annotation
    , Annotation
    , annotation
    , aVariant
    , aAnnotationSetId
    , aName
    , aId
    , aType
    , aTranscript
    , aInfo
    , aPosition

    -- * BatchAnnotationsResponseEntry
    , BatchAnnotationsResponseEntry
    , batchAnnotationsResponseEntry
    , bareStatus
    , bareAnnotation

    -- * VariantAnnotationEffect
    , VariantAnnotationEffect (..)

    -- * Variant
    , Variant
    , variant
    , vVariantSetId
    , vCreated
    , vStart
    , vAlternateBases
    , vReferenceName
    , vNames
    , vEnd
    , vReferenceBases
    , vId
    , vQuality
    , vFilter
    , vInfo
    , vCalls

    -- * SearchJobsRequestStatus
    , SearchJobsRequestStatus (..)

    -- * CallReadGroupSetsRequest
    , CallReadGroupSetsRequest
    , callReadGroupSetsRequest
    , crgsrReadGroupSetId
    , crgsrDatasetId
    , crgsrSourceURIs

    -- * Read
    , Read
    , read
    , rFragmentLength
    , rDuplicateFragment
    , rReadGroupSetId
    , rNextMatePosition
    , rFailedVendorQualityChecks
    , rAlignment
    , rFragmentName
    , rNumberReads
    , rId
    , rSecondaryAlignment
    , rReadGroupId
    , rSupplementaryAlignment
    , rAlignedSequence
    , rProperPlacement
    , rInfo
    , rReadNumber
    , rAlignedQuality

    -- * Call
    , Call
    , call
    , cGenotypeLikelihood
    , cCallSetName
    , cPhaseset
    , cCallSetId
    , cGenotype
    , cInfo

    -- * Dataset
    , Dataset
    , dataset
    , dIsPublic
    , dProjectNumber
    , dName
    , dId
    , dCreateTime

    -- * TranscriptExon
    , TranscriptExon
    , transcriptExon
    , teStart
    , teEnd
    , teFrame

    -- * QueryRange
    , QueryRange
    , queryRange
    , qrStart
    , qrReferenceId
    , qrReferenceName
    , qrEnd

    -- * ReadGroup
    , ReadGroup
    , readGroup
    , rgReferenceSetId
    , rgPrograms
    , rgExperiment
    , rgName
    , rgDatasetId
    , rgId
    , rgSampleId
    , rgPredictedInsertSize
    , rgDescription
    , rgInfo

    -- * SearchReferencesResponse
    , SearchReferencesResponse
    , searchReferencesResponse
    , srrNextPageToken
    , srrReferences

    -- * AnnotationSetType
    , AnnotationSetType (..)

    -- * MergeVariantsRequest
    , MergeVariantsRequest
    , mergeVariantsRequest
    , mvrVariants

    -- * SearchReferenceSetsRequest
    , SearchReferenceSetsRequest
    , searchReferenceSetsRequest
    , srsrMD5checksums
    , srsrAccessions
    , srsrPageToken
    , srsrAssemblyId
    , srsrPageSize

    -- * BatchCreateAnnotationsRequest
    , BatchCreateAnnotationsRequest
    , batchCreateAnnotationsRequest
    , bcarAnnotations

    -- * MetadataType
    , MetadataType (..)

    -- * CallSet
    , CallSet
    , callSet
    , csCreated
    , csName
    , csId
    , csSampleId
    , csVariantSetIds
    , csInfo

    -- * CoverageBucket
    , CoverageBucket
    , coverageBucket
    , cbRange
    , cbMeanCoverage

    -- * VariantAnnotation
    , VariantAnnotation
    , variantAnnotation
    , vaEffect
    , vaClinicalSignificance
    , vaAlternateBases
    , vaGeneId
    , vaConditions
    , vaType
    , vaTranscriptIds

    -- * VariantAnnotationClinicalSignificance
    , VariantAnnotationClinicalSignificance (..)

    -- * BatchAnnotationsResponseEntryStatus
    , BatchAnnotationsResponseEntryStatus
    , batchAnnotationsResponseEntryStatus
    , baresCode
    , baresMessage

    -- * BatchAnnotationsResponse
    , BatchAnnotationsResponse
    , batchAnnotationsResponse
    , barEntries

    -- * ReadGroupInfo
    , ReadGroupInfo
    , readGroupInfo

    -- * Reference
    , Reference
    , reference
    , refLength
    , refSourceAccessions
    , refMD5checksum
    , refName
    , refNcbiTaxonId
    , refId
    , refSourceURI

    -- * SearchReadGroupSetsRequest
    , SearchReadGroupSetsRequest
    , searchReadGroupSetsRequest
    , srgsrDatasetIds
    , srgsrName
    , srgsrPageToken
    , srgsrPageSize

    -- * SearchJobsRequest
    , SearchJobsRequest
    , searchJobsRequest
    , sjrCreatedAfter
    , sjrStatus
    , sjrProjectNumber
    , sjrPageToken
    , sjrPageSize
    , sjrCreatedBefore

    -- * SearchReadsRequest
    , SearchReadsRequest
    , searchReadsRequest
    , srrStart
    , srrReadGroupIds
    , srrReferenceName
    , srrEnd
    , srrPageToken
    , srrPageSize
    , srrReadGroupSetIds

    -- * SearchCallSetsResponse
    , SearchCallSetsResponse
    , searchCallSetsResponse
    , scsrNextPageToken
    , scsrCallSets

    -- * JobRequest
    , JobRequest
    , jobRequest
    , jrDestination
    , jrSource
    , jrType

    -- * ExperimentalCreateJobRequest
    , ExperimentalCreateJobRequest
    , experimentalCreateJobRequest
    , ecjrGcsOutputPath
    , ecjrProjectNumber
    , ecjrAlign
    , ecjrSourceURIs
    , ecjrPairedSourceURIs
    , ecjrCallVariants

    -- * ReadGroupProgram
    , ReadGroupProgram
    , readGroupProgram
    , rgpPrevProgramId
    , rgpName
    , rgpVersion
    , rgpId
    , rgpCommandLine

    -- * AnnotationInfo
    , AnnotationInfo
    , annotationInfo

    -- * SearchAnnotationsResponse
    , SearchAnnotationsResponse
    , searchAnnotationsResponse
    , sarAnnotations
    , sarNextPageToken

    -- * SearchVariantSetsRequest
    , SearchVariantSetsRequest
    , searchVariantSetsRequest
    , svsrDatasetIds
    , svsrPageToken
    , svsrPageSize

    -- * VariantInfo
    , VariantInfo
    , variantInfo

    -- * ImportReadGroupSetsRequestPartitionStrategy
    , ImportReadGroupSetsRequestPartitionStrategy (..)

    -- * SearchAnnotationSetsRequest
    , SearchAnnotationSetsRequest
    , searchAnnotationSetsRequest
    , sasrReferenceSetId
    , sasrTypes
    , sasrDatasetIds
    , sasrName
    , sasrPageToken
    , sasrPageSize

    -- * SearchVariantsResponse
    , SearchVariantsResponse
    , searchVariantsResponse
    , svrVariants
    , svrNextPageToken

    -- * ExportReadGroupSetsRequest
    , ExportReadGroupSetsRequest
    , exportReadGroupSetsRequest
    , ergsrReferenceNames
    , ergsrProjectNumber
    , ergsrExportURI
    , ergsrReadGroupSetIds

    -- * Int32Value
    , Int32Value
    , int32Value
    , ivValue

    -- * SearchReadsResponse
    , SearchReadsResponse
    , searchReadsResponse
    , sNextPageToken
    , sAlignments

    -- * SearchCallSetsRequest
    , SearchCallSetsRequest
    , searchCallSetsRequest
    , scsrName
    , scsrPageToken
    , scsrVariantSetIds
    , scsrPageSize

    -- * ExperimentalCreateJobResponse
    , ExperimentalCreateJobResponse
    , experimentalCreateJobResponse
    , ecjrJobId

    -- * Range
    , Range
    , range
    , rStart
    , rReferenceName
    , rEnd

    -- * Job
    , Job
    , job
    , jDetailedStatus
    , jStatus
    , jCreated
    , jProjectNumber
    , jWarnings
    , jImportedIds
    , jId
    , jErrors
    , jRequest

    -- * AnnotationType
    , AnnotationType (..)

    -- * SearchReferenceSetsResponse
    , SearchReferenceSetsResponse
    , searchReferenceSetsResponse
    , srsrNextPageToken
    , srsrReferenceSets

    -- * ReadGroupSet
    , ReadGroupSet
    , readGroupSet
    , rgsReferenceSetId
    , rgsName
    , rgsDatasetId
    , rgsId
    , rgsInfo
    , rgsReadGroups
    , rgsFilename

    -- * PairedFastqSource
    , PairedFastqSource
    , pairedFastqSource
    , pfsFirstSourceURIs
    , pfsMetadata
    , pfsSecondSourceURIs

    -- * SearchReferencesRequest
    , SearchReferencesRequest
    , searchReferencesRequest
    , sReferenceSetId
    , sMD5checksums
    , sAccessions
    , sPageToken
    , sPageSize

    -- * ImportReadGroupSetsResponse
    , ImportReadGroupSetsResponse
    , importReadGroupSetsResponse
    , irgsrJobId

    -- * ExportVariantSetResponse
    , ExportVariantSetResponse
    , exportVariantSetResponse
    , evsrJobId

    -- * ImportVariantsResponse
    , ImportVariantsResponse
    , importVariantsResponse
    , ivrJobId

    -- * LinearAlignment
    , LinearAlignment
    , linearAlignment
    , laCigar
    , laMappingQuality
    , laPosition

    -- * AlignReadGroupSetsResponse
    , AlignReadGroupSetsResponse
    , alignReadGroupSetsResponse
    , argsrJobId

    -- * SearchAnnotationSetsRequestTypes
    , SearchAnnotationSetsRequestTypes (..)

    -- * ListCoverageBucketsResponse
    , ListCoverageBucketsResponse
    , listCoverageBucketsResponse
    , lcbrNextPageToken
    , lcbrBucketWidth
    , lcbrCoverageBuckets

    -- * CigarUnitOperation
    , CigarUnitOperation (..)

    -- * CallReadGroupSetsResponse
    , CallReadGroupSetsResponse
    , callReadGroupSetsResponse
    , crgsrJobId

    -- * AnnotationSet
    , AnnotationSet
    , annotationSet
    , asReferenceSetId
    , asName
    , asDatasetId
    , asId
    , asType
    , asSourceURI
    , asInfo

    -- * Metadata
    , Metadata
    , metadata
    , mValue
    , mKey
    , mId
    , mType
    , mNumber
    , mDescription
    , mInfo

    -- * VariantSet
    , VariantSet
    , variantSet
    , vsDatasetId
    , vsReferenceBounds
    , vsMetadata
    , vsId

    -- * CigarUnit
    , CigarUnit
    , cigarUnit
    , cuOperation
    , cuOperationLength
    , cuReferenceSequence

    -- * AlignReadGroupSetsRequest
    , AlignReadGroupSetsRequest
    , alignReadGroupSetsRequest
    , argsrInterleavedFastqSource
    , argsrReadGroupSetId
    , argsrBamSourceURIs
    , argsrPairedFastqSource
    , argsrDatasetId

    -- * ExportVariantSetRequest
    , ExportVariantSetRequest
    , exportVariantSetRequest
    , evsrBigqueryDataset
    , evsrBigqueryTable
    , evsrFormat
    , evsrProjectNumber
    , evsrCallSetIds

    -- * ImportVariantsRequest
    , ImportVariantsRequest
    , importVariantsRequest
    , ivrFormat
    , ivrNormalizeReferenceNames
    , ivrSourceURIs

    -- * ExternalId
    , ExternalId
    , externalId
    , eiSourceName
    , eiId

    -- * ImportReadGroupSetsRequest
    , ImportReadGroupSetsRequest
    , importReadGroupSetsRequest
    , irgsrReferenceSetId
    , irgsrDatasetId
    , irgsrSourceURIs
    , irgsrPartitionStrategy

    -- * VariantAnnotationType
    , VariantAnnotationType (..)

    -- * ListDatasetsResponse
    , ListDatasetsResponse
    , listDatasetsResponse
    , ldrNextPageToken
    , ldrDatasets

    -- * ImportVariantsRequestFormat
    , ImportVariantsRequestFormat (..)

    -- * VariantAnnotationCondition
    , VariantAnnotationCondition
    , variantAnnotationCondition
    , vacExternalIds
    , vacNames
    , vacConceptId
    , vacOmimId

    -- * AnnotationSetInfo
    , AnnotationSetInfo
    , annotationSetInfo

    -- * ExportVariantSetRequestFormat
    , ExportVariantSetRequestFormat (..)

    -- * SearchVariantSetsResponse
    , SearchVariantSetsResponse
    , searchVariantSetsResponse
    , svsrNextPageToken
    , svsrVariantSets

    -- * JobStatus
    , JobStatus (..)

    -- * SearchVariantsRequest
    , SearchVariantsRequest
    , searchVariantsRequest
    , svrStart
    , svrCallSetIds
    , svrReferenceName
    , svrEnd
    , svrMaxCalls
    , svrPageToken
    , svrVariantName
    , svrVariantSetIds
    , svrPageSize

    -- * MetadataInfo
    , MetadataInfo
    , metadataInfo

    -- * SearchAnnotationsRequest
    , SearchAnnotationsRequest
    , searchAnnotationsRequest
    , sarRange
    , sarPageToken
    , sarAnnotationSetIds
    , sarPageSize

    -- * ExportReadGroupSetsResponse
    , ExportReadGroupSetsResponse
    , exportReadGroupSetsResponse
    , ergsrJobId

    -- * SearchAnnotationSetsResponse
    , SearchAnnotationSetsResponse
    , searchAnnotationSetsResponse
    , sasrNextPageToken
    , sasrAnnotationSets

    -- * CallSetInfo
    , CallSetInfo
    , callSetInfo

    -- * JobRequestType
    , JobRequestType (..)

    -- * RangePosition
    , RangePosition
    , rangePosition
    , rpStart
    , rpReverseStrand
    , rpReferenceId
    , rpReferenceName
    , rpEnd

    -- * Transcript
    , Transcript
    , transcript
    , tGeneId
    , tCodingSequence
    , tExons

    -- * SearchReadGroupSetsResponse
    , SearchReadGroupSetsResponse
    , searchReadGroupSetsResponse
    , srgsrNextPageToken
    , srgsrReadGroupSets

    -- * SearchJobsResponse
    , SearchJobsResponse
    , searchJobsResponse
    , sjrNextPageToken
    , sjrJobs

    -- * TranscriptCodingSequence
    , TranscriptCodingSequence
    , transcriptCodingSequence
    , tcsStart
    , tcsEnd

    -- * Position
    , Position
    , position
    , pReverseStrand
    , pReferenceName
    , pPosition

    -- * ReferenceBound
    , ReferenceBound
    , referenceBound
    , rbUpperBound
    , rbReferenceName

    -- * ReadGroupSetInfo
    , ReadGroupSetInfo
    , readGroupSetInfo

    -- * ReferenceSet
    , ReferenceSet
    , referenceSet
    , rsSourceAccessions
    , rsReferenceIds
    , rsMD5checksum
    , rsNcbiTaxonId
    , rsId
    , rsAssemblyId
    , rsSourceURI
    , rsDescription
    ) where

import           Network.Google.Genomics.Types.Product
import           Network.Google.Genomics.Types.Sum
import           Network.Google.Prelude

-- | URL referring to version 'v1beta2' of the Genomics API.
genomicsURL :: BaseUrl
genomicsURL
  = BaseUrl Https
      "https://www.googleapis.com/genomics/v1beta2/"
      443
