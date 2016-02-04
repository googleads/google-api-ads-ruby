# Conflicting keywords report AdWords API solution

This sample is intended to be a full solution, illustrating a real use-case.

Negative keywords at the campaign level can have unintended effects on your
carefully constructed ad-group level keywords: one single negative keyword can
override many ad group-level ones, with no easy way to find issues of this sort.

This tool attempts to identify these situations, by analyzing all negative
keywords and, depending on the text and match type, determining how many
ad group-level keywords each one blocks.

## 1 - Setup

Before attempting to run this sample, make sure you follow the instructions on
the `README.md` file for the client library, particularly the OAuth2
instructions.

## 2 - Running the sample

When running the sample with no parameters:

    ruby conflicting_keywords.rb

you'll only process active keywords, in active campaigns and ad groups. The
`--paused` (`-p`) and `--removed` (`-r`) options are available to also allow
paused and removed entities, respectively.

You can view the full set of options with the `--help` parameter:

    ruby conflicting_keywords.rb --help


# Copyright/License Info

## Licence

Copyright 2010-2015, Google Inc. All Rights Reserved.

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at:

> [http://www.apache.org/licenses/LICENSE-2.0]()

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
