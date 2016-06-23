package net.devstudy.resume.service.impl;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.util.FileCopyUtils;

import net.coobird.thumbnailator.Thumbnails;
import net.devstudy.resume.entity.Account;
import net.devstudy.resume.entity.Certificate;
import net.devstudy.resume.form.AccountForm;
import net.devstudy.resume.form.UploadForm;
import net.devstudy.resume.repository.storage.AccountRepository;
import net.devstudy.resume.service.EditAccountService;
import net.devstudy.resume.service.PhotoDownloadService;
import net.devstudy.resume.util.SecurityUtil;

@Service
public class PhotoDownloadServiceImpl implements PhotoDownloadService {
	
	@Value("download.foto.temporary")
	private String temporary;

	@Value("${download.foto.avatar}")
	private String mediaDir;
	
	@Autowired
	AccountRepository accountRepository;
	
	@Autowired
	EditAccountService editAccountService;

	@Override
	public void downloadFoto(AccountForm accountForm) {
		try {
			String uid = UUID.randomUUID().toString() + ".jpg";
			File photo = new File(temporary + uid);
			BufferedOutputStream stream = new BufferedOutputStream(new FileOutputStream(photo));
			FileCopyUtils.copy(accountForm.getFile().getInputStream(), stream);
			Thumbnails.of(photo).size(400, 400).toFile(new File(mediaDir + "/avatar/" + uid));
			stream.close();
			String smallUid = uid.replace(".jpg", "-sm.jpg");
			Thumbnails.of(photo).size(110, 110).toFile(new File(mediaDir + "/avatar/" + smallUid));
			accountForm.getAccount().setLargePhoto("/media/avatar/" + uid);
			accountForm.getAccount().setSmallPhoto("/media/avatar/" + smallUid);
		} catch (Exception e) {
			e.printStackTrace();
		}

	}

	@Override
	public void downloadCertificate(UploadForm uploadForm) {
		try {
			String uid = UUID.randomUUID().toString() + ".jpg";
			File photo = new File(temporary + uid);
			BufferedOutputStream stream = new BufferedOutputStream(new FileOutputStream(photo));
			FileCopyUtils.copy(uploadForm.getFile().getInputStream(), stream);
			Thumbnails.of(photo).size(100, 100).toFile(new File(mediaDir + "/certificates/" + uid));
			stream.close();
			Account account = accountRepository.findOne(SecurityUtil.getCurrentIdAccount());
			Certificate certificate = new Certificate();
			certificate.setLargeUrl("/media/certificates/" + uid);
			certificate.setSmallUrl("/media/certificates/" + uid);
			certificate.setName(uploadForm.getName());
			certificate.setAccount(account);
			account.getCertificates().add(certificate);
			editAccountService.updateCertificates(SecurityUtil.getCurrentIdAccount(),account.getCertificates());
		} catch (Exception e) {
		}
		
	}

}
