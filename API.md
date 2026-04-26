# API Reference

This document provides a comprehensive reference for the Claude Skills Collection API.

## Overview

The Claude Skills Collection provides a set of APIs for interacting with skills, managing configurations, and integrating with external services.

## Skill API

### Invoke Skill

Invokes a specific skill with the given parameters.

**Endpoint:** `/api/v1/skills/{skill_name}/invoke`

**Method:** `POST`

**Request Body:**

```json
{
  "parameters": {
    "input": "string",
    "context": "object"
  }
}
```

**Response:**

```json
{
  "data": {
    "result": "object",
    "metadata": {
      "skill": "string",
      "execution_time": "number",
      "tokens_used": "number"
    }
  },
  "error": null
}
```

### List Skills

Lists all available skills.

**Endpoint:** `/api/v1/skills`

**Method:** `GET`

**Query Parameters:**

- `category` (optional): Filter by category
- `type` (optional): Filter by type
- `limit` (optional): Maximum number of results
- `offset` (optional): Offset for pagination

**Response:**

```json
{
  "data": {
    "skills": [
      {
        "name": "string",
        "description": "string",
        "category": "string",
        "type": "string"
      }
    ],
    "total": "number",
    "limit": "number",
    "offset": "number"
  },
  "error": null
}
```

### Get Skill Details

Gets details for a specific skill.

**Endpoint:** `/api/v1/skills/{skill_name}`

**Method:** `GET`

**Response:**

```json
{
  "data": {
    "name": "string",
    "description": "string",
    "category": "string",
    "type": "string",
    "parameters": {
      "input": {
        "type": "string",
        "description": "string",
        "required": "boolean"
      }
    },
    "examples": [
      {
        "input": "string",
        "output": "string"
      }
    ]
  },
  "error": null
}
```

## Multi-Agent Orchestration API

### Create Orchestration

Creates a new multi-agent orchestration.

**Endpoint:** `/api/v1/orchestration`

**Method:** `POST`

**Request Body:**

```json
{
  "task": "string",
  "agents": [
    {
      "type": "string",
      "config": "object"
    }
  ],
  "workflow": "string"
}
```

**Response:**

```json
{
  "data": {
    "orchestration_id": "string",
    "status": "string",
    "agents": [
      {
        "type": "string",
        "status": "string"
      }
    ]
  },
  "error": null
}
```

### Get Orchestration Status

Gets the status of an orchestration.

**Endpoint:** `/api/v1/orchestration/{orchestration_id}`

**Method:** `GET`

**Response:**

```json
{
  "data": {
    "orchestration_id": "string",
    "status": "string",
    "progress": "number",
    "agents": [
      {
        "type": "string",
        "status": "string",
        "result": "object"
      }
    ]
  },
  "error": null
}
```

### Cancel Orchestration

Cancels an orchestration.

**Endpoint:** `/api/v1/orchestration/{orchestration_id}/cancel`

**Method:** `POST`

**Response:**

```json
{
  "data": {
    "orchestration_id": "string",
    "status": "cancelled"
  },
  "error": null
}
```

## Configuration API

### Get Configuration

Gets the current configuration.

**Endpoint:** `/api/v1/config`

**Method:** `GET`

**Response:**

```json
{
  "data": {
    "model": "string",
    "effort_level": "string",
    "enabled_plugins": [
      "string"
    ],
    "mcp_servers": {
      "server_name": {
        "command": "string",
        "args": [
          "string"
        ]
      }
    }
  },
  "error": null
}
```

### Update Configuration

Updates the configuration.

**Endpoint:** `/api/v1/config`

**Method:** `PUT`

**Request Body:**

```json
{
  "model": "string",
  "effort_level": "string",
  "enabled_plugins": [
    "string"
  ],
  "mcp_servers": {
    "server_name": {
      "command": "string",
      "args": [
        "string"
      ]
    }
  }
}
```

**Response:**

```json
{
  "data": {
    "model": "string",
    "effort_level": "string",
    "enabled_plugins": [
      "string"
    ],
    "mcp_servers": {
      "server_name": {
        "command": "string",
        "args": [
          "string"
        ]
      }
    }
  },
  "error": null
}
```

## Memory API

### Store Memory

Stores a memory.

**Endpoint:** `/api/v1/memory`

**Method:** `POST`

**Request Body:**

```json
{
  "key": "string",
  "value": "object",
  "type": "string",
  "metadata": "object"
}
```

**Response:**

```json
{
  "data": {
    "memory_id": "string",
    "key": "string",
    "type": "string",
    "created_at": "string"
  },
  "error": null
}
```

### Retrieve Memory

Retrieves a memory.

**Endpoint:** `/api/v1/memory/{memory_id}`

**Method:** `GET`

**Response:**

```json
{
  "data": {
    "memory_id": "string",
    "key": "string",
    "value": "object",
    "type": "string",
    "metadata": "object",
    "created_at": "string",
    "updated_at": "string"
  },
  "error": null
}
```

### Search Memory

Searches for memories.

**Endpoint:** `/api/v1/memory/search`

**Method:** `GET`

**Query Parameters:**

- `query` (required): Search query
- `type` (optional): Filter by type
- `limit` (optional): Maximum number of results
- `offset` (optional): Offset for pagination

**Response:**

