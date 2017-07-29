open Token
open OUnit2

let specs = [
  "it should detect digit" >:: (fun ctx -> assert_equal true (is_digit "100"));
  "it should detect string" >:: (fun ctox -> assert_equal false (is_digit "string"));
  "it should trim head of string" >:: (fun ctox -> assert_equal "first" @@ trim_head " first");
  "it should tokenize" >:: (fun ctox ->
      assert_equal ((Some LBrace), "") @@ tokenize "{");
]

(* Name the test cases and group them together *)
let suite =
  "suite" >::: specs

let () =
  run_test_tt_main suite
