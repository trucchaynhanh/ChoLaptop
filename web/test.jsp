  <c:when test="${not empty param.categoryId}">
                                                                <c:set var="categoryIdN" value="${param.categoryId}" />
                                                                <!-- N?u có categoryId, s?p x?p theo categoryId -->
                                                                <a href="${pageContext.request.contextPath}/home?search=category&categoryId=${categoryIdN}&sort=price-asc">Giá t?ng d?n</a>
                                                                <a href="?sort=price-desc" class="dropdown-item">Giá gi?m d?n</a>
                                                            </c:when>
                                                            <c:otherwise>
                                                                <!-- N?u không có categoryId, s?p x?p t?t c? s?n ph?m -->
                                                                <a href="?sort=default" class="dropdown-item">M?c ??nh</a>
                                                                <a href="?sort=price-asc" class="dropdown-item">Giá t?ng d?n</a>
                                                                <a href="?sort=price-desc" class="dropdown-item">Giá gi?m d?n</a>
                                                            </c:otherwise>
                                                                
                                                                
                                                                
                                                                
                                                                
                                                                
                                                                
                                                                
                                                                <a href="${pageContext.request.contextPath}/home?sort=price-asc">