import { Button, Modal, Space, Table, Tag, Tooltip, Input, message } from 'antd';
import { ColumnsType } from 'antd/es/table';
import dayjs from 'dayjs';
import { PencilIcon, TrashIcon } from 'lucide-react';
import { useInfo } from '~/hooks/useInfo';
import { IEditUnitData, ISubUnit } from '~/types';
import { useUnits } from '../hooks/use-subunits';
import { useState } from 'react';
import { useCreateUnit } from '../hooks/use-create-unit';
import { useDeleteUnit } from '../hooks/use-delete-unit';
import { useEditUnit } from '../hooks/use-edit-unit';
import { Link } from 'react-router-dom';
import { UnitApi } from '~/api/unit-api';

const ManageUnit = () => {
  const { data: units, isLoading } = useUnits();

  const { role } = useInfo();
  const [isCreateModalVisible, setIsCreateModalVisible] = useState(false);
  const [isEditModalVisible, setIsEditModalVisible] = useState(false);
  const [unitName, setUnitName] = useState('');
  const [selectedUnit, setSelectedUnit] = useState<IEditUnitData>({
    id: 0,
    name: ''
  });

  const { mutate: createUnit } = useCreateUnit();
  const { mutate: deleteUnit } = useDeleteUnit();
  const { mutate: editUnit } = useEditUnit();

  const showCreateModal = () => {
    setIsCreateModalVisible(true);
  };

  const handleCreateOk = () => {
    if (unitName) {
      createUnit({ name: unitName });
      setIsCreateModalVisible(false);
      setSelectedUnit({
        id: 0,
        name: ''
      });
      window.location.reload();
    }
  };

  const handleCreateCancel = () => {
    setIsCreateModalVisible(false);
  };

  const handleEditOk = () => {
    if (selectedUnit.name) {
      editUnit(selectedUnit);
      setIsEditModalVisible(false);
      setSelectedUnit({
        id: 0,
        name: ''
      });
      window.location.reload();
    }
  };

  const handleEditCancel = () => {
    setIsEditModalVisible(false);
  };

  const showEditModal = (id: number, name: string) => {
    setIsEditModalVisible(true);
    // console.log(name);
    // const input = document.getElementById('edit-unit-name-input-id');
    // if (input) {
    //   input.setAttribute('value', name);
    // }
    setSelectedUnit({ id, name });
  };

  const showDeleteConfirm = (id: number) => {
    Modal.confirm({
      title: 'Bạn có chắc chắn xóa đơn vị này?',
      okText: 'Xác nhận',
      okType: 'danger',
      cancelText: 'Hủy',
      onOk() {
        deleteUnit(id);
        window.location.reload();
      }
    });
  };

  const handleFileChange = async (event: React.ChangeEvent<HTMLInputElement>) => {
    const file = event.target.files?.[0];
    if (file) {
      try {
        const res = await UnitApi.importUnits(file);
        if (res?.statusCode === 200) {
          message.success('Tải file thành công!');
          window.location.reload();
        }
      } catch (error) {
        message.error('Tải file thất bại!');
        event.target.files = null;
      }
    }
  };

  const columns: ColumnsType<Partial<ISubUnit>> = [
    {
      title: 'No.',
      dataIndex: 'index',
      key: 'index',
      align: 'center',
      width: 70,
      render: (_, __, index) => <span>{index + 1}</span>
    },
    {
      title: 'Tên đơn vị',
      dataIndex: 'name',
      key: 'name',
      width: 200,
      ellipsis: { showTitle: true }
    },
    {
      title: 'Ngày tạo',
      dataIndex: 'createdAt',
      key: 'createdAt',
      width: 100,
      ellipsis: { showTitle: true },
      render: (_, item) => (
        <Tag color='cyan' className='!text-gray-500 font-medium py-0.5 px-2 rounded-full'>
          {item.createdAt ? dayjs(item.createdAt).format('DD/MM/YYYY') : '-'}
        </Tag>
      )
    },
    {
      title: 'Thao tác',
      key: 'action',
      dataIndex: 'action',
      width: 100,
      align: 'center',
      render: (_, item) => (
        <Space size='small'>
          <Tooltip title='Chỉnh sửa'>
            <Button
              type='text'
              htmlType='button'
              className='inline-flex items-center justify-center'
              icon={<PencilIcon className='h-4 w-4' />}
              onClick={() => showEditModal(Number(item.id), String(item.name))}
            />
          </Tooltip>
          <Tooltip title='Xóa'>
            <Button
              danger
              type='text'
              htmlType='button'
              className='inline-flex items-center justify-center'
              icon={<TrashIcon className='h-4 w-4' />}
              onClick={() => showDeleteConfirm(Number(item.id))}
            />
          </Tooltip>
        </Space>
      )
    }
  ];

  return (
    <div className='mx-auto p-4 min-h-screen'>
      {role === 'admin' && (
        <div className='mb-4'>
          <div className='text-[#757575] uppercase text-[27px] leading-[34px] font-normal mb-4'>Đơn vị</div>
          <div className='flex items-center gap-10'>
            <div onClick={showCreateModal} className='cursor-pointer'>
              <div className='flex items-center justify-center rounded-xl p-3 w-[80px] h-[80px] bg-orange-500/90'>
                <img
                  src='https://myaloha.vn/image/dashboard/create_new_ic.png'
                  alt='createBtn'
                  className='h-[50px] hover:scale-[1.1] transition-all duration-300'
                />
              </div>
              <div className='mt-2'>Tạo mới</div>
            </div>
          </div>
          <div className='grid grid-cols-12 items-center w-full mx-auto border border-gray-300 border-dashed rounded-xl bg-gray-100 mb-5'>
            <label className='col-span-9 p-6 cursor-pointer'>
              <div className='flex justify-center items-center gap-2'>
                <img src={`${import.meta.env.VITE_DOMAIN_URL}/icon_xlsx.png`} alt='' className='w-16' />
                <div className='text-center'>Chọn file xlsx để nhập đơn vị nhanh tại đây</div>
                <input type='file' className='hidden' accept='.xlsx' onChange={handleFileChange} />
              </div>
            </label>
            <Link
              to='/public/example_units.xlsx'
              className='col-span-3 p-6 border-l-gray-400 border-dashed'
              download={true}
              target='_blank'
            >
              <div className='flex justify-center items-center gap-2'>
                <img src='/image/dashboard/ic_download.svg' alt='' />
                <div className='text-center'>Tải file mẫu</div>
              </div>
            </Link>
          </div>
          <Modal
            title='Tạo đơn vị'
            open={isCreateModalVisible}
            onOk={handleCreateOk}
            onCancel={handleCreateCancel}
            okText='Xác nhận'
            cancelText='Hủy'
          >
            <Input
              size='large'
              onChange={(e) => setUnitName(e.target.value)}
              placeholder='Nhập tên đơn vị'
              onPressEnter={handleCreateOk}
            />
          </Modal>
          <Modal
            title='Cập nhật đơn vị'
            open={isEditModalVisible}
            onOk={handleEditOk}
            onCancel={handleEditCancel}
            okText='Xác nhận'
            cancelText='Hủy'
          >
            <Input
              size='large'
              value={selectedUnit.name}
              onChange={(e) => setSelectedUnit({ id: selectedUnit.id, name: e.target.value })}
              placeholder='Nhập tên đơn vị'
              onPressEnter={handleEditOk}
            />
          </Modal>
        </div>
      )}
      <div className='mb-4'>
        <div className='text-[#757575] uppercase text-[27px] leading-[34px] font-normal mb-4'>Danh sách đơn vị</div>
        <Table
          loading={isLoading}
          className='font-light'
          rowKey='code'
          dataSource={units?.data}
          columns={columns}
          scroll={{ x: 570 }}
          pagination={{
            defaultPageSize: 10,
            showTotal: (total) => `Tổng ${total} kết quả`,
            position: ['bottomCenter'],
            total: units?.data?.length
          }}
        />
      </div>
    </div>
  );
};

export default ManageUnit;
