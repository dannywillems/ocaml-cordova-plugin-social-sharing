(* -------------------------------------------------------------------------- *)
type options = private Ojs.t

val create_options :  ?message:string       ->
                      ?subject:string       ->
                      ?files:string list    ->
                      ?url:string           ->
                      ?chooser_title:string ->
                      unit                  ->
                      options
[@@js.builder]
(* -------------------------------------------------------------------------- *)

(* -------------------------------------------------------------------------- *)
class result : Ojs.t ->
  object
    inherit Ojs.obj
    method completed : bool
    method app : string
  end
(* -------------------------------------------------------------------------- *)

(* -------------------------------------------------------------------------- *)
class social_sharing : Ojs.t ->
  object
    inherit Ojs.obj

    method share_with_options : options ->
                                (result -> unit) ->
                                (string -> unit) ->
                                unit
    method share_via_twitter  : string                              ->
                                ?files:string list                  ->
                                ?url:string                         ->
                                unit                                ->
                                unit
    method share_via_facebook : string                              ->
                                ?files:string list                  ->
                                ?url:string                         ->
                                ?succ_cb:((unit -> unit) [@js.default (fun () ->
                                  ())])                             ->
                                ?err_cb:((string -> unit) [@js.default (fun e ->
                                  ())])                             ->
                                unit                                ->
                                unit
    (*
    method share_via_instagram :  string ->
                                  string ->
                                  ?succ_cb:((unit -> unit) [@js.default (fun () ->
                                    ())]) ->
                                  ?err_cb:((string -> unit) [@js.default (fun e ->
                                    ())]) ->
    *)

  end
(* -------------------------------------------------------------------------- *)

(* -------------------------------------------------------------------------- *)
val t : unit -> social_sharing
[@@js.get "window.plugins.socialsharing"]
(* -------------------------------------------------------------------------- *)
