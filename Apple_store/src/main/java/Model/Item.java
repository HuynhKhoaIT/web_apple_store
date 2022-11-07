package Model;

public class Item {
    private  SanPham product;
    private  int quantity;
    private int price;

    public Item() {
    }

    public Item(SanPham product, int quantity, int price) {
        this.product = product;
        this.quantity = quantity;
        this.price = price;
    }

    public SanPham getProduct() {
        return product;
    }

    public void setProduct(SanPham product) {
        this.product = product;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }
}
