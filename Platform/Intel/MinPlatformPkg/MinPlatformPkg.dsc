## @file
#  Platform description.
#
# Copyright (c) 2017 - 2024, Intel Corporation. All rights reserved.<BR>
# Copyright (c) Microsoft Corporation.<BR>
#
# SPDX-License-Identifier: BSD-2-Clause-Patent
#
##

################################################################################
#
# Defines Section - statements that will be processed to create a Makefile.
#
################################################################################
[Defines]
  PLATFORM_NAME                       = MinPlatformPkg
  PLATFORM_GUID                       = 8FE55D15-3ABF-4175-8169-74B87E5CD175
  PLATFORM_VERSION                    = 0.1
  DSC_SPECIFICATION                   = 0x00010005
  OUTPUT_DIRECTORY                    = Build/MinPlatformPkg
  SUPPORTED_ARCHITECTURES             = IA32|X64
  BUILD_TARGETS                       = NOOPT|DEBUG|RELEASE
  SKUID_IDENTIFIER                    = DEFAULT

################################################################################
#
# SKU Identification section - list of all SKU IDs supported by this
#                              Platform.
#
################################################################################
[SkuIds]
  0|DEFAULT              # The entry: 0|DEFAULT is reserved and always required.

################################################################################
#
# Pcd Section - list of all EDK II PCD Entries defined by this Platform
#
################################################################################

#
# MinPlatform common include for required feature PCD
# These PCD must be set before the core include files, CoreCommonLib,
# CorePeiLib, and CoreDxeLib.
#






#X# MinPlatformPkg/Include/Dsc/MinPlatformFeaturesPcd.dsc.inc
[PcdsFeatureFlag]
 gMinPlatformPkgTokenSpaceGuid.PcdStopAfterDebugInit            |FALSE
 gMinPlatformPkgTokenSpaceGuid.PcdStopAfterMemInit              |FALSE
 gMinPlatformPkgTokenSpaceGuid.PcdBootToShellOnly               |FALSE
 gMinPlatformPkgTokenSpaceGuid.PcdSerialTerminalEnable          |FALSE

 gMinPlatformPkgTokenSpaceGuid.PcdUefiSecureBootEnable          |FALSE
 gMinPlatformPkgTokenSpaceGuid.PcdTpm2Enable                    |FALSE

 gMinPlatformPkgTokenSpaceGuid.PcdPerformanceEnable             |FALSE

 gMinPlatformPkgTokenSpaceGuid.PcdStandaloneMmEnable            |FALSE







################################################################################
#
# Library Class section - list of all Library Classes needed by this Platform.
#
################################################################################






#X# MinPlatformPkg/Include/Dsc/CoreCommonLib.dsc

## @file
#  Platform description.
#
# Copyright (c) 2017 - 2023, Intel Corporation. All rights reserved.<BR>
#
# SPDX-License-Identifier: BSD-2-Clause-Patent
#
##

  #
  # Generic EDKII Lib
  #

!include MdePkg/MdeLibs.dsc.inc

[LibraryClasses.common]
  #
  # Entry point
  #
  PeiCoreEntryPoint|MdePkg/Library/PeiCoreEntryPoint/PeiCoreEntryPoint.inf
  PeimEntryPoint|MdePkg/Library/PeimEntryPoint/PeimEntryPoint.inf
  DxeCoreEntryPoint|MdePkg/Library/DxeCoreEntryPoint/DxeCoreEntryPoint.inf
  UefiDriverEntryPoint|MdePkg/Library/UefiDriverEntryPoint/UefiDriverEntryPoint.inf
  UefiApplicationEntryPoint|MdePkg/Library/UefiApplicationEntryPoint/UefiApplicationEntryPoint.inf
  SerialPortLib|MdeModulePkg/Library/BaseSerialPortLib16550/BaseSerialPortLib16550.inf
  PeCoffExtraActionLib|MdePkg/Library/BasePeCoffExtraActionLibNull/BasePeCoffExtraActionLibNull.inf

  #
  # Basic
  #
  BaseLib|MdePkg/Library/BaseLib/BaseLib.inf
  BaseMemoryLib|MdePkg/Library/BaseMemoryLibRepStr/BaseMemoryLibRepStr.inf

  PrintLib|MdePkg/Library/BasePrintLib/BasePrintLib.inf
  CpuLib|MdePkg/Library/BaseCpuLib/BaseCpuLib.inf
  IoLib|MdePkg/Library/BaseIoLibIntrinsic/BaseIoLibIntrinsic.inf
  PciSegmentLib|MdePkg/Library/BasePciSegmentLibPci/BasePciSegmentLibPci.inf
  PciLib|MdePkg/Library/BasePciLibCf8/BasePciLibCf8.inf
  BasePciLibPciExpress|MdePkg/Library/BasePciLibPciExpress/BasePciLibPciExpress.inf
