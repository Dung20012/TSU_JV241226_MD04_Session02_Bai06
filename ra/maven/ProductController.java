package ra.maven;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.List;

@Controller
@SessionAttributes("productList")
public class ProductController {

    @ModelAttribute("productList")
    public List<Product> productList() {
        List<Product> list = new ArrayList<>();
        list.add(new Product(1, "Gạo nứt", "Mô tả gạo nứt", 200000, "image"));
        list.add(new Product(2, "Lạc rang", "Mô tả lạc rang", 50000, "image"));
        list.add(new Product(3, "Muối vừng", "Mô tả muối vừng", 500000, "image"));
        return list;
    }

    @GetMapping("/products")
    public String showProducts(@ModelAttribute("productList") List<Product> productList, Model model) {
        model.addAttribute("productList", productList);
        return "product-list";
    }

    @GetMapping("/products/add")
    public String showAddForm(Model model) {
        model.addAttribute("product", new Product()); // Model for form
        return "add-product";
    }

    @PostMapping("/products/add")
    public String addProduct(@ModelAttribute("product") Product product,
                             @ModelAttribute("productList") List<Product> productList) {
        product.setId(productList.size() + 1); // Auto tăng ID
        productList.add(product);
        return "redirect:/products"; // Quay lại danh sách
    }

    @GetMapping("/products/delete")
    public String deleteProduct(@RequestParam("id") int id,
                                @ModelAttribute("productList") List<Product> productList) {
        productList.removeIf(p -> p.getId() == id);
        return "redirect:/products";
    }

}
