{===============================================================================

  This Source Code Form is subject to the terms of the Mozilla Public
  License, v. 2.0. If a copy of the MPL was not distributed with this
  file, You can obtain one at http://mozilla.org/MPL/2.0/.

===============================================================================}

{$IFNDEF TD_CONFIG_INC}
{$DEFINE TD_CONFIG_INC}

{ Include jedi.inc file. }
{$INCLUDE jedi\jedi.inc}

{$IFDEF SUPPORTS_LEGACYIFEND}{$LEGACYIFEND ON}{$ENDIF}

{$UNDEF TD_ScientificModeMax}
{$UNDEF TD_ScientificFloatMode}
{$UNDEF TD_ScientificStdMode}

{-- Remove dot ('.') to enable specific feature in Lib.TypeDefinitions --------}

{ TD_ScientificModeMax changes Float type, StdInt type and StdUInt type from
  32-bit type value to 64-bit type value. Enabling this feature makes those
  types more precise in big calculations, but much slower!
  Use it with caution. }
{.$DEFINE TD_ScientificModeMax}

{ TD_ScientificFloatMode changes Float type from 32-bit type value to 64-bit
  type value. Enabling this feature makes this type more precise in big
  calculations, but much slower! Use it with caution. }
{.$DEFINE TD_ScientificFloatMode}

{ TD_ScientificStdMode changes StdInt type and StdUInt type from 32-bit type
  value to 64-bit type value. Enabling this feature makes those types more
  precise in big calculations, but mucj slower! Use it with caution. }
{.$DEFINE TD_ScientificStdMode}

{------------------------------------------------------------------------------}

{$IFDEF TD_ScientificModeMax}
 {$DEFINE TD_ScientificFloatMode}
 {$DEFINE TD_ScientificStdMode}
{$ENDIF !TD_ScientificModeMax}

{$H+}

{$UNDEF TD_UInt64_NotNative}
{$IF ((DEFINED(DCC) OR DECLARED(CompilerVersion)) AND NOT DEFINED(FPC))}
 { Assumes Delphi (DCC symbol is not defined in older Delphi than XE2) }
 {$IF CompilerVersion <= 17}
  {$DEFINE TD_UInt64_NotNative}
 {$IFEND}
{$IFEND}

{$ENDIF !TD_CONFIG_INC}

