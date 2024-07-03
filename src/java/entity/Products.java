/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package entity;

import java.math.BigDecimal;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@ToString
@Builder
@Data
@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
/**
 *
 * @author yeuda
 */
public class Products {

    private int id;
    private String name;
    private String image;
    private int quantity;
    private int price;
    private String description;
    private int categoryId;
    private int brandId;
    private String config;
    private int guar;
    private int oldPrice;
    private String detailImage1;
    private String detailImage2;
    private String detailImage3;
    private String detailImage4;
    private String configDetail;
}
