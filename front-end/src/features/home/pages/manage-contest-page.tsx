import { Link } from 'react-router-dom';
import { TableContest } from '~/features/home/components/table-contest';

const ManageContest = () => {
  return (
    <div className='mx-auto p-4 min-h-screen'>
      <div className='mb-4'>
        <div className='text-[#757575] uppercase text-[27px] leading-[34px] font-normal mb-4'>
          Tổ chức cuộc thi trực tuyến
        </div>
        <div className='flex items-center gap-10'>
          <Link to='/dashboard/contest/create'>
            <div className='flex items-center justify-center rounded-xl p-3 w-[80px] h-[80px] bg-orange-500/90'>
              <img
                src='https://myaloha.vn/image/dashboard/create_new_ic.png'
                alt='createBtn'
                className='h-[50px] hover:scale-[1.1] transition-all duration-300'
              />
            </div>
            <div className='mt-2'>Tạo mới</div>
          </Link>

          <Link to='/box2'>
            <div className='flex items-center justify-center rounded-xl p-3 w-[80px] h-[80px] bg-indigo-500/90'>
              <img
                src='https://myaloha.vn/image/dashboard/ic_platform_exam.svg'
                alt='intro'
                className='h-[50px] hover:scale-[1.1] transition-all duration-300'
              />
            </div>
            <div className='mt-2'>Hướng dẫn</div>
          </Link>
        </div>
      </div>
      <div className='mb-4'>
        <div className='text-[#757575] uppercase text-[27px] leading-[34px] font-normal mb-4'>Danh sách cuộc thi</div>
        <TableContest />
      </div>
    </div>
  );
};

export default ManageContest;
