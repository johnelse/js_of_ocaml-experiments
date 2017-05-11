let start _ =
  let start_button = Dom_html.getElementById("start") in
  start_button##.onclick := Dom_html.handler (fun _ ->
    let element = Dom_html.document##createElement (Js.string "button") in
    let node = (element :> Dom.node Js.t) in
    ignore (Dom_html.document##.body##appendChild (node));

    Js._false);

  Js._false

let _ =
  Dom_html.window##.onload := Dom_html.handler start
