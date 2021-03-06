%%
%% Copyright (C) 2010-2014 by krasnop@bellsouth.net (Alexei Krasnopolski)
%%
%% Licensed under the Apache License, Version 2.0 (the "License");
%% you may not use this file except in compliance with the License.
%% You may obtain a copy of the License at
%%
%%     http://www.apache.org/licenses/LICENSE-2.0
%%
%% Unless required by applicable law or agreed to in writing, software
%% distributed under the License is distributed on an "AS IS" BASIS,
%% WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
%% See the License for the specific language governing permissions and
%% limitations under the License. 
%%

-define(TEST_SERVER_HOST_NAME, "localhost").
-define(TEST_DB_NAME, "eunitdb").
-define(TEST_USER, "root").
-define(TEST_PASSWORD, "root").
-define(TEST_SERVER_PORT, 3306).
%-define(TEST_SERVER_PORT, 3307).
%-define(TEST_SERVER_PORT, 3308).

-define(debug_Msg(S),
	(begin
		io:fwrite(user, <<"~s\n">>, [S]),
%		io:fwrite(<<"~s\n">>, [S]),
		ok
	 end)).
-define(debug_Fmt(S, As), (?debug_Msg(io_lib:format((S), (As))))).
-define(PASSED, (?debug_Msg("    +++ Passed"))).
