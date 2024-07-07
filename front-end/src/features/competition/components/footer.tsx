export const Footer = () => {
  return (
    <footer className='bg-[#444444]'>
      <div className='container mx-auto px-2 lg:px-4 py-6 lg:py-16 grid grid-cols-2 gap-x-12 gap-y-8 text-white font-normal text-sm lg:text-base'>
        <div className='col-span-2 md:col-span-1'>
          <div className='text-base lg:text-2xl font-semibold mb-2'> BAN TỔ CHỨC </div>
          <div className='uppercase'>Cục Chính trị Quân đoàn 7</div>
          <div>Địa chỉ: TPHCM</div>
          <div>Điện thoại: 0964465568</div>
          <div>Email: KienNhan@gmail.com</div>
        </div>
        <div className='col-span-2 md:col-span-1'>
          <div className='text-base lg:text-2xl font-semibold mb-2'> ĐƠN VỊ ĐỒNG HÀNH </div>
          <div className='uppercase'>CÔNG TY CỔ PHẦN TMĐT KienNhan</div>
          <div> Địa chỉ: KienNhan, Xóm Chiếu, Quận 4, Thành phố Hồ Chí Minh </div>
          <div>Điện thoại: 0935.989.998</div>
          <div>Email: cskh@KienNhan.com.vn</div>
        </div>
      </div>
      <div className='bg-[#515151] text-white text-sm lg:text-base py-6 text-center'>
        Copyright © KienNhan 2024. Designed and developed by KienNhan
      </div>
    </footer>
  );
};
