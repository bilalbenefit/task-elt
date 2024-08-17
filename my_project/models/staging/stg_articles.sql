select
    id::int as article_id
    , title as article_title
    , content as article_content
    , author_id::int as article_author_id
    , created_at::timestamp as created_at
    , updated_at::timestamp as updated_at
    , published_at::timestamp as published_at
    , deleted_at::timestamp as deleted_at
from {{ source('store', 'articles') }}
