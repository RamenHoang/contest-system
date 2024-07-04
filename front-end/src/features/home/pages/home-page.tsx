import { Input } from 'antd';
import { SearchIcon } from 'lucide-react';
import { CardContest, CardItem } from '~/features/home/components';
import { contests } from '~/utils/data';

const HomePage = () => {
  return (
    <div className='max-w-screen-lg mx-auto p-4 min-h-screen'>
      <div className='hidden sm:block'>
        <div className='text-[#707070] uppercase text-xl leading-7 font-base mb-4'>BẠN MUỐN TẠO ...</div>
        <ul className='flex items-center gap-4 text-white'>
          <CardItem
            backgroundImageURL={new URL('https://myaloha.vn/image/dashboard/bg_spread.svg').toString()}
            linkTo='/dashboard/contest'
            iconSrc='https://myaloha.vn/image/dashboard/ic_contest.svg'
            altText='online-test'
            title='Thi trực tuyến'
            bgColor='#FCB400'
          />
        </ul>
      </div>
      <div className='mt-5'>
        <div className='text-[#707070] uppercase text-xl leading-7 font-base mb-4'>BẠN LÀ THÍ SINH DỰ THI</div>
        <div className='relative w-full'>
          <Input prefix={<SearchIcon size={18} />} size='large' placeholder='Tìm kiếm' />
        </div>
      </div>
      <div className='mt-5'>
        <div className='text-[#707070] uppercase text-xl leading-7 font-base mb-4'>Đang diễn ra</div>
        <div className='relative w-full'>
          {contests.map((contest) => (
            <CardContest key={contest.id} contest={contest} />
          ))}
        </div>
      </div>
    </div>
  );
};

export default HomePage;
