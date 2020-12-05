{===============================================================================

  This Source Code Form is subject to the terms of the Mozilla Public
  License, v. 2.0. If a copy of the MPL was not distributed with this
  file, You can obtain one at http://mozilla.org/MPL/2.0/.

===============================================================================}

{$INCLUDE TypeDefinitions.Config.inc}

{$IFDEF SUPPORTS_REGION}{$REGION 'Documentation'}{$ENDIF}
/// <summary>
///   The main assumption of this unit is to simplify the naming of the basic
///   types found in Delphi environment and preserve them in optimised sizes
///   that will be identical for different platforms.
/// </summary>
/// <remarks>
///   Version: 0.1.4
/// </remarks>
{$IFDEF SUPPORTS_REGION}{$ENDREGION}{$ENDIF}
unit TypeDefinitions;

interface

{-------------------------------------------------------------------------------
  8-bit integer types.
-------------------------------------------------------------------------------}

type
{$IF (SizeOf(ShortInt) <> 1) OR (SizeOf(Byte) <> 1)}
 {$MESSAGE FATAL 'Wrong size of 8-bit integers!'}
{$IFEND}

  {$IFDEF SUPPORTS_REGION}{$REGION 'Documentation'}{$ENDIF}
  /// <summary>
  ///   8-bit signed integer.
  /// </summary>
  {$IFDEF SUPPORTS_REGION}{$ENDREGION}{$ENDIF}
  Int8 = ShortInt;

  {$IFDEF SUPPORTS_REGION}{$REGION 'Documentation'}{$ENDIF}
  /// <summary>
  ///   8-bit unsigned integer.
  /// </summary>
  {$IFDEF SUPPORTS_REGION}{$ENDREGION}{$ENDIF}
  UInt8 = Byte;

  {$IFDEF SUPPORTS_REGION}{$REGION 'Documentation'}{$ENDIF}
  /// <summary>
  ///   Pointer to 8-bit signed integer.
  /// </summary>
  {$IFDEF SUPPORTS_REGION}{$ENDREGION}{$ENDIF}
  PInt8 = ^Int8;

  {$IFDEF SUPPORTS_REGION}{$REGION 'Documentation'}{$ENDIF}
  /// <summary>
  ///   Pointer to 8-bit unsigned integer.
  /// </summary>
  {$IFDEF SUPPORTS_REGION}{$ENDREGION}{$ENDIF}
  PUInt8 = ^UInt8;

{-------------------------------------------------------------------------------
  16-bit integer types.
-------------------------------------------------------------------------------}

type
{$IF (SizeOf(SmallInt) <> 2) OR (SizeOf(Word) <> 2)}
 {$MESSAGE FATAL 'Wrong size of 16-bit integers!'}
{$IFEND}

  {$IFDEF SUPPORTS_REGION}{$REGION 'Documentation'}{$ENDIF}
  /// <summary>
  ///   16-bit signed integer.
  /// </summary>
  {$IFDEF SUPPORTS_REGION}{$ENDREGION}{$ENDIF}
  Int16 = SmallInt;

  {$IFDEF SUPPORTS_REGION}{$REGION 'Documentation'}{$ENDIF}
  /// <summary>
  ///   16-bit unsigned integer.
  /// </summary>
  {$IFDEF SUPPORTS_REGION}{$ENDREGION}{$ENDIF}
  UInt16 = Word;

  {$IFDEF SUPPORTS_REGION}{$REGION 'Documentation'}{$ENDIF}
  /// <summary>
  ///   Pointer to 16-bit signed integer.
  /// </summary>
  {$IFDEF SUPPORTS_REGION}{$ENDREGION}{$ENDIF}
  PInt16 = ^Int16;

  {$IFDEF SUPPORTS_REGION}{$REGION 'Documentation'}{$ENDIF}
  /// <summary>
  ///   Pointer to 16-bit unsigned integer.
  /// </summary>
  {$IFDEF SUPPORTS_REGION}{$ENDREGION}{$ENDIF}
  PUInt16 = ^UInt16;

{-------------------------------------------------------------------------------
  32-bit integer types.
-------------------------------------------------------------------------------}