#  PciLib|MdePkg/Library/BasePciLibPciExpress/BasePciLibPciExpress.inf
  PciCf8Lib|MdePkg/Library/BasePciCf8Lib/BasePciCf8Lib.inf
  PciExpressLib|MdePkg/Library/BasePciExpressLib/BasePciExpressLib.inf
  CacheMaintenanceLib|MdePkg/Library/BaseCacheMaintenanceLib/BaseCacheMaintenanceLib.inf
  PeCoffLib|MdePkg/Library/BasePeCoffLib/BasePeCoffLib.inf
  PeCoffGetEntryPointLib|MdePkg/Library/BasePeCoffGetEntryPointLib/BasePeCoffGetEntryPointLib.inf
  SortLib|MdeModulePkg/Library/BaseSortLib/BaseSortLib.inf
  #
  # UEFI & PI
  #
  UefiBootServicesTableLib|MdePkg/Library/UefiBootServicesTableLib/UefiBootServicesTableLib.inf
  UefiRuntimeServicesTableLib|MdePkg/Library/UefiRuntimeServicesTableLib/UefiRuntimeServicesTableLib.inf
  UefiRuntimeLib|MdePkg/Library/UefiRuntimeLib/UefiRuntimeLib.inf
  UefiLib|MdePkg/Library/UefiLib/UefiLib.inf
  HiiLib|MdeModulePkg/Library/UefiHiiLib/UefiHiiLib.inf
  UefiHiiServicesLib|MdeModulePkg/Library/UefiHiiServicesLib/UefiHiiServicesLib.inf
  DevicePathLib|MdePkg/Library/UefiDevicePathLib/UefiDevicePathLib.inf

  UefiDecompressLib|MdePkg/Library/BaseUefiDecompressLib/BaseUefiDecompressLib.inf
  PeiServicesTablePointerLib|MdePkg/Library/PeiServicesTablePointerLibIdt/PeiServicesTablePointerLibIdt.inf
  PeiServicesLib|MdePkg/Library/PeiServicesLib/PeiServicesLib.inf
  DxeServicesLib|MdePkg/Library/DxeServicesLib/DxeServicesLib.inf
  DxeServicesTableLib|MdePkg/Library/DxeServicesTableLib/DxeServicesTableLib.inf

  #
  # Framework
  #
  S3BootScriptLib|MdePkg/Library/BaseS3BootScriptLibNull/BaseS3BootScriptLibNull.inf
  S3IoLib|MdePkg/Library/BaseS3IoLib/BaseS3IoLib.inf
  S3PciLib|MdePkg/Library/BaseS3PciLib/BaseS3PciLib.inf

  #
  # Generic Modules
  #
  UefiUsbLib|MdePkg/Library/UefiUsbLib/UefiUsbLib.inf
  UefiScsiLib|MdePkg/Library/UefiScsiLib/UefiScsiLib.inf

  #
  # Network libraries
  #
!include NetworkPkg/NetworkLibs.dsc.inc

  OemHookStatusCodeLib|MdeModulePkg/Library/OemHookStatusCodeLibNull/OemHookStatusCodeLibNull.inf
  CapsuleLib|MdeModulePkg/Library/DxeCapsuleLibNull/DxeCapsuleLibNull.inf

  UefiBootManagerLib|MdeModulePkg/Library/UefiBootManagerLib/UefiBootManagerLib.inf
  FileExplorerLib|MdeModulePkg/Library/FileExplorerLib/FileExplorerLib.inf
  SynchronizationLib|MdePkg/Library/BaseSynchronizationLib/BaseSynchronizationLib.inf
  SecurityManagementLib|MdeModulePkg/Library/DxeSecurityManagementLib/DxeSecurityManagementLib.inf
  SmmCorePlatformHookLib|MdeModulePkg/Library/SmmCorePlatformHookLibNull/SmmCorePlatformHookLibNull.inf
  IoApicLib|PcAtChipsetPkg/Library/BaseIoApicLib/BaseIoApicLib.inf

  PostCodeLib|MdePkg/Library/BasePostCodeLibPort80/BasePostCodeLibPort80.inf

  DebugPrintErrorLevelLib|MdePkg/Library/BaseDebugPrintErrorLevelLib/BaseDebugPrintErrorLevelLib.inf
  CustomizedDisplayLib|MdeModulePkg/Library/CustomizedDisplayLib/CustomizedDisplayLib.inf

  ShellLib|ShellPkg/Library/UefiShellLib/UefiShellLib.inf
  FileHandleLib|MdePkg/Library/UefiFileHandleLib/UefiFileHandleLib.inf
  SortLib|MdeModulePkg/Library/UefiSortLib/UefiSortLib.inf
  OrderedCollectionLib|MdePkg/Library/BaseOrderedCollectionRedBlackTreeLib/BaseOrderedCollectionRedBlackTreeLib.inf

  #
  # CPU
  #
  MtrrLib|UefiCpuPkg/Library/MtrrLib/MtrrLib.inf
  LocalApicLib|UefiCpuPkg/Library/BaseXApicX2ApicLib/BaseXApicX2ApicLib.inf
  SmmCpuFeaturesLib|UefiCpuPkg/Library/SmmCpuFeaturesLib/SmmCpuFeaturesLib.inf
  MicrocodeLib|UefiCpuPkg/Library/MicrocodeLib/MicrocodeLib.inf
  CpuPageTableLib|UefiCpuPkg/Library/CpuPageTableLib/CpuPageTableLib.inf
  SmmCpuSyncLib|UefiCpuPkg/Library/SmmCpuSyncLib/SmmCpuSyncLib.inf

  #
  # Platform
  #
  TimerLib|UefiCpuPkg/Library/CpuTimerLib/BaseCpuTimerLib.inf

  #
  # Misc
  #
!if $(TARGET) == RELEASE
  DebugLib|MdePkg/Library/BaseDebugLibNull/BaseDebugLibNull.inf
!else
  DebugLib|MdeModulePkg/Library/PeiDxeDebugLibReportStatusCode/PeiDxeDebugLibReportStatusCode.inf
!endif

!if $(TARGET) == RELEASE
  SmiHandlerProfileLib|MdePkg/Library/SmiHandlerProfileLibNull/SmiHandlerProfileLibNull.inf
!else
  SmiHandlerProfileLib|MdeModulePkg/Library/SmmSmiHandlerProfileLib/SmmSmiHandlerProfileLib.inf
!endif

  PerformanceLib|MdePkg/Library/BasePerformanceLibNull/BasePerformanceLibNull.inf
  PcdLib|MdePkg/Library/BasePcdLibNull/BasePcdLibNull.inf
  DebugAgentLib|MdeModulePkg/Library/DebugAgentLibNull/DebugAgentLibNull.inf

  TpmMeasurementLib|MdeModulePkg/Library/TpmMeasurementLibNull/TpmMeasurementLibNull.inf
  VarCheckLib|MdeModulePkg/Library/VarCheckLib/VarCheckLib.inf
  PlatformSecureLib|SecurityPkg/Library/PlatformSecureLibNull/PlatformSecureLibNull.inf
  AuthVariableLib|MdeModulePkg/Library/AuthVariableLibNull/AuthVariableLibNull.inf

