import { Suspense, type PropsWithChildren } from 'react';
import { ErrorBoundary } from 'react-error-boundary';
import { BrowserRouter as Router } from 'react-router-dom';
import { QueryClient, QueryClientProvider, QueryErrorResetBoundary } from '@tanstack/react-query';
import { ReactQueryDevtools } from '@tanstack/react-query-devtools';

// import { queryClient } from './config/query-client';
import { FullscreenFallback, ErrorBoundaryFallback } from './components/fallbacks';
import { App } from 'antd';
import { GoogleOAuthProvider } from '@react-oauth/google';
import { Provider } from 'react-redux';
import { persistor, store } from '~/store/store';
import { PersistGate } from 'redux-persist/integration/react';
// import { theme } from '~/styles/theme';

const queryClient = new QueryClient();

const AppProviders = ({ children }: PropsWithChildren) => {
  return (
    <Suspense fallback={<FullscreenFallback />}>
      <QueryErrorResetBoundary>
        {({ reset }) => (
          <ErrorBoundary onReset={reset} FallbackComponent={ErrorBoundaryFallback}>
            <GoogleOAuthProvider clientId='60376556833-gq2q948c8djo7jkid5pj8drngbnm60e5.apps.googleusercontent.com'>
              <Provider store={store}>
                <PersistGate loading={null} persistor={persistor}>
                  <QueryClientProvider client={queryClient}>
                    {/* <ConfigProvider theme={theme}> */}
                    <App>
                      <Router>{children}</Router>
                      <ReactQueryDevtools initialIsOpen={false} position='left' />
                    </App>
                    {/* </ConfigProvider> */}
                  </QueryClientProvider>
                </PersistGate>
              </Provider>
            </GoogleOAuthProvider>
          </ErrorBoundary>
        )}
      </QueryErrorResetBoundary>
    </Suspense>
  );
};

export default AppProviders;
