import { Menu, MenuProps } from 'antd';
import { BarChart, BookIcon, Calendar, DoorOpen, Paperclip, Puzzle } from 'lucide-react';
import { Link } from 'react-router-dom';

type MenuItem = Required<MenuProps>['items'][number];

function getItem(
  label: React.ReactNode,
  key: React.Key,
  icon?: React.ReactNode,
  children?: MenuItem[],
  url?: string
): MenuItem {
  return {
    key,
    icon,
    children,
    label: url ? <Link to={url}>{label}</Link> : label
  } as MenuItem;
}

const items: MenuItem[] = [
  getItem('Cổng trực tuyến', 'sub1', <DoorOpen />, [
    getItem('Cuộc thi', '1', <Puzzle />, undefined, '/dashboard/contest'),
    getItem('Sự kiện', '2', <Calendar />)
  ]),
  getItem('Kho nội dung', 'sub2', <BookIcon />, [
    getItem('Đề thi', '3', <Paperclip />, undefined, '/dashboard/quiz'),
    getItem('DS Thống kê', '4', <BarChart />)
  ])
];

export const AntMenu = () => {
  return <Menu defaultSelectedKeys={['1']} mode='inline' items={items} />;
};