!if gMinPlatformPkgTokenSpaceGuid.PcdUefiSecureBootEnable == TRUE
  AuthVariableLib|SecurityPkg/Library/AuthVariableLib/AuthVariableLib.inf
  SecureBootVariableLib|SecurityPkg/Library/SecureBootVariableLib/SecureBootVariableLib.inf
  SecureBootVariableProvisionLib|SecurityPkg/Library/SecureBootVariableProvisionLib/SecureBootVariableProvisionLib.inf
  PlatformPKProtectionLib|SecurityPkg/Library/PlatformPKProtectionLibVarPolicy/PlatformPKProtectionLibVarPolicy.inf
!endif

  SafeIntLib|MdePkg/Library/BaseSafeIntLib/BaseSafeIntLib.inf
  BmpSupportLib|MdeModulePkg/Library/BaseBmpSupportLib/BaseBmpSupportLib.inf
  LargeVariableReadLib|MinPlatformPkg/Library/BaseLargeVariableLib/BaseLargeVariableReadLib.inf
  LargeVariableWriteLib|MinPlatformPkg/Library/BaseLargeVariableLib/BaseLargeVariableWriteLib.inf
  CompressLib|MinPlatformPkg/Library/CompressLib/CompressLib.inf

  #
  # CryptLib
  #
  IntrinsicLib|CryptoPkg/Library/IntrinsicLib/IntrinsicLib.inf
  OpensslLib|CryptoPkg/Library/OpensslLib/OpensslLib.inf

  RngLib|MdePkg/Library/BaseRngLib/BaseRngLib.inf

  Tpm12DeviceLib|SecurityPkg/Library/Tpm12DeviceLibDTpm/Tpm12DeviceLibDTpm.inf
  Tpm12CommandLib|SecurityPkg/Library/Tpm12CommandLib/Tpm12CommandLib.inf
  Tpm2CommandLib|SecurityPkg/Library/Tpm2CommandLib/Tpm2CommandLib.inf
  Tpm2DeviceLib|SecurityPkg/Library/Tpm2DeviceLibDTpm/Tpm2DeviceLibDTpm.inf
  Tcg2PhysicalPresenceLib|SecurityPkg/Library/DxeTcg2PhysicalPresenceLib/DxeTcg2PhysicalPresenceLib.inf
  Tcg2PpVendorLib|SecurityPkg/Library/Tcg2PpVendorLibNull/Tcg2PpVendorLibNull.inf

  LockBoxLib|MdeModulePkg/Library/LockBoxNullLib/LockBoxNullLib.inf

  SmmMemLib|MdePkg/Library/SmmMemLib/SmmMemLib.inf
  MmUnblockMemoryLib|MdePkg/Library/MmUnblockMemoryLib/MmUnblockMemoryLibNull.inf

  SmbusLib|MdePkg/Library/BaseSmbusLibNull/BaseSmbusLibNull.inf
  VariableFlashInfoLib|MdeModulePkg/Library/BaseVariableFlashInfoLib/BaseVariableFlashInfoLib.inf
  VariablePolicyLib|MdeModulePkg/Library/VariablePolicyLib/VariablePolicyLib.inf
  VariablePolicyHelperLib|MdeModulePkg/Library/VariablePolicyHelperLib/VariablePolicyHelperLib.inf
  ImagePropertiesRecordLib|MdeModulePkg/Library/ImagePropertiesRecordLib/ImagePropertiesRecordLib.inf





#X# MinPlatformPkg/Include/Dsc/CorePeiLib.dsc
[LibraryClasses.common.SEC, LibraryClasses.common.PEI_CORE]
!if $(TARGET) != RELEASE
  DebugLib|MdePkg/Library/BaseDebugLibSerialPort/BaseDebugLibSerialPort.inf
!endif

[LibraryClasses.common.SEC, LibraryClasses.common.PEI_CORE, LibraryClasses.common.PEIM]
  S3BootScriptLib|MdePkg/Library/BaseS3BootScriptLibNull/BaseS3BootScriptLibNull.inf
  PcdLib|MdePkg/Library/PeiPcdLib/PeiPcdLib.inf
  HobLib|MdePkg/Library/PeiHobLib/PeiHobLib.inf
  MemoryAllocationLib|MdePkg/Library/PeiMemoryAllocationLib/PeiMemoryAllocationLib.inf
  ReportStatusCodeLib|MdeModulePkg/Library/PeiReportStatusCodeLib/PeiReportStatusCodeLib.inf
  ExtractGuidedSectionLib|MdePkg/Library/PeiExtractGuidedSectionLib/PeiExtractGuidedSectionLib.inf
  DevicePathLib|MdePkg/Library/UefiDevicePathLib/UefiDevicePathLibBase.inf
  !if gMinPlatformPkgTokenSpaceGuid.PcdStandaloneMmEnable == TRUE
    LockBoxLib|MdeModulePkg/Library/LockBoxNullLib/LockBoxNullLib.inf
  !else
    LockBoxLib|MdeModulePkg/Library/SmmLockBoxLib/SmmLockBoxPeiLib.inf
  !endif
  CpuExceptionHandlerLib|UefiCpuPkg/Library/CpuExceptionHandlerLib/SecPeiCpuExceptionHandlerLib.inf

!if gMinPlatformPkgTokenSpaceGuid.PcdPerformanceEnable == TRUE
  PerformanceLib|MdeModulePkg/Library/PeiPerformanceLib/PeiPerformanceLib.inf
!endif

  TimerLib|PcAtChipsetPkg/Library/AcpiTimerLib/BaseAcpiTimerLib.inf
  CcExitLib|UefiCpuPkg/Library/CcExitLibNull/CcExitLibNull.inf