type
{$IF (SizeOf(NativeInt) = 4) AND (SizeOf(NativeUInt) = 4)}
  {$IFDEF SUPPORTS_REGION}{$REGION 'Documentation'}{$ENDIF}
  /// <summary>
  ///   32-bit signed integer.
  /// </summary>
  {$IFDEF SUPPORTS_REGION}{$ENDREGION}{$ENDIF}
  Int32 = NativeInt;

  {$IFDEF SUPPORTS_REGION}{$REGION 'Documentation'}{$ENDIF}
  /// <summary>
  ///   32-bit unsigned integer.
  /// </summary>
  {$IFDEF SUPPORTS_REGION}{$ENDREGION}{$ENDIF}
  UInt32 = NativeUInt;
{$ELSE}
 {$IF (SizeOf(Integer) <> 4) OR (SizeOf(Cardinal) <> 4)}
  {$MESSAGE FATAL 'Wrong size of 32-bit integers!'}
 {$ELSE}
  {$IFDEF SUPPORTS_REGION}{$REGION 'Documentation'}{$ENDIF}
  /// <summary>
  ///   32-bit signed integer.
  /// </summary>
  {$IFDEF SUPPORTS_REGION}{$ENDREGION}{$ENDIF}
  Int32 = Integer;

  {$IFDEF SUPPORTS_REGION}{$REGION 'Documentation'}{$ENDIF}
  /// <summary>
  ///   32-bit unsigned integer.
  /// </summary>
  {$IFDEF SUPPORTS_REGION}{$ENDREGION}{$ENDIF}
  UInt32 = Cardinal;
 {$IFEND}
{$IFEND}

  {$IFDEF SUPPORTS_REGION}{$REGION 'Documentation'}{$ENDIF}
  /// <summary>
  ///   Pointer to 32-bit signed integer.
  /// </summary>
  {$IFDEF SUPPORTS_REGION}{$ENDREGION}{$ENDIF}
  PInt32 = ^Int32;

  {$IFDEF SUPPORTS_REGION}{$REGION 'Documentation'}{$ENDIF}
  /// <summary>
  ///   Pointer to 32-bit unsigned integer.
  /// </summary>
  {$IFDEF SUPPORTS_REGION}{$ENDREGION}{$ENDIF}
  PUInt32 = ^UInt32;

{-------------------------------------------------------------------------------
  64-bit integer types.
-------------------------------------------------------------------------------}

type
{$IFDEF TD_UInt64_NotNative}
  {$IFDEF SUPPORTS_REGION}{$REGION 'Documentation'}{$ENDIF}
  /// <summary>
  ///   64-bit unsigned integer.
  /// </summary>
  {$IFDEF SUPPORTS_REGION}{$ENDREGION}{$ENDIF}
  UInt64 = Int64;
{$ENDIF !TD_UInt64_NotNative}

{$IF (SizeOf(Int64) <> 8) OR (SizeOf(UInt64) <> 8)}
 {$MESSAGE FATAL 'Wrong size of 64-bit integers!'}
{$IFEND}

  {$IFDEF SUPPORTS_REGION}{$REGION 'Documentation'}{$ENDIF}
  /// <summary>
  ///   Pointer to 64-bit unsigned integer.
  /// </summary>
  {$IFDEF SUPPORTS_REGION}{$ENDREGION}{$ENDIF}
  PUInt64 = ^UInt64;

  {$IFDEF SUPPORTS_REGION}{$REGION 'Documentation'}{$ENDIF}
  /// <summary>
  ///   64-bit unsigned integer.
  /// </summary>
  {$IFDEF SUPPORTS_REGION}{$ENDREGION}{$ENDIF}
  QuadWord = UInt64;

  {$IFDEF SUPPORTS_REGION}{$REGION 'Documentation'}{$ENDIF}
  /// <summary>
  ///   Pointer to 64-bit unsigned integer.
  /// </summary>
  {$IFDEF SUPPORTS_REGION}{$ENDREGION}{$ENDIF}
  PQuadWord = ^QuadWord;

{-------------------------------------------------------------------------------
  Half-byte.
-------------------------------------------------------------------------------}

