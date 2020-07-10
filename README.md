# r2oas-committee-sample

Sample using r2oas and committee

This blog is detailed about the relationship between committee and openapi

https://tech.timee.co.jp/entry/2020/07/05/150312

https://qiita.com/shohei1913/items/4c394b56fb7c92b928fe

```
bundle exec rspec

.
.
.

F

Failures:

  1) Tasks GET /tasks/:id(.:format) conform apidoc
     Failure/Error: assert_response_schema_confirm

     Committee::InvalidResponse:
       #/components/schemas/Task missing required parameters: hogehoge
     # ./spec/requests/tasks_request_spec.rb:11:in `block (3 levels) in <top (required)>'
     # ------------------
     # --- Caused by: ---
     # OpenAPIParser::NotExistRequiredKey:
     #   #/components/schemas/Task missing required parameters: hogehoge
     #   ./spec/requests/tasks_request_spec.rb:11:in `block (3 levels) in <top (required)>'

Finished in 0.73475 seconds (files took 2.1 seconds to load)
1 example, 1 failure

Failed examples:

rspec ./spec/requests/tasks_request_spec.rb:7 # Tasks GET /tasks/:id(.:format) conform apidoc
```
