{===============================================================================

  This Source Code Form is subject to the terms of the Mozilla Public
  License, v. 2.0. If a copy of the MPL was not distributed with this
  file, You can obtain one at http://mozilla.org/MPL/2.0/.

===============================================================================}

{-------------------------------------------------------------------------------
 Type definitions

 The main assumption of this library is to simplify the naming of the basic
 types found in Delphi environment and preserve them in optimised sizes that
 will be identical for different platforms and Delphi versions.

 Version 0.1.5

 Copyright (c) 2018-2020, Piotr Domañski

 Last change:
   07-12-2020

 Changelog:
   For detailed changelog and history please refer to this git repository:
     https://github.com/dompiotr85/Lib.TypeDefinitions

 Contacts:
   Piotr Domañski (dom.piotr.85@gmail.com)

 Dependencies:
   JEDI common files (https://github.com/project-jedi/jedi)
-------------------------------------------------------------------------------}

{$IFDEF SUPPORTS_REGION}{$REGION 'Documentation'}{$ENDIF}
/// <summary>
///   The main assumption of this unit is to simplify the naming of the basic
///   types found in Delphi environment and preserve them in optimised sizes
///   that will be identical for different platforms and Delphi versions.
/// </summary>
{$IFDEF SUPPORTS_REGION}{$ENDREGION}{$ENDIF}
unit TypeDefinitions;

{$INCLUDE TypeDefinitions.Config.inc}

interface

const
  NativeUInt64 = {$IFDEF TD_UInt64_NotNative}False{$ELSE}True{$ENDIF};

{-- Integers ------------------------------------------------------------------}

type
{$IF (SizeOf(ShortInt) <> 1) OR (SizeOf(Byte) <> 1)}
 {$MESSAGE FATAL 'Wrong size of 8-bit integers!'}
{$IFEND}

  {$IFDEF SUPPORTS_REGION}{$REGION 'Documentation'}{$ENDIF}
  /// <summary>
  ///   The 8-bit signed integer.
  /// </summary>
  {$IFDEF SUPPORTS_REGION}{$ENDREGION}{$ENDIF}
  Int8 = ShortInt;

  {$IFDEF SUPPORTS_REGION}{$REGION 'Documentation'}{$ENDIF}
  /// <summary>
  ///   A pointer to the 8-bit signed integer.
  /// </summary>
  {$IFDEF SUPPORTS_REGION}{$ENDREGION}{$ENDIF}
  PInt8 = ^Int8;

  {$IFDEF SUPPORTS_REGION}{$REGION 'Documentation'}{$ENDIF}
  /// <summary>
  ///   A double pointer to the 8-bit unsigned integer.
  /// </summary>
  {$IFDEF SUPPORTS_REGION}{$ENDREGION}{$ENDIF}
  PPInt8 = ^PInt8;

  {$IFDEF SUPPORTS_REGION}{$REGION 'Documentation'}{$ENDIF}
  /// <summary>
  ///   The 8-bit unsigned integer.
  /// </summary>
  {$IFDEF SUPPORTS_REGION}{$ENDREGION}{$ENDIF}
  UInt8 = Byte;

  {$IFDEF SUPPORTS_REGION}{$REGION 'Documentation'}{$ENDIF}
  /// <summary>
  ///   A pointer to the 8-bit unsigned integer.
  /// </summary>
  {$IFDEF SUPPORTS_REGION}{$ENDREGION}{$ENDIF}
  PUInt8 = ^UInt8;

  {$IFDEF SUPPORTS_REGION}{$REGION 'Documentation'}{$ENDIF}
  /// <summary>
  ///   A double pointer to the 8-bit unsigned integer.
  /// </summary>
  {$IFDEF SUPPORTS_REGION}{$ENDREGION}{$ENDIF}
  PPUInt8 = ^PUInt8;

{$IF (SizeOf(SmallInt) <> 2) OR (SizeOf(Word) <> 2)}
 {$MESSAGE FATAL 'Wrong size of 16-bit integers!'}
{$IFEND}

  {$IFDEF SUPPORTS_REGION}{$REGION 'Documentation'}{$ENDIF}
  /// <summary>
  ///   The 16-bit signed integer.
  /// </summary>
  {$IFDEF SUPPORTS_REGION}{$ENDREGION}{$ENDIF}
  Int16 = SmallInt;

  {$IFDEF SUPPORTS_REGION}{$REGION 'Documentation'}{$ENDIF}
  /// <summary>
  ///   A pointer to the 16-bit signed integer.
  /// </summary>
  {$IFDEF SUPPORTS_REGION}{$ENDREGION}{$ENDIF}
  PInt16 = ^Int16;

  {$IFDEF SUPPORTS_REGION}{$REGION 'Documentation'}{$ENDIF}
  /// <summary>
  ///   A double pointer to the 16-bit signed integer.
  /// </summary>
  {$IFDEF SUPPORTS_REGION}{$ENDREGION}{$ENDIF}
  PPInt16 = ^PInt16;

  {$IFDEF SUPPORTS_REGION}{$REGION 'Documentation'}{$ENDIF}
  /// <summary>
  ///   The 16-bit unsigned integer.
  /// </summary>
  {$IFDEF SUPPORTS_REGION}{$ENDREGION}{$ENDIF}
  UInt16 = Word;

  {$IFDEF SUPPORTS_REGION}{$REGION 'Documentation'}{$ENDIF}
  /// <summary>
  ///   A pointer to the 16-bit unsigned integer.
  /// </summary>
  {$IFDEF SUPPORTS_REGION}{$ENDREGION}{$ENDIF}
  PUInt16 = ^UInt16;

  {$IFDEF SUPPORTS_REGION}{$REGION 'Documentation'}{$ENDIF}
  /// <summary>
  ///   A double pointer to the 16-bit unsigned integer.
  /// </summary>
  {$IFDEF SUPPORTS_REGION}{$ENDREGION}{$ENDIF}
  PPUInt16 = ^PUInt16;

  {$IFDEF SUPPORTS_REGION}{$REGION 'Documentation'}{$ENDIF}
  /// <summary>
  ///   The 32-bit signed integer.
  /// </summary>
  {$IFDEF SUPPORTS_REGION}{$ENDREGION}{$ENDIF}
  Int32 =
{$IF SizeOf(LongInt) = 4}
    LongInt;
{$ELSE}
 {$IF SizeOf(Integer) <> 4}
  {$MESSAGE FATAL 'Wrong size of 32-bit integers!'}
 {$ELSE}
    Integer;
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
  ///   Double pointer to 32-bit signed integer.
  /// </summary>
  {$IFDEF SUPPORTS_REGION}{$ENDREGION}{$ENDIF}
  PPInt32 = ^PInt32;

  {$IFDEF SUPPORTS_REGION}{$REGION 'Documentation'}{$ENDIF}
  /// <summary>
  ///   The 32-bit unsigned integer.
  /// </summary>
  {$IFDEF SUPPORTS_REGION}{$ENDREGION}{$ENDIF}
  UInt32 =
{$IF SizeOf(LongWord) = 4}
    LongWord;
{$ELSE}
 {$IF SizeOf(Cardinal) <> 4}
  {$MESSAGE FATAL 'Wrong size of 32-bit integers!'}
 {$ELSE}
    Cardinal;
 {$IFEND}
{$IFEND}

  {$IFDEF SUPPORTS_REGION}{$REGION 'Documentation'}{$ENDIF}
  /// <summary>
  ///   A pointer to the 32-bit unsigned integer.
  /// </summary>
  {$IFDEF SUPPORTS_REGION}{$ENDREGION}{$ENDIF}
  PUInt32 = ^UInt32;

  {$IFDEF SUPPORTS_REGION}{$REGION 'Documentation'}{$ENDIF}
  /// <summary>
  ///   A double pointer to the 32-bit unsigned integer.
  /// </summary>
  {$IFDEF SUPPORTS_REGION}{$ENDREGION}{$ENDIF}
  PPUInt32 = ^PUInt32;

  {$IFDEF SUPPORTS_REGION}{$REGION 'Documentation'}{$ENDIF}
  /// <summary>
  ///   A double word as an unsigned 32-bit integer.
  /// </summary>
  {$IFDEF SUPPORTS_REGION}{$ENDREGION}{$ENDIF}
  DoubleWord = UInt32;

  {$IFDEF SUPPORTS_REGION}{$REGION 'Documentation'}{$ENDIF}
  /// <summary>
  ///   A pointer to a double word as an unsigned 32-bit integer.
  /// </summary>
  {$IFDEF SUPPORTS_REGION}{$ENDREGION}{$ENDIF}
  PDoubleWord = ^DoubleWord;

  {$IFDEF SUPPORTS_REGION}{$REGION 'Documentation'}{$ENDIF}
  /// <summary>
  ///   A double pointer to a double word as an unsigned 32-bit integer.
  /// </summary>
  {$IFDEF SUPPORTS_REGION}{$ENDREGION}{$ENDIF}
  PPDoubleWord = ^PDoubleWord;

  {$IFDEF SUPPORTS_REGION}{$REGION 'Documentation'}{$ENDIF}
  /// <summary>
  ///   The alias name for <see cref="TypeDefinitions|DoubleWord" />.
  /// </summary>
  {$IFDEF SUPPORTS_REGION}{$ENDREGION}{$ENDIF}
  DWord = DoubleWord;

  {$IFDEF SUPPORTS_REGION}{$REGION 'Documentation'}{$ENDIF}
  /// <summary>
  ///   A pointer to the alias name of <see cref="TypeDefinitions|DoubleWord" />.
  /// </summary>
  {$IFDEF SUPPORTS_REGION}{$ENDREGION}{$ENDIF}
  PDWord = ^DWord;

  {$IFDEF SUPPORTS_REGION}{$REGION 'Documentation'}{$ENDIF}
  /// <summary>
  ///   A double pointer to the alias name of <see cref="TypeDefinitions|DoubleWord" />.
  /// </summary>
  {$IFDEF SUPPORTS_REGION}{$ENDREGION}{$ENDIF}
  PPDWord = ^PDWord;

{$IF (SizeOf(Int64) <> 8) OR (SizeOf(UInt64) <> 8)}
 {$MESSAGE FATAL 'Wrong size of 64-bit integers!'}
{$IFEND}

  {$IFDEF SUPPORTS_REGION}{$REGION 'Documentation'}{$ENDIF}
  /// <summary>
  ///   The 64-bit unsigned integer.
  /// </summary>
  {$IFDEF SUPPORTS_REGION}{$ENDREGION}{$ENDIF}
  UInt64 =
{$IFDEF TD_UInt64_NotNative}
    Int64;
{$ELSE ~TD_UInt64_NotNative}
    System.UInt64;
{$ENDIF ~TD_UInt64_NotNative}

  {$IFDEF SUPPORTS_REGION}{$REGION 'Documentation'}{$ENDIF}
  /// <summary>
  ///   A pointer to the 64-bit unsigned integer.
  /// </summary>
  {$IFDEF SUPPORTS_REGION}{$ENDREGION}{$ENDIF}
  PUInt64 = ^UInt64;

  {$IFDEF SUPPORTS_REGION}{$REGION 'Documentation'}{$ENDIF}
  /// <summary>
  ///   A double pointer to the 64-bit unsigned integer.
  /// </summary>
  {$IFDEF SUPPORTS_REGION}{$ENDREGION}{$ENDIF}
  PPUInt64 = ^PUInt64;

  {$IFDEF SUPPORTS_REGION}{$REGION 'Documentation'}{$ENDIF}
  /// <summary>
  ///   The quad word as an unsigned 64-bit integer.
  /// </summary>
  {$IFDEF SUPPORTS_REGION}{$ENDREGION}{$ENDIF}
  QuadWord = UInt64;

  {$IFDEF SUPPORTS_REGION}{$REGION 'Documentation'}{$ENDIF}
  /// <summary>
  ///   A pointer to the quad word as an unsigned 64-bit integer.
  /// </summary>
  {$IFDEF SUPPORTS_REGION}{$ENDREGION}{$ENDIF}
  PQuadWord = ^QuadWord;

  {$IFDEF SUPPORTS_REGION}{$REGION 'Documentation'}{$ENDIF}
  /// <summary>
  ///   A double pointer to the quad word as an unsigned 64-bit integer.
  /// </summary>
  {$IFDEF SUPPORTS_REGION}{$ENDREGION}{$ENDIF}
  PPQuadWord = ^PQuadWord;

  {$IFDEF SUPPORTS_REGION}{$REGION 'Documentation'}{$ENDIF}
  /// <summary>
  ///   The Alias name for <see cref="TypeDefinitions|QuadWord" />.
  /// </summary>
  {$IFDEF SUPPORTS_REGION}{$ENDREGION}{$ENDIF}
  QWord = QuadWord;

  {$IFDEF SUPPORTS_REGION}{$REGION 'Documentation'}{$ENDIF}
  /// <summary>
  ///   A pointer to the alias name of <see cref="TypeDefinitions|QuadWord" />.
  /// </summary>
  {$IFDEF SUPPORTS_REGION}{$ENDREGION}{$ENDIF}
  PQWord = ^QWord;

  {$IFDEF SUPPORTS_REGION}{$REGION 'Documentation'}{$ENDIF}
  /// <summary>
  ///   A double pointer to the alias name of <see cref="TypeDefinitions|QuadWord" />.
  /// </summary>
  {$IFDEF SUPPORTS_REGION}{$ENDREGION}{$ENDIF}
  PPQWord = ^PQWord;

{-- Half-byte -----------------------------------------------------------------}

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
  ///   A pointer to a nibble value.
  /// </summary>
  {$IFDEF SUPPORTS_REGION}{$ENDREGION}{$ENDIF}
  PNibble = ^TNibble;

  {$IFDEF SUPPORTS_REGION}{$REGION 'Documentation'}{$ENDIF}
  /// <summary>
  ///   A double pointer to a nibble value.
  /// </summary>
  {$IFDEF SUPPORTS_REGION}{$ENDREGION}{$ENDIF}
  PPNibble = ^PNibble;

  {$IFDEF SUPPORTS_REGION}{$REGION 'Documentation'}{$ENDIF}
  /// <summary>
  ///   The alias name for <see cref="TypeDefinitions|TNibble" />.
  /// </summary>
  {$IFDEF SUPPORTS_REGION}{$ENDREGION}{$ENDIF}
  Nibble = TNibble;

{-- Pointer related types -----------------------------------------------------}

type
  {$IFDEF SUPPORTS_REGION}{$REGION 'Documentation'}{$ENDIF}
  /// <summary>
  ///   A pointer size signed integer. It size depends on target platform.
  /// </summary>
  {$IFDEF SUPPORTS_REGION}{$ENDREGION}{$ENDIF}
  PtrInt =
{$IF SizeOf(Pointer) = 8}
    Int64;
{$ELSEIF SizeOf(Pointer) = 4}
    Int32;
{$ELSE}
    {$MESSAGE FATAL 'Unsupported size of pointer type!'}
{$IFEND}

  {$IFDEF SUPPORTS_REGION}{$REGION 'Documentation'}{$ENDIF}
  /// <summary>
  ///   A pointer to a pointer size signed integer.
  /// </summary>
  {$IFDEF SUPPORTS_REGION}{$ENDREGION}{$ENDIF}
  PPtrInt = ^PtrInt;

  {$IFDEF SUPPORTS_REGION}{$REGION 'Documentation'}{$ENDIF}
  /// <summary>
  ///   A double pointer to a pointer size signed integer.
  /// </summary>
  {$IFDEF SUPPORTS_REGION}{$ENDREGION}{$ENDIF}
  PPPtrInt = ^PPtrInt;

  {$IFDEF SUPPORTS_REGION}{$REGION 'Documentation'}{$ENDIF}
  /// <summary>
  ///   A pointer size unsigned integer. It size depends on target platform.
  /// </summary>
  {$IFDEF SUPPORTS_REGION}{$ENDREGION}{$ENDIF}
  PtrUInt =
{$IF SizeOf(Pointer) = 8}
    UInt64;
{$ELSEIF SizeOf(Pointer) = 4}
    UInt32;
{$ELSE}
  {$MESSAGE FATAL 'Unsupported size of pointer type!'}
{$IFEND}

  {$IFDEF SUPPORTS_REGION}{$REGION 'Documentation'}{$ENDIF}
  /// <summary>
  ///   A pointer to a pointer size unsigned integer.
  /// </summary>
  {$IFDEF SUPPORTS_REGION}{$ENDREGION}{$ENDIF}
  PPtrUInt = ^PtrUInt;

  {$IFDEF SUPPORTS_REGION}{$REGION 'Documentation'}{$ENDIF}
  /// <summary>
  ///   A double pointer to a pointer size unsigned integer.
  /// </summary>
  {$IFDEF SUPPORTS_REGION}{$ENDREGION}{$ENDIF}
  PPPtrUInt = ^PPtrUInt;

  {$IFDEF SUPPORTS_REGION}{$REGION 'Documentation'}{$ENDIF}
  /// <summary>
  ///   A signed integer with the size of a pointer, so 32-bit on 32-bit
  ///   platforms, 64-bit on 64-bit platforms.
  /// </summary>
  {$IFDEF SUPPORTS_REGION}{$ENDREGION}{$ENDIF}
  NativeInt = PtrInt;

  {$IFDEF SUPPORTS_REGION}{$REGION 'Documentation'}{$ENDIF}
  /// <summary>
  ///   A pointer to a signed integer with the size of a pointer.
  /// </summary>
  {$IFDEF SUPPORTS_REGION}{$ENDREGION}{$ENDIF}
  PNativeInt = ^NativeInt;

  {$IFDEF SUPPORTS_REGION}{$REGION 'Documentation'}{$ENDIF}
  /// <summary>
  ///   A double pointer to a signed integer with the size of a pointer.
  /// </summary>
  {$IFDEF SUPPORTS_REGION}{$ENDREGION}{$ENDIF}
  PPNativeInt = ^PNativeInt;

  {$IFDEF SUPPORTS_REGION}{$REGION 'Documentation'}{$ENDIF}
  /// <summary>
  ///   An unsigned integer with the size of a pointer, so 32-bit on 32-bit
  ///   platforms, 64-bit on 64-bit platforms.
  /// </summary>
  {$IFDEF SUPPORTS_REGION}{$ENDREGION}{$ENDIF}
  NativeUInt = PtrUInt;

  {$IFDEF SUPPORTS_REGION}{$REGION 'Documentation'}{$ENDIF}
  /// <summary>
  ///   A pointer to an unsigned integer with the size of a pointer.
  /// </summary>
  {$IFDEF SUPPORTS_REGION}{$ENDREGION}{$ENDIF}
  PNativeUInt = ^NativeUInt;

  {$IFDEF SUPPORTS_REGION}{$REGION 'Documentation'}{$ENDIF}
  /// <summary>
  ///   A double pointer to an unsigned integer with the size of a pointer.
  /// </summary>
  {$IFDEF SUPPORTS_REGION}{$ENDREGION}{$ENDIF}
  PPNativeUInt = ^PNativeUInt;

{-- Float types ---------------------------------------------------------------}

type
  {$IFDEF SUPPORTS_REGION}{$REGION 'Documentation'}{$ENDIF}
  /// <summary>
  ///   Half precision floating point numbers.
  /// </summary>
  /// <remarks>
  ///   Only for I/O operations, cannot by used in arithmetics.
  /// </remarks>
  {$IFDEF SUPPORTS_REGION}{$ENDREGION}{$ENDIF}
  Half = packed array[0..1] of UInt8;

  {$IFDEF SUPPORTS_REGION}{$REGION 'Documentation'}{$ENDIF}
  /// <summary>
  ///   A pointer to half precision floating point numbers.
  /// </summary>
  {$IFDEF SUPPORTS_REGION}{$ENDREGION}{$ENDIF}
  PHalf = ^Half;

  {$IFDEF SUPPORTS_REGION}{$REGION 'Documentation'}{$ENDIF}
  /// <summary>
  ///   A double pointer to half precision floating point numbers.
  /// </summary>
  {$IFDEF SUPPORTS_REGION}{$ENDREGION}{$ENDIF}
  PPHalf = ^PHalf;

{$IF (SizeOf(Half) <> 2)}
  {$MESSAGE FATAL 'Wrong size of 16-bit float!'}
{$IFEND}

  {$IFDEF SUPPORTS_REGION}{$REGION 'Documentation'}{$ENDIF}
  /// <summary>
  ///   The 16-bit floating point numbers.
  /// </summary>
  /// <remarks>
  ///   Only for I/O operations, cannot by used in arithmetics.
  /// </remarks>
  {$IFDEF SUPPORTS_REGION}{$ENDREGION}{$ENDIF}
  Float16 = Half;

  {$IFDEF SUPPORTS_REGION}{$REGION 'Documentation'}{$ENDIF}
  /// <summary>
  ///   A pointer to the 16-bit floating point numbers.
  /// </summary>
  {$IFDEF SUPPORTS_REGION}{$ENDREGION}{$ENDIF}
  PFloat16 = ^Float16;

  {$IFDEF SUPPORTS_REGION}{$REGION 'Documentation'}{$ENDIF}
  /// <summary>
  ///   A double pointer to the 16-bit floating point numbers.
  /// </summary>
  {$IFDEF SUPPORTS_REGION}{$ENDREGION}{$ENDIF}
  PPFloat16 = ^PFloat16;

{$IF (SizeOf(Single) <> 4)}
  {$MESSAGE FATAL 'Wrong size of 32-bit float!}
{$IFEND}

  {$IFDEF SUPPORTS_REGION}{$REGION 'Documentation'}{$ENDIF}
  /// <summary>
  ///   The 32-bit float type.
  /// </summary>
  {$IFDEF SUPPORTS_REGION}{$ENDREGION}{$ENDIF}
  Float32 = Single;

  {$IFDEF SUPPORTS_REGION}{$REGION 'Documentation'}{$ENDIF}
  /// <summary>
  ///   A pointer to the 32-bit float type.
  /// </summary>
  {$IFDEF SUPPORTS_REGION}{$ENDREGION}{$ENDIF}
  PFloat32 = ^Float32;

  {$IFDEF SUPPORTS_REGION}{$REGION 'Documentation'}{$ENDIF}
  /// <summary>
  ///   A double pointer to the 32-bit float type.
  /// </summary>
  {$IFDEF SUPPORTS_REGION}{$ENDREGION}{$ENDIF}
  PPFloat32 = ^PFloat32;

{$IF (SizeOf(Double) <> 8)}
  {$MESSAGE FATAL 'Wrong size of 64-bit float!'}
{$IFEND}

  {$IFDEF SUPPORTS_REGION}{$REGION 'Documentation'}{$ENDIF}
  /// <summary>
  ///   The 64-bit float type.
  /// </summary>
  {$IFDEF SUPPORTS_REGION}{$ENDREGION}{$ENDIF}
  Float64 = Double;

  {$IFDEF SUPPORTS_REGION}{$REGION 'Documentation'}{$ENDIF}
  /// <summary>
  ///   A pointer to the 64-bit float type.
  /// </summary>
  {$IFDEF SUPPORTS_REGION}{$ENDREGION}{$ENDIF}
  PFloat64 = ^Float64;

  {$IFDEF SUPPORTS_REGION}{$REGION 'Documentation'}{$ENDIF}
  /// <summary>
  ///   A double pointer to the 64-bit float type.
  /// </summary>
  {$IFDEF SUPPORTS_REGION}{$ENDREGION}{$ENDIF}
  PPFloat64 = ^PFloat64;

  {$IFDEF SUPPORTS_REGION}{$REGION 'Documentation'}{$ENDIF}
  /// <summary>
  ///   The 80-bit float type.
  /// </summary>
  {$IFDEF SUPPORTS_REGION}{$ENDREGION}{$ENDIF}
  Float80 =
{$IF SizeOf(Extended) = 10}
    Extended;
{$ELSE}
    { Only for I/O operations, cannot be used in arithmetics. }
    packed array[0..9] of UInt8;
{$IFEND}

  {$IFDEF SUPPORTS_REGION}{$REGION 'Documentation'}{$ENDIF}
  /// <summary>
  ///   A pointer to the 80-bit float type.
  /// </summary>
  {$IFDEF SUPPORTS_REGION}{$ENDREGION}{$ENDIF}
  PFloat80 = ^Float80;

  {$IFDEF SUPPORTS_REGION}{$REGION 'Documentation'}{$ENDIF}
  /// <summary>
  ///   A double pointer to the 80-bit float type.
  /// </summary>
  {$IFDEF SUPPORTS_REGION}{$ENDREGION}{$ENDIF}
  PPFloat80 = ^PFloat80;

  {$IFDEF SUPPORTS_REGION}{$REGION 'Documentation'}{$ENDIF}
  /// <summary>
  ///   Float type. It can be 32-bit float type or 64-bit float type depending
  ///   of <i>TD_ScientificFloatMode</i> directive.
  /// </summary>
  {$IFDEF SUPPORTS_REGION}{$ENDREGION}{$ENDIF}
  Float =
{$IFDEF TD_ScientificFloatMode}
    Float64;
{$ELSE ~TD_ScientificFloatMode}
    Float32;
{$ENDIF ~TD_ScientificFloatMode}

  {$IFDEF SUPPORTS_REGION}{$REGION 'Documentation'}{$ENDIF}
  /// <summary>
  ///   A pointer to the Float type.
  /// </summary>
  {$IFDEF SUPPORTS_REGION}{$ENDREGION}{$ENDIF}
  PFloat = ^Float;

  {$IFDEF SUPPORTS_REGION}{$REGION 'Documentation'}{$ENDIF}
  /// <summary>
  ///   A double pointer to the Float type.
  /// </summary>
  {$IFDEF SUPPORTS_REGION}{$ENDREGION}{$ENDIF}
  PPFloat = ^PFloat;

const
  {$IFDEF SUPPORTS_REGION}{$REGION 'Documentation'}{$ENDIF}
  /// <summary>
  ///   A special value that determines precision limit when comparing float
  ///   values.
  /// </summary>
  {$IFDEF SUPPORTS_REGION}{$ENDREGION}{$ENDIF}
  FloatEpsilon: Float = 0.00001;

{-- String types --------------------------------------------------------------}

type
{$IF NOT DECLARED(UnicodeChar)}
  {$IFDEF SUPPORTS_REGION}{$REGION 'Documentation'}{$ENDIF}
  /// <summary>
  ///   The Unicode character type.
  /// </summary>
  {$IFDEF SUPPORTS_REGION}{$ENDREGION}{$ENDIF}
  UnicodeChar = WideChar;
{$IFEND}

  {$IFDEF SUPPORTS_REGION}{$REGION 'Documentation'}{$ENDIF}
  /// <summary>
  ///   A pointer to the Unicode character type.
  /// </summary>
  {$IFDEF SUPPORTS_REGION}{$ENDREGION}{$ENDIF}
  PUnicodeChar = ^UnicodeChar;

  {$IFDEF SUPPORTS_REGION}{$REGION 'Documentation'}{$ENDIF}
  /// <summary>
  ///   A double pointer to the Unicode character type.
  /// </summary>
  {$IFDEF SUPPORTS_REGION}{$ENDREGION}{$ENDIF}
  PPUnicodeChar = ^PUnicodeChar;

{$IF NOT DECLARED(UnicodeString)}
  {$IFDEF SUPPORTS_REGION}{$REGION 'Documentation'}{$ENDIF}
  /// <summary>
  ///   The Unicode string type.
  /// </summary>
  {$IFDEF SUPPORTS_REGION}{$ENDREGION}{$ENDIF}
  UnicodeString = WideString;
{$IFEND}

  {$IFDEF SUPPORTS_REGION}{$REGION 'Documentation'}{$ENDIF}
  /// <summary>
  ///   A pointer to the Unicode string type.
  /// </summary>
  {$IFDEF SUPPORTS_REGION}{$ENDREGION}{$ENDIF}
  PUnicodeString = ^UnicodeString;

  {$IFDEF SUPPORTS_REGION}{$REGION 'Documentation'}{$ENDIF}
  /// <summary>
  ///   A double pointer to the Unicode string type.
  /// </summary>
  {$IFDEF SUPPORTS_REGION}{$ENDREGION}{$ENDIF}
  PPUnicodeString = ^PUnicodeString;

{$IF NOT DECLARED(UTF8Char)}
  {$IFDEF SUPPORTS_REGION}{$REGION 'Documentation'}{$ENDIF}
  /// <summary>
  ///   The UTF8 character type.
  /// </summary>
  {$IFDEF SUPPORTS_REGION}{$ENDREGION}{$ENDIF}
  UTF8Char = type AnsiChar;
{$IFEND}

  {$IFDEF SUPPORTS_REGION}{$REGION 'Documentation'}{$ENDIF}
  /// <summary>
  ///   A Pointer to the UTF8 character type.
  /// </summary>
  {$IFDEF SUPPORTS_REGION}{$ENDREGION}{$ENDIF}
  PUTF8Char = ^UTF8Char;

  {$IFDEF SUPPORTS_REGION}{$REGION 'Documentation'}{$ENDIF}
  /// <summary>
  ///   A double pointer to the UTF8 character type.
  /// </summary>
  {$IFDEF SUPPORTS_REGION}{$ENDREGION}{$ENDIF}
  PPUTF8Char = ^PUTF8Char;

{-- Size types ----------------------------------------------------------------}

type
  {$IFDEF SUPPORTS_REGION}{$REGION 'Documentation'}{$ENDIF}
  /// <summary>
  ///   A string size type.
  /// </summary>
  {$IFDEF SUPPORTS_REGION}{$ENDREGION}{$ENDIF}
  TStrSize = Int32;

  {$IFDEF SUPPORTS_REGION}{$REGION 'Documentation'}{$ENDIF}
  /// <summary>
  ///   A pointer to a string size type.
  /// </summary>
  {$IFDEF SUPPORTS_REGION}{$ENDREGION}{$ENDIF}
  PStrSize = ^TStrSize;

  {$IFDEF SUPPORTS_REGION}{$REGION 'Documentation'}{$ENDIF}
  /// <summary>
  ///   A double pointer to a string size type.
  /// </summary>
  {$IFDEF SUPPORTS_REGION}{$ENDREGION}{$ENDIF}
  PPStrSize = ^PStrSize;

  {$IFDEF SUPPORTS_REGION}{$REGION 'Documentation'}{$ENDIF}
  /// <summary>
  ///   A memory size type.
  /// </summary>
  {$IFDEF SUPPORTS_REGION}{$ENDREGION}{$ENDIF}
  TMemSize = PtrUInt;

  {$IFDEF SUPPORTS_REGION}{$REGION 'Documentation'}{$ENDIF}
  /// <summary>
  ///   A pointer to a memory size type.
  /// </summary>
  {$IFDEF SUPPORTS_REGION}{$ENDREGION}{$ENDIF}
  PMemSize = ^TMemSize;

  {$IFDEF SUPPORTS_REGION}{$REGION 'Documentation'}{$ENDIF}
  /// <summary>
  ///   A double pointer to a memory size type.
  /// </summary>
  {$IFDEF SUPPORTS_REGION}{$ENDREGION}{$ENDIF}
  PPMemSize = ^PMemSize;

  {$IFDEF SUPPORTS_REGION}{$REGION 'Documentation'}{$ENDIF}
  /// <summary>
  ///   A signed integer data type having the same size as a pointer on
  ///   the given platform.
  /// </summary>
  {$IFDEF SUPPORTS_REGION}{$ENDREGION}{$ENDIF}
  SizeInt = PtrInt;

  {$IFDEF SUPPORTS_REGION}{$REGION 'Documentation'}{$ENDIF}
  /// <summary>
  ///   A pointer to <see cref="TypeDefinitions|SizeInt" />.
  /// </summary>
  {$IFDEF SUPPORTS_REGION}{$ENDREGION}{$ENDIF}
  PSizeInt = ^SizeInt;

  {$IFDEF SUPPORTS_REGION}{$REGION 'Documentation'}{$ENDIF}
  /// <summary>
  ///   A double pointer to <see cref="TypeDefinitions|SizeInt" />.
  /// </summary>
  {$IFDEF SUPPORTS_REGION}{$ENDREGION}{$ENDIF}
  PPSizeInt = ^PSizeInt;

  {$IFDEF SUPPORTS_REGION}{$REGION 'Documentation'}{$ENDIF}
  /// <summary>
  ///   An unsigned integer data type having the same size as a pointer on
  ///   the given platform.
  /// </summary>
  {$IFDEF SUPPORTS_REGION}{$ENDREGION}{$ENDIF}
  SizeUInt = PtrUInt;

  {$IFDEF SUPPORTS_REGION}{$REGION 'Documentation'}{$ENDIF}
  /// <summary>
  ///   A pointer to <see cref="TypeDefinitions|SizeUInt" />.
  /// </summary>
  {$IFDEF SUPPORTS_REGION}{$ENDREGION}{$ENDIF}
  PSizeUInt = ^SizeUInt;

  {$IFDEF SUPPORTS_REGION}{$REGION 'Documentation'}{$ENDIF}
  /// <summary>
  ///   A double pointer to <see cref="TypeDefinitions|SizeUInt" />.
  /// </summary>
  {$IFDEF SUPPORTS_REGION}{$ENDREGION}{$ENDIF}
  PPSizeUInt = ^PSizeUInt;

{-- General use types ---------------------------------------------------------}

type
  {$IFDEF SUPPORTS_REGION}{$REGION 'Documentation'}{$ENDIF}
  /// <summary>
  ///   A signed integer data type that can be commonly used in your project.
  ///   Typically, it is 32-bit value and an equivalent of <i>Integer</i>,
  ///   unless <i>TD_ScientificStdMode</i> directive is enabled, in which case
  ///   it becomes 64-bit value and an equivalent of <i>Int64</i> on 32-bit
  ///   platforms and an equivalent of <i>NativeInt</i> on 64-bit platforms.
  /// </summary>
  {$IFDEF SUPPORTS_REGION}{$ENDREGION}{$ENDIF}
  StdInt =
{$IFDEF TD_ScientificStdMode}
 {$IFDEF CPUX64}
    NativeInt;
 {$ELSE ~CPUX64}
    Int64;
 {$ENDIF ~CPUX64}
{$ELSE ~TD_ScientificStdMode}
    Integer;
{$ENDIF ~TD_ScientificStdMode}

  {$IFDEF SUPPORTS_REGION}{$REGION 'Documentation'}{$ENDIF}
  /// <summary>
  ///   A pointer to <see cref="TypeDefinitions|StdInt" />.
  /// </summary>
  {$IFDEF SUPPORTS_REGION}{$ENDREGION}{$ENDIF}
  PStdInt = ^StdInt;

  {$IFDEF SUPPORTS_REGION}{$REGION 'Documentation'}{$ENDIF}
  /// <summary>
  ///   A double pointer to <see cref="TypeDefinitions|StdInt" />.
  /// </summary>
  {$IFDEF SUPPORTS_REGION}{$ENDREGION}{$ENDIF}
  PPStdInt = ^PStdInt;

  {$IFDEF SUPPORTS_REGION}{$REGION 'Documentation'}{$ENDIF}
  /// <summary>
  ///   An unsigned integer data type that can be commonly used in your project.
  ///   Typically, it is 32-bit value and an equivalent of <i>Cardinal</i>,
  ///   unless <i>TD_ScientificStdMode</i> is enabled, in which case it
  ///   becomes 64-bit value and equivalent of <i>UInt64</i> on 32-bit platforms
  ///   and an equivalent of <i>NativeUInt</i> on 64-bit platforms.
  /// </summary>
  {$IFDEF SUPPORTS_REGION}{$ENDREGION}{$ENDIF}
  StdUInt =
  {$IFDEF TD_ScientificStdMode}
   {$IFDEF CPUX64}
    NativeUInt;
   {$ELSE ~CPUX64}
    UInt64;
   {$ENDIF ~CPUX64}
  {$ELSE ~TD_ScientificStdMode}
    Cardinal;
  {$ENDIF ~TD_ScientificStdMode}

  {$IFDEF SUPPORTS_REGION}{$REGION 'Documentation'}{$ENDIF}
  /// <summary>
  ///   A pointer to <see cref="TypeDefinitions|StdUInt" />.
  /// </summary>
  {$IFDEF SUPPORTS_REGION}{$ENDREGION}{$ENDIF}
  PStdUInt = ^StdUInt;

  {$IFDEF SUPPORTS_REGION}{$REGION 'Documentation'}{$ENDIF}
  /// <summary>
  ///   A double pointer to <see cref="TypeDefinitions|StdUInt" />.
  /// </summary>
  {$IFDEF SUPPORTS_REGION}{$ENDREGION}{$ENDIF}
  PPStdUInt = ^PStdUInt;

implementation

end.
