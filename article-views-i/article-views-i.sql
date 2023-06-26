--Given a list of views for articles that contains
--both the viewer and the author return
--all unique authors who viewed their own articles
--in ascending order by id.

SELECT DISTINCT Views.author_id AS id
FROM Views
WHERE Views.viewer_id = author_id
ORDER BY Views.author_id ASC
