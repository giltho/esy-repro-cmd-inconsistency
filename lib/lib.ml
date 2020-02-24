let read_file () =
  let inx = open_in Sys.argv.(1) in
  let s = really_input_string inx (in_channel_length inx) in
  close_in inx;
  s

let main () =
  let file_content = read_file () in
  let () = Printf.printf "AAAA.\n File content: %s" file_content in
  flush stdout