package productList.domain;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class CurrentCateDTO {
	private String id;
    private String majorCateName;
    private String middleCateName;
    private String subCateName;
    private String miniCateName;


}
