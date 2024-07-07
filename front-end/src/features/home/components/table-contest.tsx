import { Button, Space, Table, Tag, Tooltip } from 'antd';
import { ColumnsType } from 'antd/es/table';
import { format } from 'date-fns';
import { Eye, PencilIcon, TrashIcon } from 'lucide-react';
import { useNavigate } from 'react-router-dom';
import { useCompetitions } from '~/features/home/hooks/use-competitions';
import { IListCompetition } from '~/types';

const statusToTagName: Record<string, string> = {
  'Đang diễn ra': 'success',
  'Kết thúc': 'error'
};

export const TableContest = () => {
  const navigate = useNavigate();

  const { data: competitions, isPending: isLoading } = useCompetitions();

  const columns: ColumnsType<Partial<IListCompetition>> = [
    {
      title: 'No.',
      dataIndex: 'stt',
      key: 'stt',
      align: 'center',
      width: 70,
      render: (_, __, index) => <span>{index + 1}</span>
    },
    {
      title: 'Tên cuộc thi',
      dataIndex: 'name',
      key: 'name',
      width: 250,
      ellipsis: { showTitle: true }
    },
    {
      title: 'Thời gian diễn ra',
      dataIndex: 'timeStart',
      key: 'timeStart',
      width: 200,
      ellipsis: { showTitle: true },
      render: (value, record) => (
        <Tag color='warning' className='!text-gray-500 font-medium py-0.5 px-2 rounded-full'>
          {format(new Date(value), 'dd/MM/yyyy') ?? '-'} &mdash;{' '}
          {record?.timeEnd ? format(new Date(record.timeEnd), 'dd/MM/yyyy') : '-'}
        </Tag>
      )
    },
    {
      title: 'Trạng thái',
      key: 'timeEnd',
      dataIndex: 'timeEnd',
      width: 130,
      render: (_, record) => {
        const now = new Date();
        const timeStart = new Date(record?.timeStart as string);
        const timeEnd = new Date(record?.timeEnd as string);

        let statusText;
        if (now >= timeStart && now <= timeEnd) {
          statusText = 'Đang diễn ra'; // Ongoing
        } else if (now > timeEnd) {
          statusText = 'Kết thúc'; // Ended
        } else {
          statusText = 'Chưa bắt đầu'; // Not started
        }

        const tagName = statusToTagName[statusText];
        return (
          <Tag className='text-[13px] font-normal rounded-full' color={tagName}>
            {statusText}
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
                navigate(`/${value?.id}/edit`);
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

  return (
    <Table
      loading={isLoading}
      className='font-light'
      // onRow={(contest) => ({
      //   className: 'cursor-pointer',
      //   onClick: () => {
      //     console.log(`/dashboard/contest/edit/${contest?.id}`);
      //     navigate(`/dashboard/contest/edit/${contest?.id}`);
      //   }
      // })}
      rowKey='code'
      dataSource={competitions?.data}
      columns={columns}
      scroll={{ x: 870 }}
    />
  );
};
