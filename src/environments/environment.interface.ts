export interface Environment {
  apiUrl: string;
  name: 'dev' | 'local' | 'prod';
  production: boolean;
}
