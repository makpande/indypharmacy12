import AppDispatcher from '/app_dispatcher';
import Constants from '/constants';
import Api from '/api';

class Actions  {

    constructor(postId) {
      this.postId = postId;

    }
    addComment (params) {
      Api.post('/posts/${postId}/comments', {
        comment: params
      }).then( comment => {
        AppDispatcher.dispatch({
          actionType: Constants.ADD_COMMENT,
          comment: comment
        });
      });
    }

    setComments (params) {
      AppDispatcher.dispatch({
        actionType: Constants.SET_COMMENT,
        comments: params
      });
    }

    upvoteComment(comment) {
      Api.put('/posts/${postId}/comments/${comment.id}/upvote').then( comment => {
        AppDispatcher.dispatch({
          actionType: Constants.UPVOTE_COMMENT,
          comment: comment
        });
      });
    }
  }

export default Actions;
