package com.devsuperior.dslearnbds.entities;

import javax.persistence.Entity;
import javax.persistence.Table;
import java.io.Serializable;

@Entity
@Table(name = "tb_content")
public class Content extends Lesson implements Serializable {
    private static final long serialVersionUID = 1L;

    private String textContent;
    private String videoUri;

    public Content() {
    }

    public Content(Long id, String title, Integer position, Section section, String textContent, String videdoUri) {
        super(id, title, position, section);
        this.textContent = textContent;
        this.videoUri = videdoUri;
    }

    public String getTextContent() {
        return textContent;
    }

    public void setTextContent(String textContent) {
        this.textContent = textContent;
    }

    public String getVidedoUri() {
        return videoUri;
    }

    public void setVidedoUri(String videdoUri) {
        this.videoUri = videdoUri;
    }
}
