import { DownOutlined } from '@ant-design/icons';
import type { MenuProps } from 'antd';
import { Avatar, Button, Dropdown, Space } from 'antd';
import { Link } from 'react-router-dom';
import { AuthApi } from '~/api/auth-api';
import { useInfo } from '~/hooks/useInfo';
import { useLogin } from '~/hooks/useLogin';

const AntDropdown = () => {
  const user = useInfo();
  const isLoggedIn = useLogin();
  console.log(isLoggedIn);

  const handleLogout = async () => {
    const res = await AuthApi.logoutAccount(user?.refreshToken as string);
    console.log(res);
  };

  const items: MenuProps['items'] = [
    {
      label: <Link to='https://www.antgroup.com'>Tài khoản</Link>,
      key: '0'
    },
    {
      label: <Link to='https://www.antgroup.com'>Lịch sử làm bài</Link>,
      key: '1'
    },
    {
      type: 'divider'
    },
    {
      label: <p onClick={handleLogout}>Đăng xuất</p>,
      key: '3'
    }
  ];

  return isLoggedIn ? (
    <Dropdown menu={{ items }} trigger={['click']}>
      <a onClick={(e) => e.preventDefault()}>
        <Space>
          <Avatar style={{ backgroundColor: '#fde3cf', color: '#f56a00', fontWeight: 'bold' }}>N</Avatar>
          <p className='text-primary-900'>{user?.username}</p>
          <DownOutlined />
        </Space>
      </a>
    </Dropdown>
  ) : (
    <Button type='primary' size='large'>
      <Link to='/auth/sign-in'>Đăng nhập</Link>
    </Button>
  );
};

export default AntDropdown;
