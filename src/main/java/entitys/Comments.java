package entitys;

import javax.persistence.*;
import java.sql.Date;
import java.sql.Timestamp;

@Entity
public class Comments {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id", nullable = false)
    private int id;


    @JoinColumn(name = "user_id")
    private int user_id;


    @JoinColumn(name="video_id")
    private int  video_id;

    @Basic
    @Column(name = "binhluan", nullable = true, length = 255)
    private String binhluan;
    @Basic
    @Column(name = "date_comment", nullable = true)
    private Timestamp dateComment;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getUser_id() {
        return user_id;
    }

    public void setUser_id(int user_id) {
        this.user_id = user_id;
    }

    public int getVideo_id() {
        return video_id;
    }

    public void setVideo_id(int video_id) {
        this.video_id = video_id;
    }

    public String getBinhluan() {
        return binhluan;
    }

    public void setBinhluan(String binhluan) {
        this.binhluan = binhluan;
    }

    public Timestamp getDateComment() {
        return dateComment;
    }

    public void setDateComment(Timestamp dateComment) {
        this.dateComment = dateComment;
    }
}
