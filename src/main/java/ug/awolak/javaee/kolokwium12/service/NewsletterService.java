package ug.awolak.javaee.kolokwium12.service;

import java.util.ArrayList;
import java.util.List;

import ug.awolak.javaee.kolokwium12.domain.Newsletter;

public class NewsletterService {

    private List<Newsletter> db = new ArrayList<Newsletter>();


    public void addNewsletter(Newsletter newsletter) {
        Newsletter newNewsletter = new Newsletter(newsletter.getName(),newsletter.getFrom(), newsletter.getTo(),newsletter.getFrequency(), newsletter.getSubjects());
        db.add(newNewsletter);
    }
    

    public List<Newsletter> getAllNewsletters() {
        return db;
    }
    

}
