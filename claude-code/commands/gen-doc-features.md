# Claude Code Requirements Analysis Prompt

Please analyze this Golang backend project to extract and document all existing business requirements based on the implemented functionality. Generate a comprehensive features.md document that captures what the system currently does in a structured requirements format.

## Analysis Objectives

### Primary Goal
Extract business requirements from existing code implementation and document them in a formal requirements specification format that includes:
- User stories for each feature
- EARS format acceptance criteria
- Technical constraints and edge cases
- System behavior specifications

### Secondary Goal
Provide a requirements baseline for:
- Understanding current system capabilities
- Planning future enhancements
- Regression testing verification
- Stakeholder communication

## Analysis Steps

### Step 1: Feature Discovery
Identify all implemented features by analyzing:

1. **HTTP API endpoints**:
    - Extract all route handlers and their business purposes
    - Understand what business capabilities each endpoint provides
    - Identify user roles and permissions for each endpoint
    - Document input validation and business rules

2. **Business logic implementation**:
    - Trace service layer implementations to understand business operations
    - Identify workflow patterns and business process steps
    - Extract business rules and constraints from code
    - Understand data validation and transformation logic

3. **Data operations**:
    - Analyze database operations to understand data management requirements
    - Identify CRUD operations and their business context
    - Extract data consistency and integrity requirements
    - Understand transaction boundaries and business rules

4. **External integrations**:
    - Identify third-party service integrations and their purposes
    - Extract communication patterns and data exchange requirements
    - Understand error handling and fallback mechanisms
    - Document integration constraints and dependencies

### Step 2: User Role Identification
Determine user roles and their capabilities:

1. **Authentication and authorization analysis**:
    - Identify different user types and roles in the system
    - Extract permission levels and access controls
    - Understand role-based functionality restrictions
    - Document authentication requirements

2. **API usage patterns**:
    - Analyze which endpoints are used by which user types
    - Understand user journey flows through the system
    - Identify user-specific business operations
    - Extract user experience requirements from implementation

### Step 3: System Behavior Analysis
Extract system behavior patterns:

1. **Request processing behavior**:
    - Understand input validation requirements
    - Extract business rule enforcement patterns
    - Identify error handling and response behaviors
    - Document success and failure scenarios

2. **Output and side effects**:
    - Analyze logging requirements and patterns
    - Identify message queue publishing behaviors
    - Extract database update and persistence requirements
    - Document external API call patterns and purposes

3. **Performance and scalability requirements**:
    - Extract timeout and performance constraints from code
    - Identify concurrency and resource management requirements
    - Understand scalability patterns and limitations
    - Document system capacity and throughput expectations

### Step 4: Edge Case and Constraint Analysis
Identify technical constraints and edge cases:

1. **Error handling requirements**:
    - Extract error scenarios and recovery behaviors
    - Identify validation failure responses
    - Understand exception handling patterns
    - Document system resilience requirements

2. **Data integrity requirements**:
    - Analyze transaction management and consistency requirements
    - Extract data validation and constraint enforcement
    - Identify backup and recovery behaviors
    - Document data retention and cleanup requirements

3. **Security requirements**:
    - Extract authentication and authorization requirements
    - Identify data protection and privacy behaviors
    - Understand audit logging and compliance requirements
    - Document security constraint implementations

## Output Requirements

Generate an existing_requirements.md document with the following structure:

### Document Header
```md
# Existing Requirements Document

## Introduction

[Comprehensive summary of the system's business purpose, main capabilities, target users, and technical context. This should provide a clear overview of what the system does and why it exists.]

## Requirements
```

### Requirements Format
For each identified business feature, create a requirement section using this exact format:

```md
### Requirement [N]

**User Story:** As a [specific user role], I want [specific capability], so that [business benefit/value]

#### Acceptance Criteria

1. WHEN [specific input/event occurs] THEN [system] SHALL [specific response/behavior]
2. WHEN [specific input/event occurs] AND [additional condition] THEN [system] SHALL [specific response/behavior]
3. IF [precondition exists] THEN [system] SHALL [specific response/behavior]
4. WHEN [error condition occurs] THEN [system] SHALL [error handling behavior]
```

### EARS Format Guidelines for Backend Systems
Since this is a backend project, structure acceptance criteria to cover:

**Input Processing:**
- WHEN [HTTP request with specific payload] is received THEN system SHALL [validate/process/respond]
- WHEN [invalid input] is provided THEN system SHALL [return specific error response]

**Business Logic Execution:**
- WHEN [business condition] is met THEN system SHALL [execute specific business operation]
- IF [business rule] applies THEN system SHALL [enforce specific constraint]

**Data Operations:**
- WHEN [successful processing] occurs THEN system SHALL [persist specific data to database]
- WHEN [data operation] fails THEN system SHALL [rollback/log/notify as appropriate]

**External Communications:**
- WHEN [specific condition] is met THEN system SHALL [publish message to queue/call external API]
- WHEN [external service] is unavailable THEN system SHALL [implement fallback behavior]

**Logging and Monitoring:**
- WHEN [significant event] occurs THEN system SHALL [log specific information]
- WHEN [error condition] occurs THEN system SHALL [log error details and context]

### Requirements Coverage Areas
Ensure requirements cover all of these aspects:

1. **Functional Requirements**:
    - Core business operations
    - Data management capabilities
    - Integration functionalities
    - User management and authentication

2. **Non-Functional Requirements**:
    - Performance expectations
    - Security constraints
    - Reliability and availability
    - Scalability limitations

3. **Interface Requirements**:
    - API endpoint specifications
    - Input/output data formats
    - Error response specifications
    - External integration protocols

4. **Data Requirements**:
    - Data validation rules
    - Storage and retrieval patterns
    - Data consistency requirements
    - Backup and retention policies

## Analysis Quality Standards

1. **Completeness**: Cover all implemented functionality without gaps
2. **Accuracy**: Base requirements on actual code behavior, not assumptions
3. **Testability**: Write acceptance criteria that can be verified through testing
4. **Clarity**: Use precise, unambiguous language suitable for technical stakeholders
5. **Traceability**: Ensure each requirement can be traced back to specific code implementations

The resulting existing_requirements.md document will serve as the definitive specification of what the system currently does, providing a solid foundation for future development planning and regression testing.