[LibraryClasses.common.SEC]
  ReportStatusCodeLib|MdePkg/Library/BaseReportStatusCodeLibNull/BaseReportStatusCodeLibNull.inf
  PcdLib|MdePkg/Library/BasePcdLibNull/BasePcdLibNull.inf
  VariableReadLib|MinPlatformPkg/Library/BaseVariableReadLibNull/BaseVariableReadLibNull.inf

[LibraryClasses.common.PEI_CORE, LibraryClasses.common.PEIM]
  TimerLib|PcAtChipsetPkg/Library/AcpiTimerLib/PeiAcpiTimerLib.inf

[LibraryClasses.common.PEIM]
  BaseCryptLib|CryptoPkg/Library/BaseCryptLib/PeiCryptLib.inf

  Tpm2DeviceLib|SecurityPkg/Library/Tpm2DeviceLibRouter/Tpm2DeviceLibRouterPei.inf
  HashLib|SecurityPkg/Library/HashLibBaseCryptoRouter/HashLibBaseCryptoRouterPei.inf
  Tcg2PhysicalPresenceLib|SecurityPkg/Library/PeiTcg2PhysicalPresenceLib/PeiTcg2PhysicalPresenceLib.inf
  TpmPlatformHierarchyLib|SecurityPkg/Library/PeiDxeTpmPlatformHierarchyLib/PeiDxeTpmPlatformHierarchyLib.inf

  FspMeasurementLib|IntelFsp2WrapperPkg/Library/BaseFspMeasurementLib/BaseFspMeasurementLib.inf
  FspWrapperPlatformMultiPhaseLib|IntelFsp2WrapperPkg/Library/BaseFspWrapperPlatformMultiPhaseLibNull/BaseFspWrapperPlatformMultiPhaseLibNull.inf
  FspWrapperMultiPhaseProcessLib|IntelFsp2WrapperPkg/Library/FspWrapperMultiPhaseProcessLib/FspWrapperMultiPhaseProcessLib.inf
  TcgEventLogRecordLib|SecurityPkg/Library/TcgEventLogRecordLib/TcgEventLogRecordLib.inf
  TpmMeasurementLib|SecurityPkg/Library/PeiTpmMeasurementLib/PeiTpmMeasurementLib.inf

  VariableReadLib|MinPlatformPkg/Library/PeiVariableReadLib/PeiVariableReadLib.inf

  SmmRelocationLib|UefiCpuPkg/Library/SmmRelocationLib/SmmRelocationLib.inf
  SmmControlLib|IntelSiliconPkg/Feature/SmmControl/Library/PeiSmmControlLib/PeiSmmControlLib.inf
  MmUnblockMemoryLib|UefiCpuPkg/Library/MmUnblockMemoryLib/MmUnblockMemoryLib.inf




#X# MinPlatformPkg/Include/Dsc/CoreDxeLib.dsc
[LibraryClasses.common.DXE_CORE, LibraryClasses.common.DXE_SMM_DRIVER, LibraryClasses.common.SMM_CORE, LibraryClasses.common.DXE_DRIVER, LibraryClasses.common.DXE_RUNTIME_DRIVER, LibraryClasses.common.UEFI_DRIVER, LibraryClasses.common.UEFI_APPLICATION]
  HobLib|MdePkg/Library/DxeHobLib/DxeHobLib.inf
  PcdLib|MdePkg/Library/DxePcdLib/DxePcdLib.inf
  MemoryAllocationLib|MdePkg/Library/UefiMemoryAllocationLib/UefiMemoryAllocationLib.inf
  ReportStatusCodeLib|MdeModulePkg/Library/DxeReportStatusCodeLib/DxeReportStatusCodeLib.inf
  ExtractGuidedSectionLib|MdePkg/Library/DxeExtractGuidedSectionLib/DxeExtractGuidedSectionLib.inf

  HstiLib|MdePkg/Library/DxeHstiLib/DxeHstiLib.inf

  !if gMinPlatformPkgTokenSpaceGuid.PcdStandaloneMmEnable == TRUE
    LockBoxLib|MdeModulePkg/Library/LockBoxNullLib/LockBoxNullLib.inf
  !else
    LockBoxLib|MdeModulePkg/Library/SmmLockBoxLib/SmmLockBoxDxeLib.inf
  !endif

  CpuExceptionHandlerLib|UefiCpuPkg/Library/CpuExceptionHandlerLib/DxeCpuExceptionHandlerLib.inf
  MpInitLib|UefiCpuPkg/Library/MpInitLib/DxeMpInitLib.inf
  FrameBufferBltLib|MdeModulePkg/Library/FrameBufferBltLib/FrameBufferBltLib.inf
  TimerLib|PcAtChipsetPkg/Library/AcpiTimerLib/DxeAcpiTimerLib.inf

  TpmMeasurementLib|SecurityPkg/Library/DxeTpmMeasurementLib/DxeTpmMeasurementLib.inf
  BaseCryptLib|CryptoPkg/Library/BaseCryptLib/BaseCryptLib.inf
  Tpm2DeviceLib|SecurityPkg/Library/Tpm2DeviceLibRouter/Tpm2DeviceLibRouterDxe.inf
  HashLib|SecurityPkg/Library/HashLibBaseCryptoRouter/HashLibBaseCryptoRouterDxe.inf
  Tcg2PhysicalPresenceLib|SecurityPkg/Library/DxeTcg2PhysicalPresenceLib/DxeTcg2PhysicalPresenceLib.inf

  CcExitLib|UefiCpuPkg/Library/CcExitLibNull/CcExitLibNull.inf
  AmdSvsmLib|UefiCpuPkg/Library/AmdSvsmLibNull/AmdSvsmLibNull.inf

