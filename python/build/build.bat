
@echo off

SET this_script_path=%~dp0
SET repo_root_dir=%this_script_path%..\..\
SET proto_compiler_path=%repo_root_dir%_proto_compiler\bin\protoc.exe

SET proto_include_path=--proto_path=%repo_root_dir%all_lang\proto\ --proto_path=%repo_root_dir%python\proto\
SET python_out=--python_out=%this_script_path%out
SET pyi_out=--pyi_out=%this_script_path%out
SET grpc_python_out=--grpc_python_out=%this_script_path%out
SET proto_files_to_compile=%repo_root_dir%all_lang\proto\* %repo_root_dir%python\proto\*

python -m grpc_tools.protoc %proto_include_path% %python_out% %pyi_out% %grpc_python_out% %proto_files_to_compile%