@echo off

SET this_script_path=%~dp0
SET repo_root_dir=%this_script_path%..\..\
SET proto_compiler_path=%repo_root_dir%_proto_compiler\bin\protoc.exe

SET proto_path=%repo_root_dir%all_lang\proto\ --proto_path=%repo_root_dir%java\proto\
SET java_out=%this_script_path%out
SET grpc_java_out=%this_script_path%out
SET proto_files_to_compile=%repo_root_dir%all_lang\proto\* %repo_root_dir%java\proto\*

%proto_compiler_path% --proto_path=%proto_path% --java_out=%java_out% --grpc-java_out=%grpc_java_out% %proto_files_to_compile%