import { Modal } from 'antd';
import { useState } from 'react';
import { Link } from 'react-router-dom';
import AntDropdown from '~/components/ui/dropdown';
import { IStartRequired } from '~/types';

export const Header = ({ data }: { data: IStartRequired }) => {
  const [isModalVisible, setIsModalVisible] = useState(false); // Step 2

  const showModal = () => {
    setIsModalVisible(true);
  };

  const handleOk = () => {
    setIsModalVisible(false);
  };

  return (
    <header className='bg-green-800'>
      <nav className='px-4 lg:px-6 py-2.5 text-white'>
        <div className='flex items-center justify-between gap-8 mx-auto max-w-screen-xl'>
          <Link to='/'>
            <img
              src='https://png.pngtree.com/png-vector/20221127/ourmid/pngtree-digital-media-play-button-gradient-color-hexagon-marketing-agency-mobile-app-png-image_6482499.png'
              alt='logo'
              width={50}
              height={50}
            />
          </Link>
          <div className='bg-green-700 flex items-center justify-end lg:grow lg:py-2 lg:px-7 rounded-full'>
            <div className='flex items-center lg:order-2'>
              <AntDropdown />
            </div>
            <div className='justify-between items-center w-full lg:flex lg:w-auto lg:order-1 grow'>
              <ul className='flex items-center gap-x-10 text-lg'>
                <Link to='/' className='hover:text-white/70'>
                  Trang chủ
                  <div className='absolute bottom-0 left-1/2 -translate-x-1/2 border-t-2 border-solid w-14'></div>
                </Link>
                <div className='hover:text-white/70' onClick={showModal} style={{ cursor: 'pointer' }}>
                  Thể lệ
                </div>
                <Modal
                  title='THỂ LỆ'
                  open={isModalVisible}
                  onOk={handleOk}
                  okText='Đã hiểu'
                  onCancel={handleOk}
                  cancelText='Hủy'
                >
                  <span className='text-lg'>{data?.rules}</span>
                </Modal>
              </ul>
            </div>
          </div>
        </div>
      </nav>

      <div className='px-4 lg-px-6'>
        <div className='max-w-screen-xl mx-auto mt-4 lg:mt-8'>
          <img
            src='https://myaloha.s3-hn-2.cloud.cmctelecom.vn/tenant1/images/contest/banner/4573648_tnSe2Q1TJhTht3ZRrtORsBvgBq6e4cq6JfAa7I6L_1720004456.jpg'
            alt='banner'
            className='max-w-full h-auto mx-auto rounded-xl'
          />
        </div>
      </div>
      <div className='px-4 lg:px-6 py-2 lg:py-6 uppercase text-lg lg:text-4xl text-center text-white bg-green-700 mt-4 lg:mt-12'>
        {data?.name}
      </div>
    </header>
  );
};
