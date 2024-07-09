import { Button, Space, Table, Tag, Tooltip } from 'antd';
import { ColumnsType } from 'antd/es/table';
import { format } from 'date-fns';
import { PencilIcon, TrashIcon } from 'lucide-react';
import { useNavigate } from 'react-router-dom';
import { useUserCompetitions } from '~/features/competition/hooks/use-user-competitions';
import { ICompetition, IListCompetition } from '~/types';

const statusToTagName: Record<string, string> = {
  'Đang diễn ra': '#faad14',
  'Kết thúc': '#52c41a',
  'Chưa bắt đầu': '#cac9c9'
};

export const TableContest = () => {
  const navigate = useNavigate();

  const { data: userCompetitions, isPending: isLoading } = useUserCompetitions();

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
        <Tag color='#4096ff' className='text-white font-medium py-0.5 px-2 rounded-full'>
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
          <Tag color={tagName} className='!text-white font-medium py-0.5 px-2 rounded-full'>
            {statusText}
          </Tag>
        );
      }
    },
    {
      title: 'Số lượt làm bài',
      key: 'numberOfExams',
      dataIndex: 'numberOfExams',
      width: 120,
      align: 'center'
    },
    {
      title: 'Thao tác',
      key: 'action',
      dataIndex: 'action',
      width: 100,
      align: 'center',
      render: () => (
        <Space size='small'>
          <Tooltip title='Chỉnh sửa'>
            <Button
              type='text'
              htmlType='button'
              className='inline-flex items-center justify-center'
              icon={<PencilIcon className='h-4 w-4' />}
              // @ts-expect-error aaa
              onClick={(_: unknown, contest: ICompetition) => {
                navigate(`/dashboard/contest/${contest?.id}/edit?step=1`);
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
      onRow={(contest) => ({
        className: 'cursor-pointer',
        onClick: () => {
          navigate(`/dashboard/contest/${contest?.id}/edit?step=1`);
        }
      })}
      rowKey='code'
      dataSource={userCompetitions?.data}
      columns={columns}
      scroll={{ x: 870 }}
      pagination={{
        defaultPageSize: 10,
        showSizeChanger: false,
        pageSizeOptions: ['10', '20', '30'],
        showTotal: (total) => `Tổng ${total} kết quả`,
        position: ['bottomCenter']
      }}
    />
  );
};
