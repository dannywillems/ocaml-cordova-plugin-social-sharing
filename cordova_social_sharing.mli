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
type result = private Ojs.t

val completed : result -> bool
[@@js.get]

val app : result -> string
[@@js.get]
(* -------------------------------------------------------------------------- *)

(* -------------------------------------------------------------------------- *)
val share_with_options :
  options ->
  (result -> unit) ->
  (string -> unit) ->
  unit
[@@js.global "window.plugins.socialsharing.shareWithOptions"]

val share_via_twitter  :
  string                              ->
  (* No files array, see official repo *)
  ?files:string                       ->
  ?url:string                         ->
  unit                                ->
  unit
[@@js.global "window.plugins.socialsharing.shareViaTwitter"]

val share_via_facebook :
  string                                                  ->
  ?files:string list                                      ->
  ?url:string                                             ->
  ?succ_cb:((unit -> unit) [@js.default (fun () -> ())])  ->
  ?err_cb:((string -> unit) [@js.default (fun e -> ())])  ->
  unit                                                    ->
  unit
[@@js.global "window.plugins.socialsharing.shareViaFacebook"]

val share_via_instagram :
  string                                                  ->
  ?url:string                                             ->
  ?succ_cb:((unit -> unit) [@js.default (fun () -> ())])  ->
  ?err_cb:((string -> unit) [@js.default (fun e -> ())])  ->
  unit                                                    ->
  unit
[@@js.global "window.plugins.socialsharing.shareViaInstagram"]

val share_via_whatsapp :
  string                                                  ->
  ?img:string                                             ->
  ?url:string                                             ->
  ?succ_cb:((unit -> unit) [@js.default (fun () -> ())])  ->
  ?err_cb:((string -> unit) [@js.default (fun e -> ())])  ->
  unit                                                    ->
  unit
[@@js.global "window.plugins.socialsharing.shareViaWhatsApp"]

(* Only the second interface is implemented because other fail on majority *)
val share_via_sms :
  string                                                  ->
  ?numbers:string                                         ->
  ?succ_cb:((string -> unit) [@js.default (fun e -> ())]) ->
  ?err_cb:((string -> unit) [@js.default (fun e -> ())])  ->
  unit                                                    ->
  unit
[@@js.global "window.plugins.socialsharing.shareViaSms"]
(* -------------------------------------------------------------------------- *)
