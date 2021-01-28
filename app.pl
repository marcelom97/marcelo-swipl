% Μολλάι Μαρτσελίνο ΤΠ4500
:- style_check(-singleton).

:- encoding(utf8).
:- set_prolog_flag(encoding, utf8).
:- use_module(library(http/thread_httpd)).
:- use_module(library(http/http_dispatch)).
:- use_module(library(http/http_error)).
:- use_module(library(http/http_files)).
:- use_module(library(http/html_write)).
:- use_module(library(http/http_client)).
:- use_module(library(http/http_parameters)).
:- use_module(library(http/html_head)).

:- consult('components/header.pl').
:- consult('components/footer.pl').
:- consult('components/form.pl').
:- consult('pages/home.pl').
:- consult('pages/results.pl').
:- consult('KB.pl').

server(Port) :- http_server(http_dispatch, [port(Port)]).
:- server(3000).

/* Routes */
:- http_handler('/', home, []).
:- http_handler('/results', results, []).

/* Static files */
:- http_handler('/css/tailwind.css', http_reply_file('css/tailwind.css', []), []).