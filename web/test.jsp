  <c:when test="${not empty param.categoryId}">
                                                                <c:set var="categoryIdN" value="${param.categoryId}" />
                                                                <!-- N?u c� categoryId, s?p x?p theo categoryId -->
                                                                <a href="${pageContext.request.contextPath}/home?search=category&categoryId=${categoryIdN}&sort=price-asc">Gi� t?ng d?n</a>
                                                                <a href="?sort=price-desc" class="dropdown-item">Gi� gi?m d?n</a>
                                                            </c:when>
                                                            <c:otherwise>
                                                                <!-- N?u kh�ng c� categoryId, s?p x?p t?t c? s?n ph?m -->
                                                                <a href="?sort=default" class="dropdown-item">M?c ??nh</a>
                                                                <a href="?sort=price-asc" class="dropdown-item">Gi� t?ng d?n</a>
                                                                <a href="?sort=price-desc" class="dropdown-item">Gi� gi?m d?n</a>
                                                            </c:otherwise>
                                                                
                                                                
                                                                
                                                                
                                                                
                                                                
                                                                
                                                                
                                                                <a href="${pageContext.request.contextPath}/home?sort=price-asc">