[LibraryClasses.common.DXE_CORE, LibraryClasses.common.DXE_DRIVER, LibraryClasses.common.DXE_RUNTIME_DRIVER, LibraryClasses.common.UEFI_DRIVER, LibraryClasses.common.UEFI_APPLICATION]
  VariableReadLib|MinPlatformPkg/Library/DxeRuntimeVariableReadLib/DxeRuntimeVariableReadLib.inf
  VariableWriteLib|MinPlatformPkg/Library/DxeRuntimeVariableWriteLib/DxeRuntimeVariableWriteLib.inf
  PhatAcpiLib|MinPlatformPkg/Acpi/Library/PhatAcpiLib/DxePhatAcpiLib.inf

[LibraryClasses.common.DXE_DRIVER, LibraryClasses.common.DXE_RUNTIME_DRIVER, LibraryClasses.common.UEFI_DRIVER, LibraryClasses.common.UEFI_APPLICATION]
!if gMinPlatformPkgTokenSpaceGuid.PcdPerformanceEnable == TRUE
  PerformanceLib|MdeModulePkg/Library/DxePerformanceLib/DxePerformanceLib.inf
!endif

[LibraryClasses.common.DXE_CORE, LibraryClasses.common.SMM_CORE]
!if $(TARGET) != RELEASE
  DebugLib|MdePkg/Library/BaseDebugLibSerialPort/BaseDebugLibSerialPort.inf
!endif

[LibraryClasses.common.DXE_CORE]
  HobLib|MdePkg/Library/DxeCoreHobLib/DxeCoreHobLib.inf
  MemoryAllocationLib|MdeModulePkg/Library/DxeCoreMemoryAllocationLib/DxeCoreMemoryAllocationLib.inf
  PcdLib|MdePkg/Library/BasePcdLibNull/BasePcdLibNull.inf

!if gMinPlatformPkgTokenSpaceGuid.PcdPerformanceEnable == TRUE
  PerformanceLib|MdeModulePkg/Library/DxeCorePerformanceLib/DxeCorePerformanceLib.inf
!endif

[LibraryClasses.common.DXE_DRIVER, LibraryClasses.common.UEFI_DRIVER]
  Tpm2DeviceLib|SecurityPkg/Library/Tpm2DeviceLibTcg2/Tpm2DeviceLibTcg2.inf

[LibraryClasses.common.DXE_DRIVER]
  TpmPlatformHierarchyLib|SecurityPkg/Library/PeiDxeTpmPlatformHierarchyLib/PeiDxeTpmPlatformHierarchyLib.inf

[LibraryClasses.common.DXE_SMM_DRIVER]
  SmmServicesTableLib|MdePkg/Library/SmmServicesTableLib/SmmServicesTableLib.inf
  MmServicesTableLib|MdePkg/Library/MmServicesTableLib/MmServicesTableLib.inf
  ReportStatusCodeLib|MdeModulePkg/Library/SmmReportStatusCodeLib/SmmReportStatusCodeLib.inf
  MemoryAllocationLib|MdePkg/Library/SmmMemoryAllocationLib/SmmMemoryAllocationLib.inf
  LockBoxLib|MdeModulePkg/Library/SmmLockBoxLib/SmmLockBoxSmmLib.inf
  SmmMemLib|MdePkg/Library/SmmMemLib/SmmMemLib.inf
  SmmPeriodicSmiLib|MdePkg/Library/SmmPeriodicSmiLib/SmmPeriodicSmiLib.inf

!if gMinPlatformPkgTokenSpaceGuid.PcdPerformanceEnable == TRUE
  PerformanceLib|MdeModulePkg/Library/SmmPerformanceLib/SmmPerformanceLib.inf
!endif

  SmmCpuPlatformHookLib|UefiCpuPkg/Library/SmmCpuPlatformHookLibNull/SmmCpuPlatformHookLibNull.inf
  SmmCpuFeaturesLib|UefiCpuPkg/Library/SmmCpuFeaturesLib/SmmCpuFeaturesLib.inf
  MmSaveStateLib|UefiCpuPkg/Library/MmSaveStateLib/IntelMmSaveStateLib.inf

  CpuExceptionHandlerLib|UefiCpuPkg/Library/CpuExceptionHandlerLib/SmmCpuExceptionHandlerLib.inf
  Tcg2PhysicalPresenceLib|SecurityPkg/Library/SmmTcg2PhysicalPresenceLib/SmmTcg2PhysicalPresenceLib.inf
  BaseCryptLib|CryptoPkg/Library/BaseCryptLib/SmmCryptLib.inf
  VariableReadLib|MinPlatformPkg/Library/SmmVariableReadLib/TraditionalMmVariableReadLib.inf
  VariableWriteLib|MinPlatformPkg/Library/SmmVariableWriteLib/TraditionalMmVariableWriteLib.inf

!if gMinPlatformPkgTokenSpaceGuid.PcdStandaloneMmEnable == TRUE
[LibraryClasses.common.MM_CORE_STANDALONE]
  HobLib|StandaloneMmPkg/Library/StandaloneMmCoreHobLib/StandaloneMmCoreHobLib.inf
  ReportStatusCodeLib|MdeModulePkg/Library/SmmReportStatusCodeLib/StandaloneMmReportStatusCodeLib.inf
  ExtractGuidedSectionLib|MdePkg/Library/BaseExtractGuidedSectionLib/BaseExtractGuidedSectionLib.inf
  FvLib|StandaloneMmPkg/Library/FvLib/FvLib.inf
  MemoryAllocationLib|StandaloneMmPkg/Library/StandaloneMmCoreMemoryAllocationLib/StandaloneMmCoreMemoryAllocationLib.inf
  MemLib|StandaloneMmPkg/Library/StandaloneMmMemLib/StandaloneMmMemLib.inf
  StandaloneMmCoreEntryPoint|StandaloneMmPkg/Library/StandaloneMmCoreEntryPoint/StandaloneMmCoreEntryPoint.inf
  MmServicesTableLib|MdePkg/Library/StandaloneMmServicesTableLib/StandaloneMmServicesTableLib.inf
!endif

