SQL Revision Notes 📘

A structured, self-written collection of SQL notes built while preparing for Data Analyst / Business Analyst interviews and hands-on project work — covering everything from basic SELECT statements to window functions, CTEs, and real business-query patterns.

This isn't a copy-paste cheat sheet. Every concept here is explained with the reasoning behind it (why HAVING exists, how joins actually behave with unmatched rows, why indexes speed up reads but slow down writes) — built to actually teach the concept, not just list syntax.


📂 What's in this repo

FileDescriptionSQL_Notes_Data_Analyst.mdQuick-reference cheat sheet — syntax, patterns, and a one-page summary table for fast review before interviewsSQL_Notes_Data_Analyst_Detailed.pdfFull detailed guide with explanations, mental models, and reasoning behind every conceptpractice-queries/Practice problems with my own solutions, organized by topic

(Update this table to match your actual folder structure.)


🧠 Topics Covered


Query execution order (FROM → WHERE → GROUP BY → HAVING → SELECT → ORDER BY → LIMIT) and why it explains half of SQL's "weird rules"
SELECT, WHERE, filtering, sorting, and pagination
Aggregate functions, GROUP BY, HAVING
All JOIN types (INNER, LEFT, RIGHT, FULL, SELF, CROSS) with the anti-join pattern
Subqueries — scalar, correlated, EXISTS vs IN vs JOIN
CTEs (WITH) and recursive CTEs for hierarchical data
Window functions — ROW_NUMBER, RANK, DENSE_RANK, LAG/LEAD, running totals, moving averages
CASE WHEN conditional logic and conditional aggregation
String and date/time functions
Set operations (UNION, INTERSECT, EXCEPT)
NULL handling and common traps
Indexes and query optimization (EXPLAIN, why functions on indexed columns break performance)
Transactions and ACID properties
Data cleaning patterns (duplicates, outliers, standardization)
Business/DA query patterns — retention rate, MoM growth, CLV, cohort analysis, funnel drop-off, top-N-per-group, pivoting with CASE
15+ interview questions with reasoned answers, not just memorized lines



🎯 Why I built this

I'm a final-year CS (AI/ML) student prepping for Data Analyst, Business Analyst, and Gen AI roles. Instead of just collecting scattered notes, I wanted a single well-organized reference that works for two different situations:


Interview prep — fast recall of the "why" behind SQL rules, not just syntax
Actual project work — copy-paste-ready patterns for real analysis (I've used these directly in my Loan Default Risk Intelligence project and ongoing e-commerce analytics project)


🚀 How to Use This


Read the detailed PDF once, top to bottom — it's written to build concept by concept.
Use the markdown cheat sheet for quick review before interviews.
Try the practice queries cold before checking the pattern — struggling first is what makes it stick.


🛠️ Tools

Written and tested primarily in MySQL Workbench. Most syntax is standard SQL; MySQL-specific functions (DATE_FORMAT, IFNULL, etc.) are noted where relevant.

🤝 Contributing

Found an error or want to add a pattern I missed? PRs and issues are welcome.

📄 License

This project is licensed under the MIT License — feel free to fork and adapt for your own SQL revision.


⭐ If these notes helped you prep for an interview, consider starring the repo.