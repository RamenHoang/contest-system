import { Suspense, useState } from 'react';
import { Layout } from 'antd';
import { Outlet } from 'react-router-dom';
import { FullPageFallback } from '~/components/fallbacks';
import AntHeader from '~/components/ui/header';
import { AntMenu } from '~/components/ui/menu';

const { Sider, Content } = Layout;

export const MainLayout = () => {
  const [collapsed, setCollapsed] = useState(false);

  return (
    <Layout>
      <AntHeader />
      <Layout
        className='min-h-(calc(100vh - 70px)) min-h-screen text-[#757575] pt-[70px]'
        style={{ position: 'relative' }}
      >
        <Sider
          style={{
            backgroundColor: 'white',
            overflow: 'auto',
            height: 'calc(100vh - 70px)',
            position: 'fixed',
            left: 0
          }}
          collapsible
          collapsed={collapsed}
          onCollapse={(value) => setCollapsed(value)}
          width='240px'
        >
          <AntMenu />
        </Sider>
        <Content
          style={{
            marginLeft: collapsed ? '80px' : '240px',
            minHeight: 'calc(100vh - 70px)',
            background: '#ffffff'
          }}
        >
          <Suspense fallback={<FullPageFallback />}>
            <Outlet />
          </Suspense>
        </Content>
      </Layout>
    </Layout>
  );
};