[LibraryClasses.common.SMM_CORE]
  MemoryAllocationLib|MdeModulePkg/Library/PiSmmCoreMemoryAllocationLib/PiSmmCoreMemoryAllocationLib.inf
  SmmServicesTableLib|MdeModulePkg/Library/PiSmmCoreSmmServicesTableLib/PiSmmCoreSmmServicesTableLib.inf
  ReportStatusCodeLib|MdeModulePkg/Library/SmmReportStatusCodeLib/SmmReportStatusCodeLib.inf
  SmmMemLib|MdePkg/Library/SmmMemLib/SmmMemLib.inf

!if gMinPlatformPkgTokenSpaceGuid.PcdStandaloneMmEnable == TRUE
[LibraryClasses.common.MM_STANDALONE]
  MemoryAllocationLib|StandaloneMmPkg/Library/StandaloneMmMemoryAllocationLib/StandaloneMmMemoryAllocationLib.inf
  MmServicesTableLib|MdePkg/Library/StandaloneMmServicesTableLib/StandaloneMmServicesTableLib.inf
  PcdLib|MdePkg/Library/BasePcdLibNull/BasePcdLibNull.inf
  HobLib|StandaloneMmPkg/Library/StandaloneMmHobLib/StandaloneMmHobLib.inf
  TimerLib|PcAtChipsetPkg/Library/AcpiTimerLib/StandaloneMmAcpiTimerLib.inf
  ReportStatusCodeLib|MdeModulePkg/Library/SmmReportStatusCodeLib/StandaloneMmReportStatusCodeLib.inf
  StandaloneMmDriverEntryPoint|MdePkg/Library/StandaloneMmDriverEntryPoint/StandaloneMmDriverEntryPoint.inf
  VariableReadLib|MinPlatformPkg/Library/SmmVariableReadLib/StandaloneMmVariableReadLib.inf
  VariableWriteLib|MinPlatformPkg/Library/SmmVariableWriteLib/StandaloneMmVariableWriteLib.inf
  DebugLib|MdePkg/Library/BaseDebugLibSerialPort/BaseDebugLibSerialPort.inf
  MemLib|StandaloneMmPkg/Library/StandaloneMmMemLib/StandaloneMmMemLib.inf
  DevicePathLib|MdePkg/Library/UefiDevicePathLib/UefiDevicePathLibStandaloneMm.inf
  SmmCpuPlatformHookLib|UefiCpuPkg/Library/SmmCpuPlatformHookLibNull/SmmCpuPlatformHookLibNull.inf
  MmSaveStateLib|UefiCpuPkg/Library/MmSaveStateLib/IntelMmSaveStateLib.inf
  SmmCpuFeaturesLib|UefiCpuPkg/Library/SmmCpuFeaturesLib/StandaloneMmCpuFeaturesLib.inf
  CpuExceptionHandlerLib|UefiCpuPkg/Library/CpuExceptionHandlerLib/SmmCpuExceptionHandlerLib.inf
  CcExitLib|UefiCpuPkg/Library/CcExitLibNull/CcExitLibNull.inf
!if gMinPlatformPkgTokenSpaceGuid.PcdPerformanceEnable == TRUE
  PerformanceLib|MdeModulePkg/Library/SmmCorePerformanceLib/SmmCorePerformanceLib.inf
!endif
!endif

[LibraryClasses.common.DXE_RUNTIME_DRIVER]
  ReportStatusCodeLib|MdeModulePkg/Library/RuntimeDxeReportStatusCodeLib/RuntimeDxeReportStatusCodeLib.inf
  BaseCryptLib|CryptoPkg/Library/BaseCryptLib/RuntimeCryptLib.inf
  VariablePolicyLib|MdeModulePkg/Library/VariablePolicyLib/VariablePolicyLibRuntimeDxe.inf

[LibraryClasses.common.UEFI_APPLICATION]
  ShellLib|ShellPkg/Library/UefiShellLib/UefiShellLib.inf
  FileHandleLib|MdePkg/Library/UefiFileHandleLib/UefiFileHandleLib.inf
  SortLib|MdeModulePkg/Library/UefiSortLib/UefiSortLib.inf




[LibraryClasses.common]
  #
  # Platform
  #
  PlatformHookLib|MdeModulePkg/Library/BasePlatformHookLibNull/BasePlatformHookLibNull.inf
  PciHostBridgeLib|MinPlatformPkg/Pci/Library/PciHostBridgeLibSimple/PciHostBridgeLibSimple.inf
  PciSegmentInfoLib|MinPlatformPkg/Pci/Library/PciSegmentInfoLibSimple/PciSegmentInfoLibSimple.inf
  PlatformBootManagerLib|MinPlatformPkg/Bds/Library/DxePlatformBootManagerLib/DxePlatformBootManagerLib.inf
  AslUpdateLib|MinPlatformPkg/Acpi/Library/DxeAslUpdateLib/DxeAslUpdateLib.inf
  PhatAcpiLib|MinPlatformPkg/Acpi/Library/PhatAcpiLib/DxePhatAcpiLib.inf

  #
  # Misc
  #
  FspWrapperApiLib|IntelFsp2WrapperPkg/Library/BaseFspWrapperApiLib/BaseFspWrapperApiLib.inf
  FspWrapperApiTestLib|IntelFsp2WrapperPkg/Library/PeiFspWrapperApiTestLib/PeiFspWrapperApiTestLib.inf
  FspWrapperHobProcessLib|MinPlatformPkg/FspWrapper/Library/PeiFspWrapperHobProcessLib/PeiFspWrapperHobProcessLib.inf
  PlatformSecLib|MinPlatformPkg/FspWrapper/Library/SecFspWrapperPlatformSecLib/SecFspWrapperPlatformSecLib.inf
  VariableReadLib|MinPlatformPkg/Library/BaseVariableReadLibNull/BaseVariableReadLibNull.inf
  FspWrapperPlatformLib|MinPlatformPkg/FspWrapper/Library/PeiFspWrapperPlatformLib/PeiFspWrapperPlatformLib.inf

  BoardInitLib|MinPlatformPkg/PlatformInit/Library/BoardInitLibNull/BoardInitLibNull.inf
  BoardAcpiTableLib|MinPlatformPkg/Acpi/Library/BoardAcpiTableLibNull/BoardAcpiTableLibNull.inf
  BoardAcpiEnableLib|MinPlatformPkg/Acpi/Library/BoardAcpiEnableLibNull/BoardAcpiEnableLibNull.inf
  SiliconPolicyInitLib|MinPlatformPkg/PlatformInit/Library/SiliconPolicyInitLibNull/SiliconPolicyInitLibNull.inf
  SiliconPolicyUpdateLib|MinPlatformPkg/PlatformInit/Library/SiliconPolicyUpdateLibNull/SiliconPolicyUpdateLibNull.inf

  TestPointCheckLib|MinPlatformPkg/Test/Library/TestPointCheckLibNull/TestPointCheckLibNull.inf

