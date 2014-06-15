package com.dao.lyj.message;

import java.util.List;
import com.models.Message;

public interface MessageManager {
	boolean add(Message message);
    boolean check(Message message);
    List<Message> findAll();
    List<Message> findPage(int start,int maxSize);
    Long getCounter();
    boolean delete(int messageId);
    boolean update(Message message);
    Message findById(int messageId);
    Message findByName(String messageName);
}
