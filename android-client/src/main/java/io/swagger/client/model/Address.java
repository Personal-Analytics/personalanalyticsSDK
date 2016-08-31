/**
 * IBM Personal Analytics - Services API
 * No descripton provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)
 *
 * OpenAPI spec version: 0.1.0
 * 
 *
 * NOTE: This class is auto generated by the swagger code generator program.
 * https://github.com/swagger-api/swagger-codegen.git
 * Do not edit the class manually.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package io.swagger.client.model;

import java.math.BigDecimal;

import io.swagger.annotations.*;
import com.google.gson.annotations.SerializedName;


@ApiModel(description = "")
public class Address  {
  
  @SerializedName("line1")
  private String line1 = null;
  @SerializedName("line2")
  private String line2 = null;
  @SerializedName("city")
  private String city = null;
  @SerializedName("zip")
  private BigDecimal zip = null;
  @SerializedName("country")
  private String country = null;

  /**
   **/
  @ApiModelProperty(value = "")
  public String getLine1() {
    return line1;
  }
  public void setLine1(String line1) {
    this.line1 = line1;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public String getLine2() {
    return line2;
  }
  public void setLine2(String line2) {
    this.line2 = line2;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public String getCity() {
    return city;
  }
  public void setCity(String city) {
    this.city = city;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public BigDecimal getZip() {
    return zip;
  }
  public void setZip(BigDecimal zip) {
    this.zip = zip;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public String getCountry() {
    return country;
  }
  public void setCountry(String country) {
    this.country = country;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    Address address = (Address) o;
    return (line1 == null ? address.line1 == null : line1.equals(address.line1)) &&
        (line2 == null ? address.line2 == null : line2.equals(address.line2)) &&
        (city == null ? address.city == null : city.equals(address.city)) &&
        (zip == null ? address.zip == null : zip.equals(address.zip)) &&
        (country == null ? address.country == null : country.equals(address.country));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (line1 == null ? 0: line1.hashCode());
    result = 31 * result + (line2 == null ? 0: line2.hashCode());
    result = 31 * result + (city == null ? 0: city.hashCode());
    result = 31 * result + (zip == null ? 0: zip.hashCode());
    result = 31 * result + (country == null ? 0: country.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class Address {\n");
    
    sb.append("  line1: ").append(line1).append("\n");
    sb.append("  line2: ").append(line2).append("\n");
    sb.append("  city: ").append(city).append("\n");
    sb.append("  zip: ").append(zip).append("\n");
    sb.append("  country: ").append(country).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}
