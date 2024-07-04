import { DownOutlined } from '@ant-design/icons';
import type { MenuProps } from 'antd';
import { Avatar, Button, Dropdown, Space } from 'antd';
import { Link } from 'react-router-dom';
import { useInfo } from '~/hooks/useInfo';
import { useLogin } from '~/hooks/useLogin';

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
    label: <Link to='https://www.antgroup.com'>Đăng xuất</Link>,
    key: '3'
  }
];

const AntDropdown = () => {
  const user = useInfo();
  const isLoggedIn = useLogin();
  console.log(isLoggedIn);

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
