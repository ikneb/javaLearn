package net.devstudy.resume.service;

import net.devstudy.resume.form.AccountForm;
import net.devstudy.resume.form.UploadForm;

public interface PhotoDownloadService {
	
	void downloadFoto(AccountForm accountForm);
	void downloadCertificate(UploadForm uploadForm);

}
