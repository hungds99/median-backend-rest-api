import { SecretsManager } from '@aws-sdk/client-secrets-manager';

export default async () => {
  const secretsManager = new SecretsManager();

  const secretDatabaseUrl = await secretsManager.getSecretValue({
    SecretId: 'SUPABASE_POSTGRES_DB_URL',
  });

  const databaseUrl = JSON.parse(secretDatabaseUrl.SecretString);

  return {
    DATABASE_URL: databaseUrl,
  };
};
