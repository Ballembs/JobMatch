package jobmatch

/**
 * MailSenderService
 * A service class encapsulates the core business logic of a Grails application
 */
class MailSenderService {

	def mailService
    def sendMail(userName, email) {
		mailService.sendMail {
			to email
			from "bsb.balu@gmail.com"
			subject "Welcome to JobMatch"
			body "Thank you ${userName} for usign JobMatch. We will help you to get success."
		}
		
    }
	def sendMeMail(userName, email)
	{
		mailService.sendMail {
			to email
			from "bsb.balu@gmail.com"
			subject "Welcome to JobMatch"
			html view: "/emails/html-view", model: [param1: '${userName}']
			//body "Thank you ${userName} for usign JobMatch. We will help you to get success."
		}
		
	}
}
