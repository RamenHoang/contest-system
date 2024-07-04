import { Button, Space, Table, Tag, Tooltip } from 'antd';
import { ColumnsType } from 'antd/es/table';
import { format } from 'date-fns';
import { Eye, PencilIcon, TrashIcon } from 'lucide-react';
import { useNavigate } from 'react-router-dom';
import { IContest } from '~/types';
import { contests } from '~/utils/data';

const statusToTagName: Record<string, string> = {
  'Đang diễn ra': 'success',
  'Kết thúc': 'error'
};

export const TableContest = () => {
  const navigate = useNavigate();

  const columns: ColumnsType<Partial<IContest>> = [
    {
      title: 'STT',
      dataIndex: 'stt',
      key: 'stt',
      align: 'center',
      width: 70,
      render: (_, __, index) => <span>{index + 1}</span>
    },
    {
      title: 'Tên cuộc thi',
      dataIndex: 'title',
      key: 'title',
      width: 250,
      ellipsis: { showTitle: true }
    },
    {
      title: 'Thời gian diễn ra',
      dataIndex: 'startDate',
      key: 'startDate',
      width: 200,
      ellipsis: { showTitle: true },
      render: (value, record) => (
        <Tag color='warning' className='!text-gray-500 font-medium py-0.5 px-2 rounded-full'>
          {format(new Date(value), 'dd/MM/yyyy') ?? '-'} &mdash;{' '}
          {record?.endDate ? format(new Date(record.endDate), 'dd/MM/yyyy') : '-'}
        </Tag>
      )
    },
    {
      title: 'Trạng thái',
      key: 'status',
      dataIndex: 'status',
      width: 130,
      render: (value) => {
        const tagName = statusToTagName[value || 'Đang diễn ra'];
        return (
          <Tag className='text-[13px] font-normal rounded-full' color={tagName}>
            {value}
          </Tag>
        );
      }
    },
    {
      title: 'Số lượt làm bài',
      key: 'count',
      dataIndex: 'count',
      width: 120
    },
    {
      title: 'Thao tác',
      key: 'action',
      dataIndex: 'action',
      width: 100,
      align: 'center',
      render: (_, value) => (
        <Space size='small'>
          <Tooltip title='Xem trước'>
            <Button
              type='text'
              htmlType='button'
              className='inline-flex items-center justify-center'
              icon={<Eye className='h-4 w-4' />}
            />
          </Tooltip>
          <Tooltip title='Chỉnh sửa'>
            <Button
              type='text'
              htmlType='button'
              className='inline-flex items-center justify-center'
              icon={<PencilIcon className='h-4 w-4' />}
              onClick={() => {
                console.log(value.id);
                navigate(`/${value.id}/edit`);
              }}
            />
          </Tooltip>
          <Tooltip title='Xóa'>
            <Button
              danger
              type='text'
              htmlType='button'
              className='inline-flex items-center justify-center'
              icon={<TrashIcon className='h-4 w-4' />}
            />
          </Tooltip>
        </Space>
      )
    }
  ];

  // @ts-expect-error aaa
  return <Table className='font-light' rowKey='code' dataSource={contests} columns={columns} scroll={{ x: 870 }} />;
};
