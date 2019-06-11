(***********************************************************************)
(*                                                                     *)
(*                           Objective Caml                            *)
(*                                                                     *)
(*            Xavier Leroy, projet Cristal, INRIA Rocquencourt         *)
(*                                                                     *)
(*  Copyright 1996 Institut National de Recherche en Informatique et   *)
(*  en Automatique.  All rights reserved.  This file is distributed    *)
(*  under the terms of the Q Public License version 1.0.               *)
(*                                                                     *)
(***********************************************************************)

(* $Id: tbl.mli,v 1.1 2007/09/24 23:04:52 so294 Exp $ *)

(* Association tables from any ordered type to any type.
   We use the generic ordering to compare keys. *)

type ('a, 'b) t

val empty: ('a, 'b) t
val add: 'a -> 'b -> ('a, 'b) t -> ('a, 'b) t
val find: 'a -> ('a, 'b) t -> 'b
val mem: 'a -> ('a, 'b) t -> bool
val remove: 'a -> ('a,  'b) t -> ('a, 'b) t
val iter: ('a -> 'b -> 'c) -> ('a, 'b) t -> unit

open Format

val print: (formatter -> 'a -> unit) -> (formatter -> 'b -> unit) ->
           formatter -> ('a, 'b) t -> unit
