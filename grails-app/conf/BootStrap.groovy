import com.KickStart.security.Role
import com.KickStart.security.User
import com.KickStart.security.UserRole
import com.Helper.ListIndestry
import com.Helper.ListCity

class BootStrap {

    def init = { servletContext ->
		def adminRole = new Role(authority: 'ROLE_ADMIN').save(flush: true)
		def userRole = new Role(authority: 'ROLE_USER').save(flush: true)
		def userRole1 = new Role(authority: 'ROLE_USER').save(flush: true)
		
		def testUser = new User(username: 'me', password: 'password')
		def testUser2 = new User(username: 'me2', password: 'password')
		def testUser1 = new User(username: 'me1', password: 'password1')
		testUser.save(flush: true)
		testUser1.save(flush:true)
		testUser2.save(flush:true)
		UserRole.create testUser, userRole, true
		UserRole.create testUser1, adminRole, true
		UserRole.create testUser2, userRole1,true
		assert User.count() == 3
		assert Role.count() == 2
		assert UserRole.count() == 2
		
		def indestry = new ListIndestry(indestryName : 'Test1').save(flush: true)
		def indestry2 = new ListIndestry(indestryName : 'Test2').save(flush: true)
		
		def city1 = new ListCity(cityName : 'Bangalore').save(flush: true)
		def city2 = new ListCity(cityName : 'Hyderabad').save(flush: true)
		
    }
    def destroy = {
    }
}
