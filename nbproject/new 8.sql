SELECT node.title AS node_title, node.nid AS nid, node.language AS node_language, node.created AS node_created
FROM 
{node} node
LEFT JOIN {node_revision} node_revision ON node.vid = node_revision.vid
LEFT JOIN {node} node_node_revision ON node_revision.nid = node_node_revision.nid
INNER JOIN {workbench_moderation_node_history} workbench_moderation_node_history ON node_revision.vid = workbench_moderation_node_history.vid
WHERE (( (node.status = '1') AND (node.type IN  ('catalog')) AND (workbench_moderation_node_history.current <> '0') AND (workbench_moderation_node_history.published <> '0') ))
ORDER BY node_created DESC


===================================

SELECT node.title AS node_title, node.nid AS nid, node.language AS node_language, node.created AS node_created
FROM 
{node} node
LEFT JOIN {node_revision} node_revision ON node.vid = node_revision.vid
LEFT JOIN {node} node_node_revision ON node_revision.vid = node_node_revision.vid
INNER JOIN {workbench_moderation_node_history} workbench_moderation_node_history ON node_revision.vid = workbench_moderation_node_history.vid
WHERE (( (node.status = '1') AND (node.type IN  ('catalog')) AND (workbench_moderation_node_history.current <> '0') AND (workbench_moderation_node_history.published <> '0') ))
ORDER BY node_created DESC