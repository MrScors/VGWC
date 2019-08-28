package vgwc.model;

import javax.persistence.*;

@Entity
@Table(name = "heroes")
public class Hero {
    @Id
    @GeneratedValue(strategy=GenerationType.SEQUENCE,
            generator="hero_seq")
    @SequenceGenerator(name="hero_seq",
            sequenceName="SEQ_HERO", allocationSize=1)
    @Column(name="id", updatable=false, nullable=false)
    private Integer id;

    @Column(name="name")
    private String name;

    @Column(name="picture_name")
    private String pictureName;
    @Column(name="picture_prev_name")
    private String picturePrevName;

    //bad against
    @Column(name="awful_against")
    private String awfulAgainst;
    @Column(name="very_bad_against")
    private String veryBadAgainst;
    @Column(name="bad_against")
    private String badAgainst;
    @Column(name="notGood_against")
    private String notGoodAgainst;

    //good against
    @Column(name="nice_against")
    private String niceAgainst;
    @Column(name="good_against")
    private String goodAgainst;
    @Column(name="very_good_against")
    private String veryGoodAgainst;
    @Column(name="perfect_against")
    private String perfectAgainst;

    //good with
    @Column(name="nice_with")
    private String niceWith;
    @Column(name="good_with")
    private String goodWith;
    @Column(name="very_good_with")
    private String veryGoodWith;
    @Column(name="perfect_with")
    private String perfectWith;

    // **********soon**********

    //bad items

    //good items

    //bad against items

    //good against items


    public Hero(String awfulAgainst, String veryBadAgainst,
                String badAgainst, String notGoodAgainst,
                String niceAgainst, String goodAgainst,
                String veryGoodAgainst, String perfectAgainst,
                String niceWith, String goodWith,
                String veryGoodWith, String perfectWith, String name) {
        this.name = name;
        this.awfulAgainst = awfulAgainst;
        this.veryBadAgainst = veryBadAgainst;
        this.badAgainst = badAgainst;
        this.notGoodAgainst = notGoodAgainst;
        this.niceAgainst = niceAgainst;
        this.goodAgainst = goodAgainst;
        this.veryGoodAgainst = veryGoodAgainst;
        this.perfectAgainst = perfectAgainst;
        this.niceWith = niceWith;
        this.goodWith = goodWith;
        this.veryGoodWith = veryGoodWith;
        this.perfectWith = perfectWith;
    }

    public Hero() {
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getAwfulAgainst() {
        return awfulAgainst;
    }

    public void setAwfulAgainst(String awfulAgainst) {
        this.awfulAgainst = awfulAgainst;
    }

    public String getVeryBadAgainst() {
        return veryBadAgainst;
    }

    public void setVeryBadAgainst(String veryBadAgainst) {
        this.veryBadAgainst = veryBadAgainst;
    }

    public String getBadAgainst() {
        return badAgainst;
    }

    public void setBadAgainst(String badAgainst) {
        this.badAgainst = badAgainst;
    }

    public String getNotGoodAgainst() {
        return notGoodAgainst;
    }

    public void setNotGoodAgainst(String notGoodAgainst) {
        this.notGoodAgainst = notGoodAgainst;
    }

    public String getNiceAgainst() {
        return niceAgainst;
    }

    public void setNiceAgainst(String niceAgainst) {
        this.niceAgainst = niceAgainst;
    }

    public String getGoodAgainst() {
        return goodAgainst;
    }

    public void setGoodAgainst(String goodAgainst) {
        this.goodAgainst = goodAgainst;
    }

    public String getVeryGoodAgainst() {
        return veryGoodAgainst;
    }

    public void setVeryGoodAgainst(String veryGoodAgainst) {
        this.veryGoodAgainst = veryGoodAgainst;
    }

    public String getPerfectAgainst() {
        return perfectAgainst;
    }

    public void setPerfectAgainst(String perfectAgainst) {
        this.perfectAgainst = perfectAgainst;
    }

    public String getNiceWith() {
        return niceWith;
    }

    public void setNiceWith(String niceWith) {
        this.niceWith = niceWith;
    }

    public String getGoodWith() {
        return goodWith;
    }

    public void setGoodWith(String goodWith) {
        this.goodWith = goodWith;
    }

    public String getVeryGoodWith() {
        return veryGoodWith;
    }

    public void setVeryGoodWith(String veryGoodWith) {
        this.veryGoodWith = veryGoodWith;
    }

    public String getPerfectWith() {
        return perfectWith;
    }

    public void setPerfectWith(String perfectWith) {
        this.perfectWith = perfectWith;
    }

    public String getPictureName() {
        return pictureName;
    }

    public void setPictureName(String pictureName) {
        this.pictureName = pictureName;
    }

    public String getPicturePrevName() {
        return picturePrevName;
    }

    public void setPicturePrevName(String picturePrevName) {
        this.picturePrevName = picturePrevName;
    }
}
