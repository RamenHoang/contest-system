import { Button, Input, Modal } from 'antd';
import { useState } from 'react';
import { TableSubUnit } from '~/features/home/components/table-subunit';
import { useCreateSubUnit } from '~/features/home/hooks/use-create-subunit';

const StepThree = () => {
  const [isModalOpen, setIsModalOpen] = useState(false);
  const [subUnitName, setSubUnitName] = useState('');

  const { mutate: createSubUnit } = useCreateSubUnit();

  const showModal = () => {
    setIsModalOpen(true);
  };

  const handleOk = () => {
    if (subUnitName) {
      createSubUnit({ unitGroupName: 'Đơn vị mới', subUnits: [subUnitName] });
      setIsModalOpen(false);
      setSubUnitName('');
    }
  };

  const handleCancel = () => {
    setIsModalOpen(false);
  };

  return (
    <>
      <div className='relative shadow-md sm:rounded-lg px-2 pb-4 mt-4'>
        <div className='flex items-center justify-end py-2'>
          <Button type='primary' onClick={showModal}>
            Thêm đơn vị
          </Button>
        </div>
        <TableSubUnit />
      </div>
      <Modal title='Thêm nhóm đơn vị con' open={isModalOpen} onOk={handleOk} onCancel={handleCancel}>
        <Input
          size='large'
          value={subUnitName}
          onChange={(e) => setSubUnitName(e.target.value)}
          placeholder='Nhập tên đơn vị'
          onPressEnter={handleOk}
        />
      </Modal>
    </>
  );
};

export default StepThree;
