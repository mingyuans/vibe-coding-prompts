# Claude Code Project Architecture Analysis Prompt

Please analyze this existing Golang backend project's code structure and generate a detailed architecture.md document. This document must accurately reflect the current project's architectural state and provide clear guidance for future development.

## Analysis Steps

### Step 1: Project Overview Scan
Conduct a comprehensive assessment of the project's basic structure:

1. **Scan the project root directory structure** to understand the overall project organization
2. **Identify main packages and modules** to locate core business logic distribution
3. **Review go.mod file** to understand dependency relationships and technology stack choices
4. **Examine configuration files** (such as config.yaml, .env files) to understand runtime environment requirements

### Step 2: Domain Model Identification
Extract business domain insights from the existing codebase:

1. **Locate core business entities**:
    - Find core business objects in struct definitions
    - Analyze object properties and methods to understand business rules
    - Identify relationships between entities

2. **Identify business boundaries**:
    - Understand domain boundaries (Bounded Context) through package organization
    - Analyze dependency relationships between different modules
    - Locate aggregate roots and value objects

3. **Discover business processes**:
    - Trace major business use case implementations
    - Understand data flow and state change logic
    - Identify event and message passing mechanisms

### Step 3: Technical Architecture Analysis
Analyze the system's technical implementation approach:

1. **Layered architecture analysis**:
    - Identify presentation layer (HTTP handlers, gRPC services, etc.)
    - Locate application layer (business logic coordination, use case implementation)
    - Determine domain layer (core business logic, entity definitions)
    - Analyze infrastructure layer (database, external service integration)

2. **Data storage architecture**:
    - Analyze database-related code to understand data model design
    - Review Repository pattern implementations
    - Identify caching strategies and search engine usage

3. **Integration approach investigation**:
    - Analyze API interface design (REST, GraphQL, gRPC)
    - Review message queue and event processing mechanisms
    - Understand external service integration methods

### Step 4: Quality Attributes Assessment
Evaluate the system's non-functional characteristics:

1. **Maintainability**: Assess code organization clarity and module responsibility separation
2. **Scalability**: Determine if architecture supports horizontal and vertical scaling
3. **Testability**: Review test coverage and dependency injection completeness
4. **Performance optimization**: Identify caching, connection pooling, and other performance measures

## Output Requirements

Based on the above analysis, generate an architecture.md document with the following sections:

### 1. Project Overview
- Project business objectives and technology choices
- Current development team size and technology stack
- System's main quality attributes status

### 2. Existing Domain Model
- **Core domain identification**: List identified core business domains in the project
- **Entity relationship diagram**: Describe main entities and their relationships
- **Business processes**: Implementation approaches for key business use cases

### 3. Current Technical Architecture
- **Actual layered structure**: Real architectural layers derived from code analysis
- **Directory structure explanation**: Current package organization and responsibility division
- **Technical component inventory**: Frameworks, libraries, and middleware in use

### 4. Data Architecture Status
- **Data storage solutions**: Currently used databases and storage technologies
- **Data access patterns**: Usage of Repository, ORM, and similar patterns
- **Data consistency strategies**: Transaction management and data synchronization mechanisms

### 5. Integration Architecture Status
- **API design**: Current external interface specifications
- **Inter-service communication**: Internal service communication methods
- **Third-party integrations**: External system integration solutions

### 6. Code Organization Guidelines
Based on existing architecture, clarify code placement rules for future development:

**Code location for adding new features:**
- New business entities should be placed in: `[specific path]`
- New use case logic should be placed in: `[specific path]`
- New API interfaces should be placed in: `[specific path]`
- New data access should be placed in: `[specific path]`

**Refactoring recommendations:**
- Current architecture strengths and parts to maintain
- Identified issues and suggested improvement directions
- Technical debt and refactoring priorities

### 7. Development Standards
Based on existing code style, summarize:
- Naming conventions and coding standards
- Error handling patterns
- Test writing guidance
- Documentation maintenance requirements

## Special Notes

1. **Maintain objectivity**: Base analysis on actual code, avoid speculation or adding non-existent architecture
2. **Respect current state**: Even if design issues are found, first document the current state accurately
3. **Practical orientation**: Documentation must genuinely guide team's daily development work
4. **Continuous evolution**: Leave space and suggestions for future architectural evolution

This architecture.md document will serve as the team's "project map", helping every developer quickly understand the system overview and know where to add what type of code.