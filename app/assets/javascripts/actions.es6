import AppDispatcher from '/app_dispatcher';
import Constants from '/constants';
import Api from '/api';

class Actions  {
    static addComment (params) {
      Api.post('/posts/1/comments', {
        comment: params
      }).then( resp => {
        return resp.json();
      }).then( comment => {
        AppDispatcher.dispatch({
          actionType: Constants.ADD_COMMENT,
          comment: comment
        });
      });
    }

    static setComments (params) {
      AppDispatcher.dispatch({
        actionType: Constants.SET_COMMENT,
        comments: params
      });
    }

    static upvoteComment(comment) {
      Api.put('/posts/1/comments/${comment.id}/upvote').then( resp => {
        return resp.json();
      }).then( comment => {
        AppDispatcher.dispatch({
          actionType: Constants.UPVOTE_COMMENT,
          comment: comment
        });
      });
    }
  }

export default Actions;
