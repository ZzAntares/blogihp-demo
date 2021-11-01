

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;


SET SESSION AUTHORIZATION DEFAULT;

ALTER TABLE public.posts DISABLE TRIGGER ALL;

INSERT INTO public.posts (id, title, body, created_at) VALUES ('f8a14774-d915-493f-bb18-36986cacce86', 'Hello World!', 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam', '2021-10-31 21:05:13.574192-06');
INSERT INTO public.posts (id, title, body, created_at) VALUES ('3d415db5-4775-4f09-8cc7-4d6e45ca569c', 'Testing markdown', '# A new hope
Although this is a `Haskell` blog I really don''t know yet if it is sustainable for very specific requirements.', '2021-10-31 21:23:07.251288-06');


ALTER TABLE public.posts ENABLE TRIGGER ALL;


ALTER TABLE public.comments DISABLE TRIGGER ALL;

INSERT INTO public.comments (id, post_id, author, body) VALUES ('4ce5c1b7-eb0e-4c81-989a-41b377a14dd9', '3d415db5-4775-4f09-8cc7-4d6e45ca569c', '', '');
INSERT INTO public.comments (id, post_id, author, body) VALUES ('d04d6967-41f5-4f12-a229-e410c1c9bb22', '3d415db5-4775-4f09-8cc7-4d6e45ca569c', 'John Doe', 'Testing the new comment form');


ALTER TABLE public.comments ENABLE TRIGGER ALL;


