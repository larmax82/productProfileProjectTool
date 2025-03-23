# 4. Key Features & Functionality: SideSlide Chrome Extension

## Core Concept
SideSlide is a Chrome extension that adds a customizable sliding panel to any webpage, providing a consistent workspace that follows users across all web-based tools. The panel slides in from the right side of the screen when triggered by the extension icon or keyboard shortcut, eliminating the need for constant tab switching.

## Primary Features

### 1. Project Management Hub

#### 1.1. New Project
- Automatically detects when users are viewing a Jira project page
- One-click "Subscribe" button to add projects to personal workspace
- Role-based information fetching via Jira API (using Jira REST API to retrieve project metadata, issue data, and user permissions)
- Notification of new project assignments with quick-subscribe option (leveraging Jira webhooks and API)

#### 1.2. Overview
- At-a-glance dashboard of all subscribed projects
- Real-time status updates and changes from Jira without switching tabs (using Jira REST API to periodically fetch project updates)
- Customizable view with key metrics relevant to user role (configured using Jira JQL queries to retrieve role-specific data)
- Clickable project links that open the associated Jira project in the active tab
- Visual indicators for projects requiring attention (deadlines, blockers, updates) based on data from Jira API filters

#### 1.3. AI-Powered Plan Builder
- **Template-Based Planning**:
  - Natural language interface for quick plan creation (e.g., "Create project plan with go-live date in May")
  - Save and manage reusable plan templates
  - AI suggestions based on similar past projects
  
- **Plan Implementation**:
  - One-click deployment of plans to Jira after approval
  - Automatic task creation and assignment via Jira API (using Jira issue creation endpoints to generate epics, stories, and tasks with proper relationships)
  - Notification system for plan approvals and changes (integrating with Jira workflow transitions API)

#### 1.4. Document Manager
- **Context-Aware Document Linking**:
  - Detects when users are in Google Drive, Docs, or Sheets
  - Suggests linking open documents to relevant projects (storing document references in SideSlide's storage and associating them with Jira project keys from the Jira API)
  - Organizes documents by project and document type (System Specs, Effort Estimations, etc.) using Jira project metadata
  
- **Quick Access Library**:
  - Searchable repository of all linked documents across projects
  - Recently accessed documents section
  - Direct document opening without navigating through Drive
  - Document status tracking (Draft, In Review, Approved)

### 2. TPE Builder

TP Essentials projects are standard solutions with some variations in configuration, mainly implemented for new customers as a quick win to bring them onto the platform. Currently, the process of customer creation and configuration is very manual and consists of repetitive tasks. This is a perfect candidate for automation. With the existing TA API capable of handling the majority of tasks during TPE configuration, SideSlide can serve as the user interface to trigger automation and define necessary products, features, and configurations.

- **Customer Onboarding Automation**:
  - Streamlined interface for initiating TP Essentials deployments for new customers
  - Guided workflow to select and configure standard solutions with customer-specific variations
  - Direct integration with TA API to automate repetitive configuration tasks
  
- **Configuration Management**:
  - Product and feature selection interface with pre-built templates
  - Configuration validation checks to ensure compatibility
  - Progress tracking for multi-step automation processes
  - Error handling and rollback capabilities for failed configurations

### 3. Memory Bank

Memory Bank is a centralized knowledge repository system built on Google Cloud Platform that enables teams to store, organize, and intelligently access their collective expertise through documentation. The system uses AI to enhance searchability and discovery of information across various document formats. Memory Bank solves the challenge of sharing expertise knowledge across teams by creating a central repository for system specifications, settings, and codebase documentation.

- **Intelligent Document Repository**:
  - Document storage in Cloud Storage organized by customer and project
  - AI-powered metadata generation for enhanced searchability (using Vertex AI)
  - Direct integration with SideSlide for seamless access within the work context
  - Automatic classification and tagging of uploaded documents

- **Natural Language Knowledge Interface**:
  - Context-aware query system that understands technical terminology
  - Source document references with direct download capabilities
  - Result filtering based on project context and user role
  - Historical query tracking to improve future responses

- **Knowledge Sharing Infrastructure**:
  - Collaborative annotation and commenting on repository documents
  - Direct linking between related documentation across projects
  - Usage analytics to identify most valuable knowledge assets
  - Integration with existing documentation workflows