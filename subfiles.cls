%%
%% This is file `subfiles.cls',
%% generated with the docstrip utility.
%%
%% The original source files were:
%%
%% subfiles.dtx  (with options: `class')
%% 
%% This is a generated file.
%% 
%% Copyright 2002, 2012 Federico Garcia; 2018-2020 Gernot Salzer
%% 
%% This work may be distributed and/or modified under the
%% conditions of the LaTeX Project Public License, either version 1.3
%% of this license or (at your option) any later version.
%% The latest version of this license is in
%%   http://www.latex-project.org/lppl.txt
%% and version 1.3 or later is part of all distributions of LaTeX
%% version 2005/12/01 or later.
%% 
%% This work has the LPPL maintenance status `maintained'.
%% 
%% The Current Maintainer of this work is Gernot Salzer (salzer@logic.at).
%% 
%% This work consists of the files subfiles.dtx and subfiles.ins
%% and the derived files subfiles.sty and subfiles.pdf
%% 
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{subfiles}[2020/11/14 v2.2 Multi-file projects (class)]
\DeclareOption*{%
  \typeout{Preamble taken from file `\CurrentOption'}%
  \let\preamble@file\CurrentOption
}
\ProcessOptions
\let\@classoptionslist\relax
\RequirePackage{import}
\let\subfiles@documentclass\documentclass
\def\documentclass{%
  \let\documentclass\subfiles@documentclass
  \LoadClass
}
\filename@parse{\preamble@file}
\edef\import@path{\filename@area}
\edef\input@path{{\filename@area}}
\input{\preamble@file}
{\makeatletter
  \gdef\import@path{}
}
\endinput
%%
%% End of file `subfiles.cls'.