type
  {$IFDEF SUPPORTS_REGION}{$REGION 'Documentation'}{$ENDIF}
  /// <summary>
  ///   A nibble is a four-bit aggregation or half an octet. It is also known
  ///   as half-byte or tetrade. In a networking or telecommunication context,
  ///   the nibble is often called a semi-octet, quadbit, or quartet. A nibble
  ///   has sixteen (24) possible values. A nibble can be represented by a
  ///   single hexadecimal digit and called a hex digit.
  /// </summary>
  {$IFDEF SUPPORTS_REGION}{$ENDREGION}{$ENDIF}
  TNibble = 0..15;

  {$IFDEF SUPPORTS_REGION}{$REGION 'Documentation'}{$ENDIF}
  /// <summary>
  ///   Pointer to a nibble value.
  /// </summary>
  {$IFDEF SUPPORTS_REGION}{$ENDREGION}{$ENDIF}
  PNibble = ^TNibble;

  {$IFDEF SUPPORTS_REGION}{$REGION 'Documentation'}{$ENDIF}
  /// <summary>
  ///   Shortcut name for <see cref="TypeDefinitions|TNibble" />.
  /// </summary>
  {$IFDEF SUPPORTS_REGION}{$ENDREGION}{$ENDIF}
  Nibble = TNibble;

{-------------------------------------------------------------------------------
  Pointer releated types.
-------------------------------------------------------------------------------}

type
  {$IFDEF SUPPORTS_REGION}{$REGION 'Documentation'}{$ENDIF}
  /// <summary>
  ///   Pointer to signed integer type.
  /// </summary>
  {$IFDEF SUPPORTS_REGION}{$ENDREGION}{$ENDIF}
  PPtrInt = ^PtrInt;

  {$IFDEF SUPPORTS_REGION}{$REGION 'Documentation'}{$ENDIF}
  /// <summary>
  ///   Pointer to unsigned integer.
  /// </summary>
  {$IFDEF SUPPORTS_REGION}{$ENDREGION}{$ENDIF}
  PPtrUInt = ^PtrUInt;

  {$IFDEF SUPPORTS_REGION}{$REGION 'Documentation'}{$ENDIF}
  /// <summary>
  ///   Pointer type represented as a signed integer.
  /// </summary>
  {$IFDEF SUPPORTS_REGION}{$ENDREGION}{$ENDIF}
  PtrInt =
  {$IFDEF DELPHIXE2_UP}
    NativeInt
  {$ELSE}
    Integer
  {$ENDIF ~DELPHIXE2_UP};

  {$IFDEF SUPPORTS_REGION}{$REGION 'Documentation'}{$ENDIF}
  /// <summary>
  ///   Pointer type represented as an unsigned integer.
  /// </summary>
  {$IFDEF SUPPORTS_REGION}{$ENDREGION}{$ENDIF}
  PtrUInt =
  {$IFDEF DELPHIXE2_UP}
    NativeUInt
  {$ELSE}
    Cardinal
  {$ENDIF ~DELPHIXE2_UP};

{-------------------------------------------------------------------------------
  Float types.
-------------------------------------------------------------------------------}

type
  {$IFDEF SUPPORTS_REGION}{$REGION 'Documentation'}{$ENDIF}
  /// <summary>
  ///   Pointer to 32-bit float type.
  /// </summary>
  {$IFDEF SUPPORTS_REGION}{$ENDREGION}{$ENDIF}
  PFloat32 = ^Float32;

  {$IFDEF SUPPORTS_REGION}{$REGION 'Documentation'}{$ENDIF}
  /// <summary>
  ///   32-bit float type.
  /// </summary>
  {$IFDEF SUPPORTS_REGION}{$ENDREGION}{$ENDIF}
  Float32 = Single;

{$IF (SizeOf(Double) <> 8)}
  {$MESSAGE FATAL 'Wrong size of 64-bit float!'}
{$IFEND}

  {$IFDEF SUPPORTS_REGION}{$REGION 'Documentation'}{$ENDIF}
  /// <summary>
  ///   Pointer to 64-bit float type.
  /// </summary>
  {$IFDEF SUPPORTS_REGION}{$ENDREGION}{$ENDIF}
  PFloat64 = ^Float64;

  {$IFDEF SUPPORTS_REGION}{$REGION 'Documentation'}{$ENDIF}
  /// <summary>
  ///   64-bit float type.
  /// </summary>
  {$IFDEF SUPPORTS_REGION}{$ENDREGION}{$ENDIF}
  Float64 = Double;

  {$IFDEF SUPPORTS_REGION}{$REGION 'Documentation'}{$ENDIF}
  /// <summary>
  ///   Pointer to Float type.
  /// </summary>
  {$IFDEF SUPPORTS_REGION}{$ENDREGION}{$ENDIF}
  PFloat = ^Float;

  {$IFDEF SUPPORTS_REGION}{$REGION 'Documentation'}{$ENDIF}
  /// <summary>
  ///   Float type. It can be 32-bit float type or 64-bit float type depending
  ///   of TD_SCIENTIFIC_MODE directive.
  /// </summary>
  {$IFDEF SUPPORTS_REGION}{$ENDREGION}{$ENDIF}
  Float =
  {$IFDEF TD_SCIENTIFIC_MODE}
    Float64
  {$ELSE}
    Float32
  {$ENDIF ~TD_SCIENTIFIC_MODE};

