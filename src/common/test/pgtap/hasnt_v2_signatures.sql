
\i setup.sql

SELECT plan(25);

SELECT todo_start();

-- auxiliary
SELECT hasnt_function('pgr_flipedges');
SELECT hasnt_function('pgr_endpoint');
SELECT hasnt_function('pgr_startpoint');
SELECT hasnt_function('pgr_versionless');
SELECT hasnt_function('pgr_quote_ident');
SELECT hasnt_function('pgr_iscolumnintable');
SELECT hasnt_function('pgr_iscolumnindexed');
SELECT hasnt_function('pgr_gettablename');
SELECT hasnt_function('pgr_getcolumnname');

-- convenience
SELECT hasnt_function('pgr_texttopoints');
SELECT hasnt_function('pgr_pointstodmatrix');
SELECT hasnt_function('pgr_flipedges');
SELECT hasnt_function('pgr_pointstovids');
SELECT hasnt_function('pgr_pointtoedgenode');

-- deprecated signatures
SELECT hasnt_function('pgr_dijkstra',ARRAY['text', 'integer', 'integer', 'boolean', 'boolean']);
SELECT hasnt_function('pgr_astar',ARRAY['text', 'integer', 'integer', 'boolean', 'boolean']);
SELECT hasnt_function('pgr_ksp',ARRAY['text', 'integer', 'integer', 'integer', 'boolean']);
SELECT hasnt_function('pgr_drivingdistance',ARRAY['text', 'integer', 'double precision', 'boolean', 'boolean']);
SELECT hasnt_function('pgr_bdastar',ARRAY['text', 'integer', 'integer', 'boolean', 'boolean']);
SELECT hasnt_function('pgr_bddijkstra',ARRAY['text', 'integer', 'integer', 'boolean', 'boolean']);

-- deleteded functions
SELECT hasnt_function('pgr_kdijkstracost');
SELECT hasnt_function('pgr_kdijkstrapath');
SELECT hasnt_function('pgr_gsoc_vrppdtw');
SELECT hasnt_function('pgr_apspjhonson');
SELECT hasnt_function('pgr_apspwarshall');


SELECT todo_end();

SELECT finish();
ROLLBACK;