```json
{
  "data": {
    "memories": [
      {
        "memory_id": "string",
        "key": "string",
        "value": "object",
        "type": "string",
        "metadata": "object",
        "created_at": "string",
        "updated_at": "string"
      }
    ],
    "total": "number",
    "limit": "number",
    "offset": "number"
  },
  "error": null
}
```

### Delete Memory

Deletes a memory.

**Endpoint:** `/api/v1/memory/{memory_id}`

**Method:** `DELETE`

**Response:**

```json
{
  "data": {
    "memory_id": "string",
    "deleted": true
  },
  "error": null
}
```

## External Integration API

### GitHub Integration

#### Get Repository

Gets information about a GitHub repository.

**Endpoint:** `/api/v1/integrations/github/repos/{owner}/{repo}`

**Method:** `GET`

**Response:**

```json
{
  "data": {
    "id": "number",
    "name": "string",
    "full_name": "string",
    "owner": {
      "login": "string",
      "id": "number"
    },
    "description": "string",
    "stars": "number",
    "forks": "number",
    "open_issues": "number",
    "language": "string"
  },
  "error": null
}
```

#### Create Issue

Creates a GitHub issue.

**Endpoint:** `/api/v1/integrations/github/repos/{owner}/{repo}/issues`

**Method:** `POST`

**Request Body:**

```json
{
  "title": "string",
  "body": "string",
  "labels": [
    "string"
  ]
}
```

**Response:**

```json
{
  "data": {
    "id": "number",
    "number": "number",
    "title": "string",
    "body": "string",
    "state": "string",
    "labels": [
      {
        "name": "string"
      }
    ]
  },
  "error": null
}
```

### GitLab Integration

#### Get Project

Gets information about a GitLab project.

**Endpoint:** `/api/v1/integrations/gitlab/projects/{project_id}`

**Method:** `GET`

**Response:**

```json
{
  "data": {
    "id": "number",
    "name": "string",
    "description": "string",
    "star_count": "number",
    "forks_count": "number",
    "open_issues_count": "number"
  },
  "error": null
}
```

### Linear Integration

#### Get Issue

Gets information about a Linear issue.

**Endpoint:** `/api/v1/integrations/linear/issues/{issue_id}`

**Method:** `GET`

**Response:**

```json
{
  "data": {
    "id": "string",
    "title": "string",
    "description": "string",
    "status": {
      "name": "string"
    },
    "priority": "number",
    "assignee": {
      "name": "string"
    }
  },
  "error": null
}
```

### Asana Integration

#### Get Task

Gets information about an Asana task.

**Endpoint:** `/api/v1/integrations/asana/tasks/{task_id}`

**Method:** `GET`

**Response:**

```json
{
  "data": {
    "gid": "string",
    "name": "string",
    "completed": "boolean",
    "assignee": {
      "name": "string"
    },
    "due_on": "string"
  },
  "error": null
}
```

## Error Handling

All API responses follow this format:

```json
{
  "data": "object | null",
  "error": {
    "code": "string",
    "message": "string",
    "details": "object"
  } | null
}
```

### Error Codes

| Code | Description |
|------|-------------|
| `INVALID_REQUEST` | The request is invalid |
| `UNAUTHORIZED` | Authentication is required |
| `FORBIDDEN` | Access is forbidden |
| `NOT_FOUND` | Resource not found |
| `CONFLICT` | Resource conflict |
| `RATE_LIMIT_EXCEEDED` | Rate limit exceeded |
| `INTERNAL_ERROR` | Internal server error |

## Rate Limiting

API requests are rate limited:

- **Anonymous**: 100 requests per hour
- **Authenticated**: 1000 requests per hour

Rate limit headers are included in responses:

```
X-RateLimit-Limit: 1000
X-RateLimit-Remaining: 999
X-RateLimit-Reset: 1714176000
```

## Authentication

Some endpoints require authentication. Include your API token in the `Authorization` header:

```
Authorization: Bearer YOUR_API_TOKEN
```

## Webhooks

### Create Webhook

Creates a webhook.

**Endpoint:** `/api/v1/webhooks`

**Method:** `POST`

**Request Body:**

```json
{
  "url": "string",
  "events": [
    "string"
  ],
  "secret": "string"
}
```

**Response:**

```json
{
  "data": {
    "webhook_id": "string",
    "url": "string",
    "events": [
      "string"
    ],
    "created_at": "string"
  },
  "error": null
}
```

### Delete Webhook

Deletes a webhook.

**Endpoint:** `/api/v1/webhooks/{webhook_id}`

**Method:** `DELETE`

**Response:**

```json
{
  "data": {
    "webhook_id": "string",
    "deleted": true
  },
  "error": null
}
```

## SDKs

### JavaScript/TypeScript

```typescript
import { ClaudeSkills } from '@claude-skills/sdk';

const client = new ClaudeSkills({
  apiKey: 'YOUR_API_KEY'
});

// Invoke a skill
const result = await client.skills.invoke('skill-name', {
  input: 'your input'
});

// List skills
const skills = await client.skills.list();

// Get skill details
const skill = await client.skills.get('skill-name');
```

### Python

```python
from claude_skills import ClaudeSkills

client = ClaudeSkills(api_key='YOUR_API_KEY')

# Invoke a skill
result = client.skills.invoke('skill-name', input='your input')

# List skills
skills = client.skills.list()

# Get skill details
skill = client.skills.get('skill-name')
```

---

**For more information, see the [Documentation](docs/).**