const
  {$IFDEF SUPPORTS_REGION}{$REGION 'Documentation'}{$ENDIF}
  /// <summary>
  ///   A special value that determines precision limit when comparing float
  ///   values.
  /// </summary>
  {$IFDEF SUPPORTS_REGION}{$ENDREGION}{$ENDIF}
  FloatEpsilon: Float = 0.00001;

{-------------------------------------------------------------------------------
  String types.
-------------------------------------------------------------------------------}
type
{$IF NOT DECLARED(UnicodeChar)}
  {$IFDEF SUPPORTS_REGION}{$REGION 'Documentation'}{$ENDIF}
  /// <summary>
  ///   Unicode char type.
  /// </summary>
  {$IFDEF SUPPORTS_REGION}{$ENDREGION}{$ENDIF}
  UnicodeChar = WideChar;
{$IFEND}

{$IF NOT DECLARED(UnicodeString)}
  {$IFDEF SUPPORTS_REGION}{$REGION 'Documentation'}{$ENDIF}
  /// <summary>
  ///   Unicode string type.
  /// </summary>
  {$IFDEF SUPPORTS_REGION}{$ENDREGION}{$ENDIF}
  UnicodeString = WideString;
{$IFEND}

  {$IFDEF SUPPORTS_REGION}{$REGION 'Documentation'}{$ENDIF}
  /// <summary>
  ///   Pointer to Unicode char type.
  /// </summary>
  {$IFDEF SUPPORTS_REGION}{$ENDREGION}{$ENDIF}
  PUnicodeChar = ^UnicodeChar;

  {$IFDEF SUPPORTS_REGION}{$REGION 'Documentation'}{$ENDIF}
  /// <summary>
  ///   Pointer to Unicode string type.
  /// </summary>
  {$IFDEF SUPPORTS_REGION}{$ENDREGION}{$ENDIF}
  PUnicodeString = ^UnicodeString;

