# Internship-Management-System
# Internship Management System

A complete web-based platform for managing internships, connecting students with companies. Built with **HTML, CSS, PHP, and MySQL** for localhost deployment.

## 🌟 Features

### 👨‍🎓 **For Students**
- **Browse Internships**: Search and filter available internships by department, location, etc.
- **Apply Easily**: One-click application with resume upload and cover letter
- **Track Applications**: Monitor application status (Pending/Reviewed/Accepted/Rejected)
- **Dashboard**: Personal dashboard showing all applications and status updates

### 🏢 **For Companies**
- **Post Internships**: Create and manage internship listings with detailed requirements
- **Manage Applications**: Review, accept, or reject student applications
- **Dashboard**: Overview of posted internships and received applications
- **Company Profile**: Professional profile showcasing company information

### 🔧 **System Features**
- **Dual Authentication**: Separate login systems for students and companies
- **Secure Registration**: Input validation and password hashing
- **Responsive Design**: Mobile-friendly interface
- **MySQL Database**: Efficient data management with proper relationships
- **Localhost Ready**: Easy setup for local development and testing

## 📋 Prerequisites

- **XAMPP/WAMP/MAMP** (Apache + MySQL)
- **PHP 7.0+**
- **MySQL 5.6+**
- **Web Browser** (Chrome, Firefox, Edge)

## 🚀 Installation & Setup

