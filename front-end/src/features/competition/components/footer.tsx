import { useOrganizer } from '~/features/home/hooks/use-organizer';
import { IOrganizer } from '~/types';

export const Footer = () => {
  const { data: orgData } = useOrganizer();

  const org: IOrganizer = orgData?.data;

  return (
    <footer className='bg-[#444444]'>
      <div className='container mx-auto px-2 lg:px-4 py-6 lg:py-16 grid grid-cols-2 gap-x-12 gap-y-8 text-white font-normal text-sm lg:text-base'>
        <div className='col-span-2 md:col-span-1'>
          <div className='text-base lg:text-2xl font-semibold mb-2'> BAN TỔ CHỨC </div>
          <div className='uppercase'>{org?.name}</div>
          <div>Địa chỉ: {org?.address}</div>
          <div>Điện thoại: {org?.phone}</div>
          <div>Email: {org?.email}</div>
        </div>
        <div className='col-span-2 md:col-span-1'>
          <div className='text-base lg:text-2xl font-semibold mb-2'> ĐƠN VỊ ĐỒNG HÀNH </div>
          <div className='uppercase'>CÔNG TY CỔ PHẦN TMĐT ĐTN</div>
          <div> Địa chỉ: ĐTN, Xóm Chiếu, Quận 4, Thành phố Hồ Chí Minh </div>
          <div>Điện thoại: 0935.989.998</div>
          <div>Email: cskh@đtn.com.vn</div>
        </div>
      </div>
      <div className='bg-[#515151] text-white text-sm lg:text-base py-6 text-center'>
        Copyright © ĐTN 2024. Designed and developed by ĐTN
      </div>
    </footer>
  );
};