{$IF NOT DECLARED(UTF8Char)}
  {$IFDEF SUPPORTS_REGION}{$REGION 'Documentation'}{$ENDIF}
  /// <summary>
  ///   UTF8 char type.
  /// </summary>
  {$IFDEF SUPPORTS_REGION}{$ENDREGION}{$ENDIF}
  UTF8Char = type AnsiChar;
{$IFEND}

  {$IFDEF SUPPORTS_REGION}{$REGION 'Documentation'}{$ENDIF}
  /// <summary>
  ///   Pointer to UTF8 char type.
  /// </summary>
  {$IFDEF SUPPORTS_REGION}{$ENDREGION}{$ENDIF}
  PUTF8Char = ^UTF8Char;

  {$IFDEF SUPPORTS_REGION}{$REGION 'Documentation'}{$ENDIF}
  /// <summary>
  ///   Pointer to <see cref="TypeDefinitions|UniString" />. It isn't
  ///   recommended to use pointer to strings, so this is mostly for internal
  ///   use only.
  /// </summary>
  {$IFDEF SUPPORTS_REGION}{$ENDREGION}{$ENDIF}
  PUniString = ^UniString;

  {$IFDEF SUPPORTS_REGION}{$REGION 'Documentation'}{$ENDIF}
  /// <summary>
  ///   General-purpose string type that is best optimised for Unicode usage.
  ///   Typically, each character uses UTF-16 encoding, but it may vary
  ///   depending on platform.
  /// </summary>
  {$IFDEF SUPPORTS_REGION}{$ENDREGION}{$ENDIF}
  UniString =
  {$IFDEF DELPHI_LEGACY}
    WideString
  {$ELSE}
   {$IFDEF MSDOS}
    UTF8String
   {$ELSE}
    UnicodeString
   {$ENDIF ~MSDOS}
  {$ENDIF ~DELHI_LEGACY};

  {$IFDEF SUPPORTS_REGION}{$REGION 'Documentation'}{$ENDIF}
  /// <summary>
  ///   Pointer to <see cref="TypeDefinitions|StdString" />. It isn't
  ///   recommended to use pointer to strings, so this is mostly for internal
  ///   use only.
  /// </summary>
  {$IFDEF SUPPORTS_REGION}{$ENDREGION}{$ENDIF}
  PStdString = ^StdString;

  {$IFDEF SUPPORTS_REGION}{$REGION 'Documentation'}{$ENDIF}
  /// <summary>
  ///   General-purpose string type that is best optimised for standard usage
  ///   such as file names, paths, XML tags and attributes and so on. It may
  ///   also contain Unicode-encoded text, either UTF-8 or UTF-16 depending on
  ///   platform and compiler.
  /// </summary>
  {$IFDEF SUPPORTS_REGION}{$ENDREGION}{$ENDIF}
  StdString =
  {$IFDEF FPC}
    UTF8String
  {$ELSE}
    String
  {$ENDIF ~FPC};

  {$IFDEF SUPPORTS_REGION}{$REGION 'Documentation'}{$ENDIF}
  /// <summary>
  ///   Pointer to <see cref="TypeDefinitions|StdChar" />.
  /// </summary>
  {$IFDEF SUPPORTS_REGION}{$ENDREGION}{$ENDIF}
  PStdChar =
  {$IFDEF DELPHI}
    PChar
  {$ELSE}
    ^StdChar
  {$ENDIF ~DELPHI};

  {$IFDEF SUPPORTS_REGION}{$REGION 'Documentation'}{$ENDIF}
  /// <summary>
  ///   General-purpose character type optimised for standard usage and base
  ///   element of <see cref="TypeDefinitions|StdString" />.
  /// </summary>
  {$IFDEF SUPPORTS_REGION}{$ENDREGION}{$ENDIF}
  StdChar =
  {$IFDEF FPC}
    AnsiChar
  {$ELSE}
   {$IFDEF DELPHI_LEGACY}
    AnsiChar
   {$ELSE}
    Char
   {$ENDIF ~DELPHI_LEGACY}
  {$ENDIF ~FPC};

  {$IFDEF SUPPORTS_REGION}{$REGION 'Documentation'}{$ENDIF}
  /// <summary>
  ///   Pointer to <see cref="UniChar" />.
  /// </summary>
  {$IFDEF SUPPORTS_REGION}{$ENDREGION}{$ENDIF}
  PUniChar =
  {$IFDEF FPC}
    ^UniChar
  {$ELSE}
   {$IFDEF DELPHI_LEGACY}
    PWideChar
   {$ELSE}
    PChar
   {$ENDIF ~DELPHI_LEGACY}
  {$ENDIF ~FPC};

  {$IFDEF SUPPORTS_REGION}{$REGION 'Documentation'}{$ENDIF}
  /// <summary>
  ///   General-purpose character type optimised for Unicode usage and is base
  ///   element of <see cref="TypeDefinitions|UniString" />.
  /// </summary>
  {$IFDEF SUPPORTS_REGION}{$ENDREGION}{$ENDIF}
  UniChar =
  {$IFDEF FPC}
    WideChar
  {$ELSE}
   {$IFDEF DELPHI_LEGACY}
    WideChar
   {$ELSE}
    Char
   {$ENDIF ~DELPHI_LEGACY}
  {$ENDIF ~FPC};

