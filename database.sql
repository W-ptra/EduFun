-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 05, 2024 at 11:09 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `before_uts`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '0001_01_01_000002_create_posts_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `author` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `category`, `content`, `author`, `date`, `image`, `created_at`, `updated_at`) VALUES
(1, 'How create good ui', 'interactive multimedia', 'Creating a good user interface (UI) is crucial for any successful application. A well-designed UI not only enhances the user experience but also boosts the overall functionality of the product. Here are some key principles to consider when designing an effective UI:\n\n1. **Understand Your Users**: Before you start designing, it’s essential to understand who your users are and what they need. Conduct user research through surveys, interviews, and usability testing to gather insights.\n\n2. **Focus on Usability**: A good UI is intuitive and easy to use. Ensure that navigation is straightforward and that users can easily find the information or features they need without confusion.\n\n3. **Consistency is Key**: Maintain a consistent look and feel throughout your application. This includes using the same color schemes, fonts, and button styles. Consistency helps users to learn the UI faster and improves their overall experience.\n\n4. **Use Visual Hierarchy**: Arrange UI elements to guide users\' attention where it is needed most. Use size, color, and spacing to highlight important features and create a flow that naturally directs users through your application.\n\n5. **Responsive Design**: With the variety of devices available today, ensure your UI is responsive. Design layouts that adapt to different screen sizes, providing a seamless experience whether users are on a desktop, tablet, or smartphone.\n\n6. **Testing and Iteration**: Finally, always test your UI with real users. Gather feedback and be willing to make changes. The best designs often come from continuous iteration and improvement.\n\nBy following these principles, you can create a user interface that not only meets but exceeds user expectations, leading to greater satisfaction and engagement.', 'adit', '2024-11-05', 'images/multimedia.jpeg', '2024-11-05 04:08:38', '2024-11-05 04:08:38'),
(2, 'Exploring the Benefits of Interactive Multimedia in Education', 'interactive multimedia', 'Interactive multimedia has transformed the educational landscape, enhancing the way information is delivered and absorbed. Here are some key benefits of incorporating interactive multimedia into learning environments:\n\n1. **Engagement and Motivation**: Interactive multimedia captures students\' attention more effectively than traditional teaching methods. By integrating videos, animations, and interactive quizzes, learners are more motivated to participate actively in their education.\n\n2. **Enhanced Understanding**: Complex concepts can be broken down into visual representations, making them easier to grasp. For instance, animations can illustrate scientific processes or historical events, providing a clearer understanding of the material.\n\n3. **Diverse Learning Styles**: Students have varying learning preferences, and interactive multimedia caters to these differences. Visual learners benefit from graphics and videos, while auditory learners engage with podcasts and narrated content. This diversity ensures that all students can find a method that resonates with them.\n\n4. **Immediate Feedback**: Interactive quizzes and assessments provide immediate feedback, allowing students to identify areas for improvement quickly. This instant evaluation fosters a growth mindset, encouraging learners to take ownership of their education and make adjustments as needed.\n\n5. **Collaboration Opportunities**: Many interactive multimedia tools promote collaboration among students. Group projects utilizing multimedia presentations encourage teamwork and enhance communication skills, preparing students for future workplace environments.\n\n6. **Accessibility**: Multimedia content can often be made more accessible for students with disabilities. Features like captions, audio descriptions, and adjustable text sizes ensure that all learners can engage with the material effectively.\n\nIncorporating interactive multimedia into educational settings not only enhances the learning experience but also prepares students for a technology-driven world. As educational institutions continue to embrace these tools, the potential for improved learning outcomes grows exponentially.', 'adit', '2024-11-05', 'images/multimedia.jpeg', '2024-11-05 04:08:38', '2024-11-05 04:08:38'),
(3, 'The Future of Interactive Multimedia in Digital Marketing', 'interactive multimedia', 'Interactive multimedia is reshaping the digital marketing landscape, offering brands innovative ways to connect with their audience. Here are several key trends that illustrate the future of interactive multimedia in marketing:\n\n1. **Personalized Experiences**: As technology evolves, brands can create tailored multimedia experiences for users. Interactive content, such as quizzes and surveys, allows marketers to gather data on consumer preferences and deliver personalized recommendations.\n\n2. **Enhanced Storytelling**: Interactive multimedia enables brands to tell their stories in compelling ways. By combining visuals, audio, and interactivity, marketers can craft narratives that resonate with audiences, making messages more memorable and impactful.\n\n3. **Gamification**: Incorporating game-like elements into marketing campaigns is becoming increasingly popular. Brands are using gamification strategies, such as rewards and challenges, to engage users and encourage participation, leading to higher conversion rates.\n\n4. **Augmented Reality (AR) and Virtual Reality (VR)**: AR and VR technologies are gaining traction in interactive multimedia marketing. Brands can create immersive experiences that allow customers to visualize products in their own environment, enhancing the decision-making process.\n\n5. **Social Media Integration**: Interactive multimedia content thrives on social media platforms, where users seek engaging experiences. Marketers are leveraging polls, interactive stories, and live videos to encourage interaction and foster community engagement.\n\n6. **Data-Driven Insights**: Interactive multimedia tools provide valuable analytics, enabling marketers to measure engagement and user behavior effectively. This data helps brands refine their strategies, ensuring they remain relevant and responsive to audience needs.\n\nAs interactive multimedia continues to evolve, its role in digital marketing will become increasingly significant. Brands that embrace these technologies will be better positioned to engage with their audience, drive conversions, and create lasting impressions in a crowded marketplace.', 'adit', '2024-11-05', 'images/multimedia.jpeg', '2024-11-05 04:08:38', '2024-11-05 04:08:38'),
(4, 'How to make good software', 'Software engineering', 'Creating good software is both an art and a science, and it involves several crucial steps that ensure the final product is not only functional but also reliable and user-friendly. Here’s a comprehensive guide on the process:\n\n1. **Define Requirements**: Start by clearly defining the software requirements. Engage stakeholders to understand their needs and expectations. This will provide a solid foundation for your development process.\n\n2. **Design**: Develop a high-level architecture and design for your software. This includes defining the overall structure, components, and how they interact. Good design is critical as it lays the groundwork for effective implementation.\n\n3. **Implementation**: Write clean, efficient, and maintainable code. Follow coding standards and best practices, such as using meaningful variable names and commenting your code for clarity. Version control systems like Git are essential for managing code changes.\n\n4. **Testing**: Rigorous testing is necessary to identify and fix defects before the software goes live. Employ various testing methodologies, including unit testing, integration testing, and user acceptance testing, to ensure your software is robust and meets all requirements.\n\n5. **Deployment**: Once testing is complete, deploy your software to the production environment. Plan the deployment process carefully to minimize downtime and ensure a smooth transition for users.\n\n6. **Maintenance and Updates**: Good software requires ongoing maintenance. Regularly update the software to fix bugs, enhance performance, and add new features based on user feedback. Continuous improvement is key to keeping your software relevant and effective.\n\nBy adhering to these steps, you can create software that not only meets functional requirements but also delights users, ultimately leading to higher adoption rates and customer satisfaction.', 'johan', '2024-11-05', 'images/softeng.jpeg', '2024-11-05 04:08:38', '2024-11-05 04:08:38'),
(5, 'Essential Tools for Software Development', 'Software engineering', 'In today’s fast-paced software development environment, having the right tools can significantly enhance productivity and collaboration. Here are some essential tools every developer should consider:\n\n1. **Version Control Systems (VCS)**: Tools like Git allow developers to track changes, collaborate with team members, and manage different versions of the codebase effectively.\n\n2. **Integrated Development Environments (IDEs)**: IDEs such as Visual Studio Code and IntelliJ IDEA provide comprehensive environments for coding, debugging, and testing, helping developers write code more efficiently.\n\n3. **Project Management Tools**: Tools like Jira and Trello help teams manage tasks, track progress, and communicate effectively. They ensure everyone is on the same page regarding project timelines and responsibilities.\n\n4. **Continuous Integration/Continuous Deployment (CI/CD)**: Tools like Jenkins and GitLab CI enable automated testing and deployment, ensuring that code changes are integrated smoothly and deployed quickly.\n\n5. **Collaboration Tools**: Communication platforms such as Slack or Microsoft Teams facilitate team collaboration, allowing for real-time discussions and file sharing.\n\n6. **Testing Frameworks**: Tools like Selenium and Jest help automate testing processes, ensuring code reliability and performance.\n\nBy utilizing these tools, software developers can streamline their workflows, enhance collaboration, and ultimately create higher-quality software products.', 'johan', '2024-11-05', 'images/softeng.jpeg', '2024-11-05 04:08:38', '2024-11-05 04:08:38'),
(6, 'Career switch to software engineering', 'Software engineering', 'Switching careers to software engineering can be an exciting and fulfilling journey. Whether you’re coming from a different industry or are a recent graduate, here are some key steps to help you make a successful transition:\n\n1. **Learn the Basics**: Start by learning programming fundamentals. Languages like Python, JavaScript, and Java are great for beginners. There are numerous online platforms offering free or low-cost courses to get you started.\n\n2. **Build Projects**: Hands-on experience is invaluable. Start building your own projects to apply what you\'ve learned. Whether it\'s a simple website, a mobile app, or a data analysis project, practical experience will help solidify your skills.\n\n3. **Join a Community**: Engage with other learners and professionals in the field. Online forums, local meetups, and coding bootcamps provide opportunities to connect with others who can offer support and guidance.\n\n4. **Networking**: As you build your skills, start networking with professionals in the industry. Attend tech events, join online communities, and reach out to people on platforms like LinkedIn. Networking can lead to job opportunities and mentorship.\n\n5. **Prepare for Interviews**: Familiarize yourself with common software engineering interview questions and coding challenges. Practice solving problems on platforms like LeetCode or HackerRank. Mock interviews can also help you gain confidence.\n\n6. **Keep Learning**: Technology is always evolving. Stay current with industry trends and continually seek out new learning opportunities. Consider pursuing certifications or advanced degrees to enhance your qualifications.\n\nBy following these steps, you can successfully switch to a rewarding career in software engineering, where you can solve real-world problems and create impactful solutions.', 'maria', '2024-11-05', 'images/softeng.jpeg', '2024-11-05 04:08:38', '2024-11-05 04:08:38'),
(7, 'The Future of Software Development: Trends to Watch', 'Software engineering', 'he software development landscape is constantly evolving, driven by technological advancements and changing user needs. Here are some key trends shaping the future of software development:\n\n1. **Artificial Intelligence and Machine Learning**: AI and ML are increasingly being integrated into software applications, enhancing functionality and user experience. Expect to see more intelligent features and automation in software solutions.\n\n2. **Low-Code and No-Code Platforms**: These platforms enable non-developers to create applications without extensive coding knowledge, democratizing software development and allowing for faster prototyping and deployment.\n\n3. **Cloud-Native Development**: As businesses continue to migrate to the cloud, cloud-native development practices are gaining traction. This approach allows for scalable and resilient applications that can leverage cloud services effectively.\n\n4. **DevOps Culture**: The integration of development and operations teams is becoming standard practice, promoting collaboration, continuous integration, and faster delivery of software updates.\n\n5. **Focus on Security**: With the rise of cyber threats, incorporating security into the software development lifecycle (DevSecOps) is essential. Developers must prioritize security measures from the onset of the development process.\n\n6. **Remote Development**: The shift to remote work has changed how teams collaborate and develop software. Tools that facilitate remote work and communication will continue to be vital.\n\nBy staying informed about these trends, developers and organizations can adapt their practices to remain competitive and innovative in the software industry.', 'maria', '2024-11-05', 'images/softeng.jpeg', '2024-11-05 04:08:38', '2024-11-05 04:08:38');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
