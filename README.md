# 1. Ticket System - Web Forms (C#, MS SQL)
 **Status: Archived**  
* Project available at: https://www.ticketsystem.mdwojak.pl/

Archived ASP.NET Web Forms helpdesk / ticket management system built in C# with MS SQL database integration. The project remains fully functional and is published for reference and portfolio purposes.

# 2 Overview
The system provides a complete workflow for creating, managing, and resolving support tickets.  
It includes authentication, role-based access, reporting, email notifications, news publishing, and administrative tools.

Despite being an older Web Forms–based project, the application remains fully operational and demonstrates real-world logic, database integration, and multi-role workflows.

# 3. Features

* Authentication & User Management.
* User registration and login.
* Role levels: **0 (user)**, **1 (helpdesk)**, **2 (administrator)**.
* Promote/demote users between levels.
* Delete user accounts.
* View a full summary of all accounts and their permissions.
* Display list of latest registrations.

# 4. Screenshot
Home Page – Dashboard & Statistics
The main dashboard includes:
* monthly status charts,
* daily statistics,
* weekly ticket counts,
* a “News” section

<img src="https://github.com/Midwo/ticket-system/blob/master/Photo1.png" width="900" alt="Home Page – Dashboard & Statistics">

Ticket Creation Form
Allows users to create a new ticket with:
* priority,
* category,
* due date,
* ticket description/content.

<img src="https://github.com/Midwo/ticket-system/blob/master/Photo2.png" width="900" alt="Ticket Creation Form">

Ticket List – Helpdesk View
Displays all open tickets grouped by status, including information about tickets that are not yet assigned to any helpdesk operator.

<img src="https://github.com/Midwo/ticket-system/blob/master/Photo3.png" width="900" alt="Helpdesk View - all">
<img src="https://github.com/Midwo/ticket-system/blob/master/Photo4.png" width="900" alt="Helpdesk View - blocking">

Admin Panel – Users & Permissions
Administrative tools:
* assign permission levels (0, 1, 2),
* delete user accounts,
* view recent registrations,
* generate summary reports of accounts and permissions.
  
<img src="https://github.com/Midwo/ticket-system/blob/master/Photo5.png" width="600" alt="assign permission levels (0, 1, 2)">
<img src="https://github.com/Midwo/ticket-system/blob/master/Photo6.png" width="600" alt="delete user accounts">
<img src="https://github.com/Midwo/ticket-system/blob/master/Photo7.png" width="600" alt="new news">
<img src="https://github.com/Midwo/ticket-system/blob/master/Photo8.png" width="900" alt="generate summary reports">

# 5. Ticket Management
* Create new tickets with:
  * priority,
  * category,
  * due date,
  * description/content.
* Automatic email notifications:
  * to the main administrator when a new ticket is created,
  * to the user who submitted the ticket.
* View all open tickets (helpdesk/admin).
* View unassigned tickets grouped by status.
* Block/unblock tickets.
* Full correspondence thread inside a ticket.
* Search tickets by modification date.

# 6. Dashboard & Reporting
Home page includes:
  * Monthly status diagrams.
  * Daily statistics.
  * Weekly ticket count.
  * All charts grouped by ticket status.

# 7. Reports:
* Summary reports for selected date ranges.
* Status breakdowns.
* Global system summary (all accounts, permissions, ticket counts).

# 8. News Module
* Add news items displayed on the home page.
* News entries stored in the database.
* Automatically visible to all users.
  
# 9. Technology Stack
* ASP.NET Web Forms**
* C#
* MS SQL Server
* ADO.NET database access
* SMTP email notifications

# 10. Project Status

This project is **archived**.  
It is no longer under active development, but remains fully functional and is published for:
* portfolio presentation,
* historical reference,
* demonstration of legacy ASP.NET Web Forms architecture.
