# Regular Expressions (Regex) Guide

## Table of Contents
1. [Introduction](#introduction)
2. [Basic Concepts](#basic-concepts)
3. [Syntax](#syntax)
4. [Common Patterns](#common-patterns)
5. [Modifiers](#modifiers)
6. [Character Classes](#character-classes)
7. [Quantifiers](#quantifiers)
8. [Anchors](#anchors)
9. [Grouping and Capturing](#grouping-and-capturing)
10. [Assertions](#assertions)
11. [Escape Characters](#escape-characters)
12. [Examples](#examples)
13. [Resources](#resources)

## Introduction<a name="introduction"></a>
Regular Expressions, often abbreviated as regex or regexp, provide a powerful and flexible way to search, match, and manipulate strings. They consist of a sequence of characters that form a search pattern, helping you perform complex text operations efficiently.

## Basic Concepts<a name="basic-concepts"></a>
- **Pattern**: The sequence of characters defining the search.
- **Literal Characters**: Characters that match themselves.
- **Metacharacters**: Characters with special meanings.

## Syntax<a name="syntax"></a>
- `/pattern/`: Delimiters for regex.
- `^`: Anchors the regex at the start.
- `$`: Anchors the regex at the end.

## Common Patterns<a name="common-patterns"></a>
- `\d`: Digit (0-9).
- `\w`: Word character (alphanumeric + underscore).
- `\s`: Whitespace character.
- `.`: Any character except a newline.
- `[abc]`: Character class, matches any of the enclosed characters.
- `[^abc]`: Negated character class, matches any character except the enclosed ones.

## Modifiers<a name="modifiers"></a>
- `i`: Case-insensitive matching.
- `g`: Global search (find all matches).
- `m`: Multiline mode.

## Character Classes<a name="character-classes"></a>
- `\d`: Digit (0-9).
- `\D`: Non-digit.
- `\w`: Word character (alphanumeric + underscore).
- `\W`: Non-word character.
- `\s`: Whitespace character.
- `\S`: Non-whitespace character.

## Quantifiers<a name="quantifiers"></a>
- `*`: Matches 0 or more occurrences.
- `+`: Matches 1 or more occurrences.
- `?`: Matches 0 or 1 occurrence.
- `{n}`: Matches exactly n occurrences.
- `{n,}`: Matches n or more occurrences.
- `{n,m}`: Matches between n and m occurrences.

## Anchors<a name="anchors"></a>
- `^`: Start of a line.
- `$`: End of a line.
- `\b`: Word boundary.

## Grouping and Capturing<a name="grouping-and-capturing"></a>
- `()`: Groups expressions.
- `(?:)`: Non-capturing group.
- `\1`, `\2`, etc.: Backreferences to captured groups.

## Assertions<a name="assertions"></a>
- `(?=...)`: Positive lookahead.
- `(?!...)`: Negative lookahead.
- `(?<=...)`: Positive lookbehind.
- `(?<!...)`: Negative lookbehind.

## Escape Characters<a name="escape-characters"></a>
- `\`: Escapes a metacharacter, allowing it to be treated as a literal character.

## Examples<a name="examples"></a>
- Matching an email address: `/^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$/`
- Extracting phone numbers: `/(\+\d{1,2}\s?)?(\(\d{3}\)|\d{3})[-.\s]?\d{3}[-.\s]?\d{4}/`

## Resources<a name="resources"></a>
- [Regex101](https://regex101.com/): Online regex tester and debugger.
- [Regular Expressions - MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Guide/Regular_Expressions): Comprehensive guide on MDN Web Docs.
- [Regexr](https://regexr.com/): Another online regex tester with a library of regex patterns.
- [Regex Cheat Sheet](https://www.rexegg.com/regex-quickstart.html): Quick reference guide for regex.