[LibraryClasses.common.SEC]
  TestPointCheckLib|MinPlatformPkg/Test/Library/TestPointCheckLib/SecTestPointCheckLib.inf
  # This has SEC modules with standard entry points, so we can generically link StackCheckLib
  NULL|MdePkg/Library/StackCheckLibNull/StackCheckLibNull.inf

[LibraryClasses.common.PEIM]
  #
  # PEI phase common
  #
  FspWrapperPlatformLib|MinPlatformPkg/FspWrapper/Library/PeiFspWrapperPlatformLib/PeiFspWrapperPlatformLib.inf
  ReportFvLib|MinPlatformPkg/PlatformInit/Library/PeiReportFvLib/PeiReportFvLib.inf
  ReportCpuHobLib|IntelSiliconPkg/Library/ReportCpuHobLib/ReportCpuHobLib.inf
  TestPointCheckLib|MinPlatformPkg/Test/Library/TestPointCheckLib/PeiTestPointCheckLib.inf
  TestPointLib|MinPlatformPkg/Test/Library/TestPointLib/PeiTestPointLib.inf
  SetCacheMtrrLib|MinPlatformPkg/Library/SetCacheMtrrLib/SetCacheMtrrLibNull.inf
  MmUnblockMemoryLib|UefiCpuPkg/Library/MmUnblockMemoryLib/MmUnblockMemoryLib.inf

[LibraryClasses.common.DXE_DRIVER]
  #
  # DXE phase common
  #
  CompressLib|MinPlatformPkg/Library/CompressLib/CompressLib.inf
  FspWrapperPlatformLib|MinPlatformPkg/FspWrapper/Library/DxeFspWrapperPlatformLib/DxeFspWrapperPlatformLib.inf
  TestPointCheckLib|MinPlatformPkg/Test/Library/TestPointCheckLib/DxeTestPointCheckLib.inf
  TestPointLib|MinPlatformPkg/Test/Library/TestPointLib/DxeTestPointLib.inf

[LibraryClasses.common.DXE_SMM_DRIVER]
  TestPointCheckLib|MinPlatformPkg/Test/Library/TestPointCheckLib/SmmTestPointCheckLib.inf
  TestPointLib|MinPlatformPkg/Test/Library/TestPointLib/SmmTestPointLib.inf

###################################################################################################
#
# Components Section - list of the modules and components that will be processed by compilation
#                      tools and the EDK II tools to generate PE32/PE32+/Coff image files.
#
# Note: The EDK II DSC file is not used to specify how compiled binary images get placed
#       into firmware volume images. This section is just a list of modules to compile from
#       source into UEFI-compliant binaries.
#       It is the FDF file that contains information on combining binary files into firmware
#       volume images, whose concept is beyond UEFI and is described in PI specification.
#       Binary modules do not need to be listed in this section, as they should be
#       specified in the FDF file. For example: Shell binary (Shell_Full.efi), FAT binary (Fat.efi),
#       Logo (Logo.bmp), and etc.
#       There may also be modules listed in this section that are not required in the FDF file,
#       When a module listed here is excluded from FDF file, then UEFI-compliant binary will be
#       generated for it, but the binary will not be put into any firmware volume.
#
###################################################################################################

