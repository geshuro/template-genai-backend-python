az login
az ad app create --display-name mvpx-genai
az ad sp create --id 4d430b10-268a-475f-9c69-05833ebee3e9
az role assignment create --role contributor --subscription d0de32f6-0f62-4455-9d75-8a21aa89a1e2 --assignee-object-id  f80d93b2-8222-47d9-9d28-3daa86eb6574 --assignee-principal-type ServicePrincipal --scope /subscriptions/d0de32f6-0f62-4455-9d75-8a21aa89a1e2/resourceGroups/rg-mpvx-genai-backend
az ad app federated-credential create --id 8a0df03c-7569-4eea-ba26-e9d20d430c25 --parameters credential.json
("credential.json" contains the following content)
{
    "name": "oidc-github-geshuro-mvpx-genai",
    "issuer": "https://token.actions.githubusercontent.com",
    "subject": "repo:geshuro/template-genai-backend-python:environment:Production",
    "description": "oidc-github-geshuro-mvpx-genai",
    "audiences": [
        "api://AzureADTokenExchange"
    ]
}