### Step 1: Install XAMPP
1. Download and install [XAMPP](https://www.apachefriends.org/)
2. Start Apache and MySQL from XAMPP Control Panel

### Step 2: Setup Project
```bash
# Clone or download the project
# Place the project folder in:
# Windows: C:\xampp\htdocs\
# Mac: /Applications/XAMPP/htdocs/
# Linux: /opt/lampp/htdocs/

# Rename folder to 'internship-system'
```

### Step 3: Setup Database
1. Open browser and go to: `http://localhost/phpmyadmin`
2. Create a new database named: `internship_management`
3. Import the SQL file or run the SQL commands provided in `database_setup.sql`

### Step 4: Configure Database
Edit `config.php` if needed (default settings work with XAMPP):
```php
define('DB_HOST', 'localhost');
define('DB_USER', 'root');
define('DB_PASS', ''); // Empty password for XAMPP
define('DB_NAME', 'internship_management');
```

### Step 5: Run the Application
1. Open browser
2. Go to: `http://localhost/internship-system/`
3. Register as a student or company to begin

## 📁 Project Structure

```
internship-system/
│
├── index.php              # Homepage
├── config.php             # Database configuration
├── style.css              # Main stylesheet
│
├── register.php           # Registration page
├── login.php              # Login page
├── logout.php             # Logout script
│
├── student_dashboard.php  # Student dashboard
├── company_dashboard.php  # Company dashboard
│
├── internships.php        # Browse internships
├── post_internship.php    # Post new internship
├── apply_internship.php   # Apply for internship
├── view_applications.php  # View applications (company)
│
├── view_internship.php    # View internship details
├── edit_internship.php    # Edit internship
├── delete_internship.php  # Delete internship
├── withdraw_application.php # Withdraw application
│
└── uploads/              # Resume uploads directory
    └── resumes/
```

## 🗄️ Database Schema

### Main Tables:
- **students**: Student information and credentials
- **companies**: Company information and credentials
- **internships**: Internship listings posted by companies
- **applications**: Student applications for internships

### Relationships:
- Companies (1) → Internships (Many)
- Students (1) → Applications (Many)
- Internships (1) → Applications (Many)

## 🛠️ Technical Details

### Security Features:
- **Password Encryption**: MD5 hashing (upgrade to password_hash() for production)
- **SQL Injection Protection**: Prepared statements
- **Input Sanitization**: Custom sanitize_input() function
- **Session Management**: Secure user sessions
- **File Upload Security**: Type and size validation

### Key Functions:
- **User Authentication**: Role-based access control
- **Search & Filter**: Find internships by category/department
- **Application Tracking**: Real-time status updates
- **Profile Management**: Update student/company information

## 👥 User Roles

### Student
1. Register with student details
2. Browse available internships
3. Apply with resume and cover letter
4. Track application status
5. View company details

### Company
1. Register with company details
2. Post internship opportunities
3. Review incoming applications
4. Update application status
5. Manage internship listings

## 📱 Pages Overview

### Public Pages
- **Homepage**: Welcome page with features overview
- **Internship Listings**: Browse all available internships
- **Login/Register**: Account creation and authentication

### Student Pages
- **Dashboard**: Personal overview and application tracking
- **Apply Page**: Submit applications for internships
- **Profile**: View and edit student information

### Company Pages
- **Dashboard**: Company overview and internship management
- **Post Internship**: Create new internship listings
- **View Applications**: Review and manage student applications
- **Company Profile**: Manage company information

## 🔧 Customization

### Change Styling
Edit `style.css` to modify colors, fonts, and layout:
```css
:root {
    --primary-color: #3498db;
    --secondary-color: #2c3e50;
    --accent-color: #e74c3c;
}
```

### Add New Features
1. **Email Notifications**: Add PHPMailer for email alerts
2. **Advanced Search**: Implement keyword search functionality
3. **Rating System**: Add company/student ratings
4. **Chat System**: Real-time messaging between students and companies

### Database Modifications
To add new fields to tables:
```sql
ALTER TABLE students ADD COLUMN new_column VARCHAR(255);
```

## 🧪 Testing

### Test Accounts
**Student:**
- Email: john@example.com
- Password: password123

**Company:**
- Email: hr@techsolutions.com
- Password: company123

### Test Scenarios
1. **Student Registration & Application**
2. **Company Registration & Internship Posting**
3. **Application Review Process**
4. **Search and Filter Functionality**

## ⚡ Performance Tips

1. **Database Indexing**: Add indexes on frequently searched columns
2. **Image Optimization**: Compress uploaded resumes
3. **Caching**: Implement caching for static content
4. **Pagination**: Add pagination for internship listings

## 🔐 Security Recommendations for Production

1. **Use HTTPS**: Enable SSL/TLS encryption
2. **Stronger Password Hashing**: Use `password_hash()` and `password_verify()`
3. **CSRF Protection**: Add CSRF tokens to forms
4. **Input Validation**: Implement server-side validation
5. **File Upload Restrictions**: Limit file types and sizes
6. **Session Security**: Regenerate session IDs on login

## 🐛 Troubleshooting

### Common Issues:

1. **"Connection failed" error**
   - Ensure MySQL is running in XAMPP
   - Check database credentials in config.php
   - Verify database name matches

2. **Page not loading**
   - Check if files are in correct htdocs folder
   - Ensure .php extension on all PHP files
   - Check Apache is running

3. **File upload not working**
   - Create `uploads/resumes/` directory
   - Set proper permissions (chmod 777 on Linux/Mac)
   - Check php.ini upload settings

4. **SQL errors**
   - Import database SQL correctly
   - Check table names in queries
   - Verify column names match

### Debug Mode:
Add to config.php for debugging:
```php
error_reporting(E_ALL);
ini_set('display_errors', 1);
```

## 📈 Future Enhancements

### Planned Features:
1. **Email Notifications**: Application status updates
2. **Advanced Search**: Filters for location, stipend, duration
3. **Admin Panel**: System administrator interface
4. **Reporting**: Generate reports and analytics
5. **Mobile App**: React Native/iOS/Android application
6. **Calendar Integration**: Interview scheduling
7. **Document Templates**: Resume/CV builders
8. **Analytics Dashboard**: Usage statistics and insights

### Technical Improvements:
1. **REST API**: For mobile app integration
2. **Vue.js/React Frontend**: Modern JavaScript framework
3. **Docker Support**: Containerized deployment
4. **Unit Tests**: PHPUnit test suite
5. **CI/CD Pipeline**: Automated testing and deployment

## 🤝 Contributing

1. Fork the repository
2. Create a feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

### Contribution Guidelines:
- Follow existing code style
- Add comments for complex logic
- Update documentation accordingly
- Test changes thoroughly

## 📄 License

This project is licensed under the MIT License - see the LICENSE file for details.

## 🆘 Support

For support:
1. Check the Troubleshooting section
2. Review PHP error logs in XAMPP
3. Check browser console for JavaScript errors
4. Verify all prerequisites are installed

## 🙏 Acknowledgments

- **XAMPP** for providing easy PHP/MySQL environment
- **PHP Community** for excellent documentation
- **Bootstrap** (concept) for responsive design inspiration
- **All Contributors** who help improve this project

## 📞 Contact

For questions or feedback:
- Open an issue on GitHub
- Provide detailed description of the problem
- Include screenshots if applicable
- Share your environment details

---

**Ready to launch your own internship management system? Follow the installation guide above and start connecting students with opportunities!**

---

## Quick Start Commands

```bash
# Start XAMPP services
sudo /opt/lampp/lampp start  # Linux/Mac
# Or use XAMPP Control Panel on Windows

# Access application
http://localhost/internship-system/

# Access phpMyAdmin
http://localhost/phpmyadmin/
```

## Demo Credentials

**Student Demo:**
- Student ID: STU001
- Email: john@example.com
- Password: password123

**Company Demo:**
- Company ID: COMP001
- Email: hr@techsolutions.com
- Password: company123

---

