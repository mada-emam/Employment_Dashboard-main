## Project Description

The Employment Dashboard is a web application that helps people find jobs. It allows job seekers to view and filter job listings, and submit requests to apply for available positions. Employers can manage job listings, qualifications, and applications, and review and accept applicant requests. The Employment Dashboard is built with Node.js, Express.js, MySQL, and React.js, and includes features for both admin and applicant users.

## Features

### Admin User

- Login/Logout: Admin users can log in and out of the application.
- Manage Jobs: Admin users can add, update, delete, and list jobs.
- Manage Qualifications: Admin users can add, update, delete, and list job qualifications.
- Manage Applicants: Admin users can add, update, delete, and list applicants.
- Accept or Decline Requests: Admin users can accept or decline job requests made by applicants.
- Show Request History: Admin users can view the history of job requests for all jobs.

### Applicant User

- Login/Logout: Applicant users can log in and out of the application.
- View and Filter Jobs: Applicant users can view and filter job listings.
- Request Jobs: Applicant users can send job requests to the admin for available listings.
- Show Search History: Applicant users can view the history of job searches related to their account.

## Database Models

- User Model: The User model consists of email, password, phone, status (active, in-active), and type (admin, Applicant).
- Job Model: The Job model consists of position, description, offer, maximum candidate number, and qualifications.
- Qualifications Model: The Qualifications model consists of description.

## Technologies

- Backend: Node.js 🚀 and Express.js 🌐✨
- Database: MySQL 🐬
- Frontend: React.js ⚛️🔵