[Components]

  MinPlatformPkg/Library/PeiLib/PeiLib.inf
  MinPlatformPkg/Library/PeiHobVariableLibFce/PeiHobVariableLibFce.inf
  MinPlatformPkg/Library/PeiHobVariableLibFce/PeiHobVariableLibFceOptSize.inf

  MinPlatformPkg/Acpi/AcpiTables/AcpiPlatform.inf
  MinPlatformPkg/Acpi/AcpiSmm/AcpiSmm.inf
  MinPlatformPkg/Acpi/AcpiSmm/AcpiStandaloneMm.inf
  MinPlatformPkg/Acpi/Library/DxeAslUpdateLib/DxeAslUpdateLib.inf
  MinPlatformPkg/Acpi/Library/BoardAcpiEnableLibNull/BoardAcpiEnableLibNull.inf
  MinPlatformPkg/Acpi/Library/BoardAcpiTableLibNull/BoardAcpiTableLibNull.inf
  MinPlatformPkg/Acpi/Library/MultiBoardAcpiSupportLib/DxeMultiBoardAcpiSupportLib.inf
  MinPlatformPkg/Acpi/Library/MultiBoardAcpiSupportLib/SmmMultiBoardAcpiSupportLib.inf
  MinPlatformPkg/Acpi/MinDsdt/MinDsdt.inf

  MinPlatformPkg/Bds/Library/BoardBootManagerLibNull/BoardBootManagerLibNull.inf
  MinPlatformPkg/Bds/Library/DxePlatformBootManagerLib/DxePlatformBootManagerLib.inf

  MinPlatformPkg/FspWrapper/SaveMemoryConfig/SaveMemoryConfig.inf
  MinPlatformPkg/FspWrapper/MpInfo2HobPei/MpInfo2HobPei.inf
  MinPlatformPkg/FspWrapper/Library/PeiFspWrapperHobProcessLib/PeiFspWrapperHobProcessLib.inf
  MinPlatformPkg/FspWrapper/Library/SecFspWrapperPlatformSecLib/SecFspWrapperPlatformSecLib.inf
  MinPlatformPkg/FspWrapper/Library/PeiFspWrapperPlatformLib/PeiFspWrapperPlatformLib.inf
  MinPlatformPkg/FspWrapper/Library/DxeFspWrapperPlatformLib/DxeFspWrapperPlatformLib.inf

  MinPlatformPkg/Library/CompressLib/CompressLib.inf
  MinPlatformPkg/Library/SetCacheMtrrLib/SetCacheMtrrLib.inf
  MinPlatformPkg/Library/SetCacheMtrrLib/SetCacheMtrrLibNull.inf
  MinPlatformPkg/Library/SerialPortTerminalLib/SerialPortTerminalLib.inf

  MinPlatformPkg/Hsti/HstiIbvPlatformDxe/HstiIbvPlatformDxe.inf

  MinPlatformPkg/Pci/Library/PciHostBridgeLibSimple/PciHostBridgeLibSimple.inf
  MinPlatformPkg/Pci/Library/PciSegmentInfoLibSimple/PciSegmentInfoLibSimple.inf

  MinPlatformPkg/PlatformInit/ReportFv/ReportFvPei.inf
  MinPlatformPkg/PlatformInit/PlatformInitPei/PlatformInitPreMem.inf
  MinPlatformPkg/PlatformInit/PlatformInitPei/PlatformInitPostMem.inf
  MinPlatformPkg/PlatformInit/PlatformInitDxe/PlatformInitDxe.inf
  MinPlatformPkg/PlatformInit/PlatformInitSmm/PlatformInitSmm.inf
  MinPlatformPkg/PlatformInit/Library/SecBoardInitLibNull/SecBoardInitLibNull.inf
  MinPlatformPkg/PlatformInit/Library/BoardInitLibNull/BoardInitLibNull.inf
  MinPlatformPkg/PlatformInit/Library/MultiBoardInitSupportLib/PeiMultiBoardInitSupportLib.inf
  MinPlatformPkg/PlatformInit/Library/MultiBoardInitSupportLib/DxeMultiBoardInitSupportLib.inf
  MinPlatformPkg/PlatformInit/Library/PeiReportFvLib/PeiReportFvLib.inf
  MinPlatformPkg/PlatformInit/Library/ReportCpuHobLib/ReportCpuHobLib.inf
  MinPlatformPkg/PlatformInit/SiliconPolicyPei/SiliconPolicyPeiPreMem.inf
  MinPlatformPkg/PlatformInit/SiliconPolicyPei/SiliconPolicyPeiPostMem.inf
  MinPlatformPkg/PlatformInit/SiliconPolicyDxe/SiliconPolicyDxe.inf
  MinPlatformPkg/PlatformInit/Library/SiliconPolicyInitLibNull/SiliconPolicyInitLibNull.inf
  MinPlatformPkg/PlatformInit/Library/SiliconPolicyUpdateLibNull/SiliconPolicyUpdateLibNull.inf

  MinPlatformPkg/Services/StallServicePei/StallServicePei.inf

  MinPlatformPkg/Test/Library/TestPointCheckLibNull/TestPointCheckLibNull.inf
  MinPlatformPkg/Test/Library/TestPointCheckLib/SecTestPointCheckLib.inf
  MinPlatformPkg/Test/Library/TestPointCheckLib/PeiTestPointCheckLib.inf
  MinPlatformPkg/Test/Library/TestPointCheckLib/DxeTestPointCheckLib.inf
  MinPlatformPkg/Test/Library/TestPointCheckLib/SmmTestPointCheckLib.inf
  MinPlatformPkg/Test/Library/TestPointLib/DxeTestPointLib.inf
  MinPlatformPkg/Test/Library/TestPointLib/PeiTestPointLib.inf
  MinPlatformPkg/Test/Library/TestPointLib/SmmTestPointLib.inf
  MinPlatformPkg/Test/TestPointStubDxe/TestPointStubDxe.inf
  MinPlatformPkg/Test/TestPointDumpApp/TestPointDumpApp.inf

  MinPlatformPkg/Tcg/Tcg2PlatformPei/Tcg2PlatformPei.inf
  MinPlatformPkg/Tcg/Tcg2PlatformDxe/Tcg2PlatformDxe.inf

  MinPlatformPkg/Library/BaseVariableReadLibNull/BaseVariableReadLibNull.inf
  MinPlatformPkg/Library/SmmVariableReadLib/StandaloneMmVariableReadLib.inf
  MinPlatformPkg/Library/SmmVariableWriteLib/StandaloneMmVariableWriteLib.inf
  MinPlatformPkg/Library/PeiVariableReadLib/PeiVariableReadLib.inf
  MinPlatformPkg/Library/DxeRuntimeVariableReadLib/DxeRuntimeVariableReadLib.inf
  MinPlatformPkg/Library/DxeRuntimeVariableWriteLib/DxeRuntimeVariableWriteLib.inf
  MinPlatformPkg/Library/SmmVariableReadLib/TraditionalMmVariableReadLib.inf
  MinPlatformPkg/Library/SmmVariableWriteLib/TraditionalMmVariableWriteLib.inf
  MinPlatformPkg/Library/BaseLargeVariableLib/BaseLargeVariableReadLib.inf
  MinPlatformPkg/Library/BaseLargeVariableLib/BaseLargeVariableWriteLib.inf

  MinPlatformPkg/Acpi/Library/PhatAcpiLib/DxePhatAcpiLib.inf

[BuildOptions]
  *_*_*_CC_FLAGS = -D DISABLE_NEW_DEPRECATED_INTERFACES
