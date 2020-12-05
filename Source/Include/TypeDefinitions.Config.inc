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

{ Remove dot ('.') if you need to uses Scientific mode in Lib.TypeDefinitions.
  Scientific mode changes Float type from 32-bit float type to 64-bit float
  type. This make Float type more precise in big calculations, but much
  slower! }
{.$DEFINE TD_SCIENTIFIC_MODE_MAX}
{.$DEFINE TD_SCIENTIFIC_MODE}

{$IFDEF TD_SCIENTIFIC_MODE_MAX}
 {$DEFINE TD_SCIENTIFIC_MODE}
{$ENDIF ~TD_SCIENTIFIC_MODE_MAX}

{$UNDEF TD_UInt64_NotNative}
{$IF (DEFINED(DCC) OR DECLARED(CompilerVersion)) AND NOT DEFINED(FPC)}
 { Assumes Delphi (DCC symbol is not defined in older Delphi than XE2) }
 {$IF (CompilerVersion <= 17)}
  {$DEFINE TD_UInt64_NotNative}
 {$IFEND}
{$IFEND}

{$IFDEF FPC}
 {$MODE Delphi}
{$ENDIF ~FPC}

{$ENDIF ~TD_CONFIG_INC}

