package com.cydeo.service;

import com.cydeo.model.Comment;
import com.cydeo.proxy.CommentNotificationProxy;
import com.cydeo.repository.CommentRepository;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Component;

@Component
public class CommentService {

    private final CommentRepository dbCommentRepository;
    //We put final, bc then Java reminds you to create constructor
    private final CommentNotificationProxy commentNotificationProxy;

    //We created constructor to provide @Autowired
    public CommentService(CommentRepository dbCommentRepository, @Qualifier("emailCommentNotificationProxy") CommentNotificationProxy commentNotificationProxy) {
        this.dbCommentRepository = dbCommentRepository;
        this.commentNotificationProxy = commentNotificationProxy;
    }

    public void publishComment(Comment comment){
        dbCommentRepository.storeComment(comment);
        commentNotificationProxy.sendComment(comment);
    }

}
