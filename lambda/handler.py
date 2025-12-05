import json

def lambda_handler(event, context):
    print("=== GuardDuty auto remediation demo Lambda triggered ===")
    print("Raw event:")
    print(json.dumps(event, indent=2))

    detail = event.get("detail", {})
    finding_type = detail.get("type")
    severity = detail.get("severity")
    title = detail.get("title")

    print(f"Finding type: {finding_type}")
    print(f"Severity: {severity}")
    print(f"Title: {title}")

    return {
        "statusCode": 200,
        "body": "Processed GuardDuty finding"
    }
