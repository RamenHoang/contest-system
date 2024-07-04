import { Modal } from 'antd';
import { exams } from '~/utils/data';
import ExamItem from '~/features/home/components/list-exam';

const AntModal = ({
  isModalOpen,
  setIsModalOpen
}: {
  isModalOpen: boolean;
  setIsModalOpen: (value: boolean) => void;
}) => {
  const handleOk = () => {
    setIsModalOpen(false);
  };

  const handleCancel = () => {
    setIsModalOpen(false);
  };

  return (
    <>
      <Modal
        width={650}
        title='Danh sách đề thi (Tối đa: 2 đề thi)'
        open={isModalOpen}
        onOk={handleOk}
        okText='Lưu'
        okButtonProps={{
          style: { background: '#dd3b3b', padding: '18px 32px' }
        }}
        cancelText='Hủy'
        cancelButtonProps={{
          style: { padding: '18px 32px' }
        }}
        onCancel={handleCancel}
      >
        <ul>
          {exams.map((exam) => (
            <ExamItem key={exam.id} id={exam.id} title={exam.title} tnCount={exam.tnCount} tlCount={exam.tlCount} />
          ))}
        </ul>
      </Modal>
    </>
  );
};

export default AntModal;