{-------------------------------------------------------------------------------
  Size types.
-------------------------------------------------------------------------------}
type
  {$IFDEF SUPPORTS_REGION}{$REGION 'Documentation'}{$ENDIF}
  /// <summary>
  ///   String size type.
  /// </summary>
  {$IFDEF SUPPORTS_REGION}{$ENDREGION}{$ENDIF}
  TStrSize = Int32;

  {$IFDEF SUPPORTS_REGION}{$REGION 'Documentation'}{$ENDIF}
  /// <summary>
  ///   Pointer to string size type.
  /// </summary>
  {$IFDEF SUPPORTS_REGION}{$ENDREGION}{$ENDIF}
  PStrSize = ^TStrSize;

  {$IFDEF SUPPORTS_REGION}{$REGION 'Documentation'}{$ENDIF}
  /// <summary>
  ///   Memory size type.
  /// </summary>
  {$IFDEF SUPPORTS_REGION}{$ENDREGION}{$ENDIF}
  TMemSize = PtrUInt;

  {$IFDEF SUPPORTS_REGION}{$REGION 'Documentation'}{$ENDIF}
  /// <summary>
  ///   Pointer to memory size type.
  /// </summary>
  {$IFDEF SUPPORTS_REGION}{$ENDREGION}{$ENDIF}
  PMemSize = ^TMemSize;

  {$IFDEF SUPPORTS_REGION}{$REGION 'Documentation'}{$ENDIF}
  /// <summary>
  ///   Pointer to <see cref="SizeInt" />.
  /// </summary>
  {$IFDEF SUPPORTS_REGION}{$ENDREGION}{$ENDIF}
  PSizeInt = ^SizeInt;

  {$IFDEF SUPPORTS_REGION}{$REGION 'Documentation'}{$ENDIF}
  /// <summary>
  ///   Signed integer data type having the same size as pointer on the given
  ///   platform.
  /// </summary>
  {$IFDEF SUPPORTS_REGION}{$ENDREGION}{$ENDIF}
  SizeInt = PtrInt;

  {$IFDEF SUPPORTS_REGION}{$REGION 'Documentation'}{$ENDIF}
  /// <summary>
  ///   Pointer to <see cref="SizeUInt" />.
  /// </summary>
  {$IFDEF SUPPORTS_REGION}{$ENDREGION}{$ENDIF}
  PSizeUInt = ^SizeUInt;

  {$IFDEF SUPPORTS_REGION}{$REGION 'Documentation'}{$ENDIF}
  /// <summary>
  ///   Unsigned integer data type having the same size as pointer on the given
  ///   platform.
  /// </summary>
  {$IFDEF SUPPORTS_REGION}{$ENDREGION}{$ENDIF}
  SizeUInt = PtrUInt;

{-------------------------------------------------------------------------------
  General use types.
-------------------------------------------------------------------------------}
type
  {$IFDEF SUPPORTS_REGION}{$REGION 'Documentation'}{$ENDIF}
  /// <summary>
  ///   Signed integer data type that can be commonly used in your framework.
  ///   Typically, it is 32-bit and an equivalent of <i>Integer</i>, unless <i>
  ///   TD_SCIENTIFIC_MODE_MAX</i> directive is enabled, in which case it
  ///   becomes 64-bit and equivalent of <i>Int64</i>.
  /// </summary>
  {$IFDEF SUPPORTS_REGION}{$ENDREGION}{$ENDIF}
  StdInt =
  {$IFDEF TD_SCIENTIFIC_MODE_MAX}
   {$IFDEF CPUX64}
    NativeInt;
   {$ELSE}
    Int64;
   {$ENDIF ~CPUX64}
  {$ELSE}
    Integer;
  {$ENDIF ~TD_SCIENTIFIC_MODE_MAX}

  {$IFDEF SUPPORTS_REGION}{$REGION 'Documentation'}{$ENDIF}
  /// <summary>
  ///   Pointer to StdInt.
  /// </summary>
  {$IFDEF SUPPORTS_REGION}{$ENDREGION}{$ENDIF}
  PStdInt = ^StdInt;

  {$IFDEF SUPPORTS_REGION}{$REGION 'Documentation'}{$ENDIF}
  /// <summary>
  ///   Unsigned integer data type that can be commonly used in your framework.
  ///   Typically, it is 32-bit and an equivalent of <i>Cardinal</i>, unless <i>
  ///   TD_SCIENTIFIC_MODE_MAX</i> is enabled, in which case it becomes 64-bit
  ///   and equivalent of <i>UInt64.</i>
  /// </summary>
  {$IFDEF SUPPORTS_REGION}{$ENDREGION}{$ENDIF}
  StdUInt =
  {$IFDEF TD_SCIENTIFIC_MODE_MAX}
   {$IFDEF CPUX64}
    NativeUInt;
   {$ELSE}
    UInt64;
   {$ENDIF ~CPUX64}
  {$ELSE}
    Cardinal;
  {$ENDIF ~TD_SCIENTIFIC_MODE_MAX}

  {$IFDEF SUPPORTS_REGION}{$REGION 'Documentation'}{$ENDIF}
  /// <summary>
  ///   Pointer to StdUInt.
  /// </summary>
  {$IFDEF SUPPORTS_REGION}{$ENDREGION}{$ENDIF}
  PStdUInt = ^StdUInt;

implementation

end.
