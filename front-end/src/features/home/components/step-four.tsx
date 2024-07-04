import DashboardCard from '~/features/home/components/dashboard-card';

const StepFour = () => {
  return (
    <div className='step-four'>
      <div className='flex items-center gap-8'>
        <DashboardCard
          imgSrc='https://e7.pngegg.com/pngimages/348/800/png-clipart-man-wearing-blue-shirt-illustration-computer-icons-avatar-user-login-avatar-blue-child.png'
          title='Tổng lượt thi'
          text='0'
        />
        <DashboardCard
          imgSrc='https://e7.pngegg.com/pngimages/348/800/png-clipart-man-wearing-blue-shirt-illustration-computer-icons-avatar-user-login-avatar-blue-child.png'
          title='Tổng lượt đăng ký (theo tài khoản)'
          text='0'
        />
      </div>
      <div className='mt-8'>
        <div className='text-[#757575] uppercase text-[23px] leading-[29px] font-semibold mb-4'> Kết quả thi </div>
      </div>
      {/* <QuestionComponent /> */}
    </div>
  );
};

export default StepFour;
