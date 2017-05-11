let start _ =
  let start_button = Dom_html.getElementById("start") in
  start_button##.onclick := Dom_html.handler (fun _ ->
    let new_button = Dom_html.createButton Dom_html.document in
    new_button##.innerHTML := (Js.string "new button");
    let node = (new_button :> Dom.node Js.t) in
    ignore (Dom_html.document##.body##appendChild (node));

    Js._false);

  Js._false

let _ =
  Dom_html.window##.onload := Dom_html.handler start
