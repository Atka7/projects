package game.valorant.valorantwallpapers.model;

public class CategoryItem {

    public  String imageLink, name, number;

    public  CategoryItem(String imageLink, String name, String number )
    {
        this.imageLink = imageLink;
        this.name = name;
        this.number = number;
    }

    public CategoryItem()
    {}

    public String getImageLink()
    {
        return imageLink;
    }

    public void setImageLink(String imageLink)
    {
        this.imageLink = imageLink;
    }

    public String getName()
    {
        return name;
    }

    public String getNumber()
    {
        return number;
    }


    public void  setName(String name)
    {
        this.name = name;
    }
    public void  setNumber(String number)
    {
        this.number = number;
    }
}
