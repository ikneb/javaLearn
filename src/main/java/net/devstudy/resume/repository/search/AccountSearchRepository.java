package net.devstudy.resume.repository.search;
 
 import org.springframework.data.domain.Page;
 import org.springframework.data.domain.Pageable;
 import org.springframework.data.elasticsearch.repository.ElasticsearchRepository;
 
 import net.devstudy.resume.entity.Account;
 
 
 public interface AccountSearchRepository extends ElasticsearchRepository<Account, Long> {
 
 	/**
 	 * 
 	 * http://docs.spring.io/spring-data/elasticsearch/docs/current/reference/html/#elasticsearch.query-methods.criterions
 	 */
 	Page<Account> findByObjectiveLikeOrSummaryLikeOrPracticsCompanyLikeOrPracticsPositionLike(
 			String objective, String summary, String practicCompany, String practicPosition, Pageable pageable);
 	
 }