GET_ENDPOINT="http://127.0.0.1:5000/api/timeline_post"
POST_ENDPOINT="http://127.0.0.1:5000/api/timeline_post"
DELETE_ENDPOINT="http://127.0.0.1:5000/api/timeline_post/2"

create_timeline_post(){
local NAME="Test"
local EMAIL="tester@mlh.io"
local CONTENT="Look Mom, I have a working api call"
    curl -X POST -F "name=$NAME" -F "email=$EMAIL" -F "content=$CONTENT" $POST_ENDPOINT
}

# Function to retrieve and display all posts
get_timeline_posts() {
    curl $GET_ENDPOINT
}

# Function to delete post
delete_timeline_post() {
    curl -X DELETE $DELETE_ENDPOINT
}

get_timeline_posts
# curl -X POST http://127.0.0.1:5000/api/timeline_post -d COMMAND_CALL
# echo CALL