package net.devstudy.resume.service.impl;
 
 import javax.annotation.PostConstruct;
 
 import org.slf4j.Logger;
 import org.slf4j.LoggerFactory;
 import org.springframework.beans.factory.annotation.Autowired;
 import org.springframework.beans.factory.annotation.Value;
 import org.springframework.data.elasticsearch.core.ElasticsearchOperations;
 import org.springframework.stereotype.Service;

import net.devstudy.resume.entity.Account;
import net.devstudy.resume.repository.search.AccountSearchRepository;
import net.devstudy.resume.service.FindAccountService;

 

 @Service
 public class ElasticSearchIndexingService {
 	private static final Logger LOGGER = LoggerFactory.getLogger(ElasticSearchIndexingService.class);
 	
 	@Value("${index.all.during.startup}")
 	private boolean indexAllDuringStartup;
 	
 	@Autowired
 	private AccountSearchRepository accountSearchRepository;
 	
 	@Autowired
 	private ElasticsearchOperations elasticsearchOperations;
 	
 	@Autowired
 	private FindAccountService findAccountService;
 	
 	@PostConstruct
 	private void postConstruct(){
 		if(indexAllDuringStartup) {
 			LOGGER.info("Detected index all command");
 			LOGGER.info("Clear old index");
 			elasticsearchOperations.deleteIndex(Account.class);
 			LOGGER.info("Start index of account");
 			for(Account p : findAccountService.findAllForIndexing()){
 				accountSearchRepository.save(p);
 				LOGGER.info("Successful indexing of account: "+p.getUid());
 			}
 			LOGGER.info("Finish index of account");
 		}
 		else{
 			LOGGER.info("indexAllDuringStartup is disabled");
 		}
 	}
 }