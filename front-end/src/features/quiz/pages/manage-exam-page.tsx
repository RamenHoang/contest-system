import { Link } from 'react-router-dom';
import { TableExam } from '~/features/quiz/components/table-exam';

const ManageExam = () => {
  return (
    <div className='mx-auto p-4 min-h-screen bg-gray-100'>
      <div className='mb-4'>
        <div className='text-[#757575] uppercase text-[27px] leading-[34px] font-normal mb-4'>Kho đề thi </div>
        <div className='flex items-center gap-10'>
          <Link to='/dashboard/quiz/create'>
            <div className='flex items-center justify-center rounded-xl p-3 w-[80px] h-[80px] bg-orange-500/90'>
              <img
                src='https://myaloha.vn/image/dashboard/create_new_ic.png'
                alt='createBtn'
                className='h-[50px] hover:scale-[1.1] transition-all duration-300'
              />
            </div>
            <div className='mt-2'>Tạo mới</div>
          </Link>
        </div>
      </div>
      <div className='mb-4'>
        <div className='text-[#757575] uppercase text-[27px] leading-[34px] font-normal mb-4'>Đề thi của bạn</div>
        <TableExam />
      </div>
    </div>
  );
};

export default ManageExam;
